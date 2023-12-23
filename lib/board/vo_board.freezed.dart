// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Board _$BoardFromJson(Map<String, dynamic> json) {
  return _Board.fromJson(json);
}

/// @nodoc
mixin _$Board {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res, Board>;
  @useResult
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class _$BoardCopyWithImpl<$Res, $Val extends Board>
    implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardImplCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$$BoardImplCopyWith(
          _$BoardImpl value, $Res Function(_$BoardImpl) then) =
      __$$BoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class __$$BoardImplCopyWithImpl<$Res>
    extends _$BoardCopyWithImpl<$Res, _$BoardImpl>
    implements _$$BoardImplCopyWith<$Res> {
  __$$BoardImplCopyWithImpl(
      _$BoardImpl _value, $Res Function(_$BoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$BoardImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardImpl implements _Board {
  _$BoardImpl({this.userId = 0, this.id = 0, this.title = "", this.body = ""});

  factory _$BoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardImplFromJson(json);

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String body;

  @override
  String toString() {
    return 'Board(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      __$$BoardImplCopyWithImpl<_$BoardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardImplToJson(
      this,
    );
  }
}

abstract class _Board implements Board {
  factory _Board(
      {final int userId,
      final int id,
      final String title,
      final String body}) = _$BoardImpl;

  factory _Board.fromJson(Map<String, dynamic> json) = _$BoardImpl.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$BoardImplCopyWith<_$BoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BoardList _$BoardListFromJson(Map<String, dynamic> json) {
  return _BoardList.fromJson(json);
}

/// @nodoc
mixin _$BoardList {
  List<Board> get boardList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardListCopyWith<BoardList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardListCopyWith<$Res> {
  factory $BoardListCopyWith(BoardList value, $Res Function(BoardList) then) =
      _$BoardListCopyWithImpl<$Res, BoardList>;
  @useResult
  $Res call({List<Board> boardList});
}

/// @nodoc
class _$BoardListCopyWithImpl<$Res, $Val extends BoardList>
    implements $BoardListCopyWith<$Res> {
  _$BoardListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardList = null,
  }) {
    return _then(_value.copyWith(
      boardList: null == boardList
          ? _value.boardList
          : boardList // ignore: cast_nullable_to_non_nullable
              as List<Board>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardListImplCopyWith<$Res>
    implements $BoardListCopyWith<$Res> {
  factory _$$BoardListImplCopyWith(
          _$BoardListImpl value, $Res Function(_$BoardListImpl) then) =
      __$$BoardListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Board> boardList});
}

/// @nodoc
class __$$BoardListImplCopyWithImpl<$Res>
    extends _$BoardListCopyWithImpl<$Res, _$BoardListImpl>
    implements _$$BoardListImplCopyWith<$Res> {
  __$$BoardListImplCopyWithImpl(
      _$BoardListImpl _value, $Res Function(_$BoardListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardList = null,
  }) {
    return _then(_$BoardListImpl(
      boardList: null == boardList
          ? _value._boardList
          : boardList // ignore: cast_nullable_to_non_nullable
              as List<Board>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardListImpl extends _BoardList {
  _$BoardListImpl({final List<Board> boardList = const []})
      : _boardList = boardList,
        super._();

  factory _$BoardListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardListImplFromJson(json);

  final List<Board> _boardList;
  @override
  @JsonKey()
  List<Board> get boardList {
    if (_boardList is EqualUnmodifiableListView) return _boardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boardList);
  }

  @override
  String toString() {
    return 'BoardList(boardList: $boardList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardListImpl &&
            const DeepCollectionEquality()
                .equals(other._boardList, _boardList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_boardList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardListImplCopyWith<_$BoardListImpl> get copyWith =>
      __$$BoardListImplCopyWithImpl<_$BoardListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardListImplToJson(
      this,
    );
  }
}

abstract class _BoardList extends BoardList {
  factory _BoardList({final List<Board> boardList}) = _$BoardListImpl;
  _BoardList._() : super._();

  factory _BoardList.fromJson(Map<String, dynamic> json) =
      _$BoardListImpl.fromJson;

  @override
  List<Board> get boardList;
  @override
  @JsonKey(ignore: true)
  _$$BoardListImplCopyWith<_$BoardListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
