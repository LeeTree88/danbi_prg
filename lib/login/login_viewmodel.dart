import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prg_danbi/login/vo_login.dart';

import '../data/login/repository_login.dart';
import '../utils/common_preference.dart';

class LoginViewModel with ChangeNotifier {
  Login _login = Login();
  Login get login => _login;

  LoginList _loginList = LoginList();
  LoginList get loginList => _loginList;
  Future<bool> loginProcess(String email) async {
    var dio = Dio();

    try {
      //api 호출
      RepositoryLogin restLogin = RepositoryLogin(dio);
      String res = await restLogin.login();

      List jsonString = json.decode(res);

      //받은 reponse Login폼으로 변환 후 List에 저장
      List<Login> loginList =
          (jsonString).map((data) => Login.fromJson(data)).toList();
      _loginList = _loginList.setLoginResult(loginList);

      //리스트를 받아와서 이메일 찾기
      Login user = _loginList.loginList
          .firstWhere((user) => user.email == email, orElse: () => Login());

      if (user.id != 0) {
        print("찾은 사용자: ${user.id}");

        _login = user;
        final pref = CommonPreference.instance;
        pref.setUserId(user.id);
        pref.setUserEmail(user.email);

        notifyListeners();
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
