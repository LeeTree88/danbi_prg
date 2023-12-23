import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prg_danbi/board/vo_board.dart';
import 'package:prg_danbi/board/vo_comments.dart';

import '../data/board/repository_board.dart';

class BoardViewModel with ChangeNotifier {
  Board _board = Board();
  Board get board => _board;

  BoardList _boardList = BoardList();
  BoardList get boardList => _boardList;

  Comments _comments = Comments();
  Comments get comments => _comments;

  CommentsList _commentsList = CommentsList();
  CommentsList get commentsList => _commentsList;

  bool _commentsLoading = false;
  bool get commentsLoading => _commentsLoading;

  bool _postsLoading = false;
  bool get postsLoading => _postsLoading;
  bool _postsCommentLoading = false;
  bool get postsCommentLoading => _postsCommentLoading;
  void removeBoardList(int index) {
    _boardList = _boardList.removeList(index);
    notifyListeners();
  }

  Future<void> getPosts() async {
    var dio = Dio();
    try {
      //api 호출
      RepositoryBoard restBoard = RepositoryBoard(dio);
      String res = await restBoard.getBoard();

      //Board 형식으로 변환후 BoardList에저장
      List jsonString = json.decode(res);

      List<Board> boardList =
          (jsonString).map((data) => Board.fromJson(data)).toList();
      _boardList = _boardList.setBoardList(boardList);
      _postsLoading = true;
      notifyListeners();
    } catch (e) {
      debugPrint("error $e");
    }
  }

  Future<void> getComments() async {
    var dio = Dio();
    try {
      //api 호출
      RepositoryBoard restBoard = RepositoryBoard(dio);
      String res = await restBoard.getComments();

      //Comments 형식으로 변환후 각 해당하는 post의 댓글 갯수 구한 후 commentsList에 저장
      List jsonString = json.decode(res);

      List<Comments> commentsList =
          (jsonString).map((data) => Comments.fromJson(data)).toList();
      Map<int, int> commentsCount = {};

      for (var comments in commentsList) {
        int postId = comments.postId;
        if (commentsCount.containsKey(postId)) {
          commentsCount[postId] = commentsCount[postId]! + 1;
        } else {
          commentsCount[postId] = 1;
        }
      }
      List<int> keys = commentsCount.keys.toList();

      List<int> postCnt = [];
      // 리스트의 인덱스를 사용하여 postCount에 접근
      for (int i = 0; i < keys.length; i++) {
        int postId = keys[i];
        int count =
            commentsCount[postId] ?? 0; // 해당 postId의 값 가져오기, 값이 없으면 0으로 설정
        postCnt.add(count);
      }
      _commentsList = _commentsList.setCommentsCount(postCnt);
      _commentsList = _commentsList.setCommentsList(commentsList);
      _postsCommentLoading = true;
      notifyListeners();
    } catch (e) {
      debugPrint("error $e");
    }
  }

  Future<void> getPostsDetailComments(int postId) async {
    var dio = Dio();
    try {
      //api 호출
      RepositoryBoard restBoard = RepositoryBoard(dio);
      String res = await restBoard.getDetailComments(postId);
      //Comments 형식으로 변환후 각 commentsList에 저장
      List jsonString = json.decode(res);

      List<Comments> commentsList =
          (jsonString).map((data) => Comments.fromJson(data)).toList();
      _commentsList = _commentsList.setCommentsList(commentsList);

      _commentsLoading = true;
      notifyListeners();
    } catch (e) {
      debugPrint("error $e");
    }
  }
}
