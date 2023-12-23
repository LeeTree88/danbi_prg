import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_comments.freezed.dart';
part 'vo_comments.g.dart';

@freezed
class Comments with _$Comments {
  factory Comments({
    @Default(0) int postId,
    @Default(0) int id,
    @Default("") String name,
    @Default("") String email,
    @Default("") String body,
  }) = _Comments;

  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}

@freezed
class CommentsList with _$CommentsList {
  factory CommentsList({
    @Default([]) List<Comments> commentsList,
    @Default([]) List<int> commentsCount,
  }) = _CommentsList;

  factory CommentsList.fromJson(Map<String, dynamic> json) =>
      _$CommentsListFromJson(json);

  // 커스텀 setter 추가
  CommentsList._();

  CommentsList setCommentsList(List<Comments> value) {
    return copyWith(commentsList: value);
  }

  CommentsList setCommentsCount(List<int> value) {
    return copyWith(commentsCount: value);
  }
}
