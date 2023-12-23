import 'package:flutter/material.dart';
import 'package:prg_danbi/board/vo_board.dart';
import 'package:prg_danbi/login/login_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../login/vo_login.dart';
import '../utils/HexColor.dart';
import '../utils/w_height_and_width.dart';
import '../utils/w_line.dart';
import 'board_viewmodel.dart';

class BoardDetailScreen extends StatefulWidget {
  const BoardDetailScreen({super.key});

  @override
  State<BoardDetailScreen> createState() => _BoardDetailScreenState();
}

class _BoardDetailScreenState extends State<BoardDetailScreen> {
  late Map<String, dynamic>? args;
  //본문 제목
  String title = "";
  //본문
  String body = "";
  //유저 id 값
  int userId = 0;
  //유저 이름
  String userName = "";
  //해당 포스트 id값
  int postId = 0;
  //리스트에서 터치시 해당된 index
  int index = 0;
  late LoginViewModel loginViewModel =
      Provider.of<LoginViewModel>(context, listen: false);
  late BoardViewModel boardViewModel =
      Provider.of<BoardViewModel>(context, listen: false);
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /*
    * 각각 변수 할당
    */
    args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    title = args?['title'] as String;
    body = args?['body'] as String;
    userId = args?['userId'] ?? 0;
    postId = args?['postId'] ?? 0;
    index = args?['index'] ?? 0;

    var user = loginViewModel.loginList.loginList
        .firstWhere((user) => user.id == userId, orElse: () => Login());
    userName = user.username;

    boardViewModel.getPostsDetailComments(postId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Height(25),
              title.text
                  .size(14)
                  .isIntrinsic
                  .color(HexColor('#222222'))
                  .bold
                  .makeCentered(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    userName.text
                        .size(14)
                        .isIntrinsic
                        .color(HexColor('#222222'))
                        .make(),
                  ],
                ),
              ),
              Line().pSymmetric(v: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: body.text
                    .size(14)
                    .isIntrinsic
                    .color(HexColor('#222222'))
                    .makeCentered(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    userId == loginViewModel.login.id
                        ? GestureDetector(
                            onTap: () {
                              boardViewModel.removeBoardList(index);
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                minHeight: 45,
                                maxWidth: 150,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: HexColor('#999999'))),
                              child: "삭제"
                                  .text
                                  .size(14)
                                  .isIntrinsic
                                  .color(HexColor('#222222'))
                                  .center
                                  .makeCentered(),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              Line().pSymmetric(v: 20),
              Consumer<BoardViewModel>(builder: (context, provider, child) {
                return provider.commentsLoading == false
                    ? const Expanded(
                        child: Center(child: CircularProgressIndicator()))
                    : Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(
                                  15,
                                ),
                                constraints: const BoxConstraints(
                                  minHeight: 45,
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    provider.commentsList.commentsList[index]
                                        .body.text
                                        .size(14)
                                        .isIntrinsic
                                        .color(HexColor('#222222'))
                                        .ellipsis
                                        .make(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        "작성자 : ${provider.commentsList.commentsList[index].name}"
                                            .text
                                            .size(10)
                                            .isIntrinsic
                                            .color(HexColor('#222222'))
                                            .ellipsis
                                            .make(),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        "이메일 : ${provider.commentsList.commentsList[index].email}"
                                            .text
                                            .size(10)
                                            .isIntrinsic
                                            .color(HexColor('#222222'))
                                            .ellipsis
                                            .make(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount:
                              boardViewModel.commentsList.commentsList.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const Line();
                          },
                        ),
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
