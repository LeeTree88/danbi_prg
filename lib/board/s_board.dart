import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:prg_danbi/board/board_viewmodel.dart';
import 'package:prg_danbi/board/vo_board.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../login/login_viewmodel.dart';
import '../utils/HexColor.dart';
import '../utils/common_preference.dart';
import '../utils/w_line.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  //뒤로 가기 버튼으로 앱 종료를 위한 변수
  DateTime? backButtonPressedTime;
  //현재 날짜 변수
  DateTime date = DateTime.now();
  //공통 preference 를 위한 변수
  final pref = CommonPreference.instance;
  late BoardViewModel boardViewModel =
      Provider.of<BoardViewModel>(context, listen: false);
  late LoginViewModel loginViewModel =
      Provider.of<LoginViewModel>(context, listen: false);
  //중복 호출 방지를 위한 변수
  Timer? _debounce;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //모든 포스트를 호출
    boardViewModel.getPosts();
    //댓글 호출
    boardViewModel.getComments();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();
        bool isExit = false;

        //2초안에 연달아 백키를누르면 앱 종료
        if (backButtonPressedTime == null ||
            now.difference(backButtonPressedTime!) > Duration(seconds: 2)) {
          backButtonPressedTime = now;
          Fluttertoast.showToast(
            msg: '한 번 더 누르면 종료됩니다.',
            backgroundColor: Colors.black,
            textColor: Colors.white,
          );
          return false;
        } else {
          isExit = true;
        }

        return isExit;
      },
      child: Scaffold(
        body: Column(
          children: [
            Consumer<BoardViewModel>(builder: (context, provider, child) {
              return provider.postsLoading == false &&
                      provider.postsCommentLoading == false
                  ? const Expanded(
                      child: Center(child: CircularProgressIndicator()))
                  : Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              //중복 터치 방지
                              _debounce = Timer(
                                  const Duration(milliseconds: 1000), () async {
                                Navigator.of(context, rootNavigator: false)
                                    .pushNamed('/boardDetailScreen',
                                        arguments: {
                                      "index": index,
                                      "title": provider
                                          .boardList.boardList[index].title,
                                      "body": provider
                                          .boardList.boardList[index].body,
                                      "userId": provider
                                          .boardList.boardList[index].userId,
                                      "postId": provider
                                          .boardList.boardList[index].id,
                                    });
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(
                                15,
                              ),
                              constraints: const BoxConstraints(
                                minHeight: 45,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 10,
                                    child: provider
                                        .boardList.boardList[index].title.text
                                        .size(14)
                                        .isIntrinsic
                                        .color(HexColor('#222222'))
                                        .ellipsis
                                        .make(),
                                  ),
                                  Expanded(
                                    child: provider.commentsList.commentsCount
                                            .isNotEmpty
                                        ? "${provider.commentsList.commentsCount[index]}개"
                                            .text
                                            .size(14)
                                            .isIntrinsic
                                            .color(HexColor('#222222'))
                                            .end
                                            .make()
                                        : Container(),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: boardViewModel.boardList.boardList.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Line();
                        },
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }
}
