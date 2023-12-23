import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:prg_danbi/utils/w_height_and_width.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/common_preference.dart';
import '../utils/custom_switch.dart';
import '../utils/hexcolor.dart';
import 'login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //텍스트필드 값 세팅을위한 변수
  TextEditingController userIdController =
      TextEditingController(text: "Rey.Padberg@karina.biz");

  //공통으로 사용하는 Preference 생성
  final pref = CommonPreference.instance;

  //중복방지를위한 Timer 변수
  Timer? _debounce;

  //스위치 버튼 색 변환을위한 변수
  bool autoLogin = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    () async {
      switch (await pref.getAutoLogin()) {
        //앱에 처음들어오거나 스위치버튼을 체크 안했을 시
        case "init":
        case "uncheck":
          setState(() {
            autoLogin = false;
          });
          //체크흫 재헤 했을 시 id값 제거
          pref.remove("id");
          break;
        case "check":
          setState(() {
            autoLogin = true;
          });
          //자동 로그인이 체크되어있으므로 로그인 시작
          loginPro(await pref.getUserEmail());

          break;
      }
    }();
  }

  //로그인 버튼시 진행되는 프로세스
  void loginPro(userEmail) async {
    LoginViewModel loginViewModel =
        Provider.of<LoginViewModel>(context, listen: false);
    bool result = await loginViewModel.loginProcess(userEmail);

    if (result) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/boardScreen',
        (Route<dynamic> route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: userIdController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                hintText: '아이디',
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: HexColor('#BBBBBB'),
                ),
              ),
            ),
            const Height(15),
            GestureDetector(
              onTap: () {
                //로그인 시 1초간 중복 터치 방지
                if (_debounce?.isActive ?? false) _debounce?.cancel();
                _debounce = Timer(const Duration(milliseconds: 1000), () async {
                  loginPro(userIdController.text);
                });
              },
              child: Container(
                  constraints: const BoxConstraints(minHeight: 50),
                  decoration: BoxDecoration(
                      color: HexColor('#ffffff'),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(width: 1, color: HexColor('#999999'))),
                  child: "로그인"
                      .text
                      .size(14)
                      .isIntrinsic
                      .color(HexColor('#222222'))
                      .makeCentered()),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              constraints: const BoxConstraints(
                minHeight: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "자동로그인"
                      .text
                      .size(14)
                      .isIntrinsic
                      .color(HexColor('#222222'))
                      .makeCentered(),
                  CustomSwitch(
                    value: autoLogin,
                    onChanged: (bool val) async {
                      setState(() {
                        autoLogin = val;
                      });
                      pref.setAutoLogin(val ? "check" : "uncheck");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
