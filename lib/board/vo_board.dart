import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_board.freezed.dart';
part 'vo_board.g.dart';

@freezed
class Board with _$Board {
  factory Board({
    @Default(0) int userId,
    @Default(0) int id,
    @Default("") String title,
    @Default("") String body,
  }) = _Board;

  factory Board.fromJson(Map<String, dynamic> json) => _$BoardFromJson(json);
}

@freezed
class BoardList with _$BoardList {
  factory BoardList({
    @Default([]) List<Board> boardList,
  }) = _BoardList;

  factory BoardList.fromJson(Map<String, dynamic> json) =>
      _$BoardListFromJson(json);

  // 커스텀 setter 추가
  BoardList._();

  BoardList setBoardList(List<Board> value) {
    return copyWith(boardList: value);
  }

  BoardList removeList(int index) {
    List<Board> updatedList = List.from(boardList);
    updatedList.removeAt(index);
    return copyWith(boardList: updatedList);
  }
}
