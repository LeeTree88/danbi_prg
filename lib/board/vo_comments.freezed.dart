// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return _Comments.fromJson(json);
}

/// @nodoc
mixin _$Comments {
  int get postId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsCopyWith<Comments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsCopyWith<$Res> {
  factory $CommentsCopyWith(Comments value, $Res Function(Comments) then) =
      _$CommentsCopyWithImpl<$Res, Comments>;
  @useResult
  $Res call({int postId, int id, String name, String email, String body});
}

/// @nodoc
class _$CommentsCopyWithImpl<$Res, $Val extends Comments>
    implements $CommentsCopyWith<$Res> {
  _$CommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsImplCopyWith<$Res>
    implements $CommentsCopyWith<$Res> {
  factory _$$CommentsImplCopyWith(
          _$CommentsImpl value, $Res Function(_$CommentsImpl) then) =
      __$$CommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, int id, String name, String email, String body});
}

/// @nodoc
class __$$CommentsImplCopyWithImpl<$Res>
    extends _$CommentsCopyWithImpl<$Res, _$CommentsImpl>
    implements _$$CommentsImplCopyWith<$Res> {
  __$$CommentsImplCopyWithImpl(
      _$CommentsImpl _value, $Res Function(_$CommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$CommentsImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$CommentsImpl implements _Comments {
  _$CommentsImpl(
      {this.postId = 0,
      this.id = 0,
      this.name = "",
      this.email = "",
      this.body = ""});

  factory _$CommentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsImplFromJson(json);

  @override
  @JsonKey()
  final int postId;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String body;

  @override
  String toString() {
    return 'Comments(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, id, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsImplCopyWith<_$CommentsImpl> get copyWith =>
      __$$CommentsImplCopyWithImpl<_$CommentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsImplToJson(
      this,
    );
  }
}

abstract class _Comments implements Comments {
  factory _Comments(
      {final int postId,
      final int id,
      final String name,
      final String email,
      final String body}) = _$CommentsImpl;

  factory _Comments.fromJson(Map<String, dynamic> json) =
      _$CommentsImpl.fromJson;

  @override
  int get postId;
  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CommentsImplCopyWith<_$CommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsList _$CommentsListFromJson(Map<String, dynamic> json) {
  return _CommentsList.fromJson(json);
}

/// @nodoc
mixin _$CommentsList {
  List<Comments> get commentsList => throw _privateConstructorUsedError;
  List<int> get commentsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsListCopyWith<CommentsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsListCopyWith<$Res> {
  factory $CommentsListCopyWith(
          CommentsList value, $Res Function(CommentsList) then) =
      _$CommentsListCopyWithImpl<$Res, CommentsList>;
  @useResult
  $Res call({List<Comments> commentsList, List<int> commentsCount});
}

/// @nodoc
class _$CommentsListCopyWithImpl<$Res, $Val extends CommentsList>
    implements $CommentsListCopyWith<$Res> {
  _$CommentsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentsList = null,
    Object? commentsCount = null,
  }) {
    return _then(_value.copyWith(
      commentsList: null == commentsList
          ? _value.commentsList
          : commentsList // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsListImplCopyWith<$Res>
    implements $CommentsListCopyWith<$Res> {
  factory _$$CommentsListImplCopyWith(
          _$CommentsListImpl value, $Res Function(_$CommentsListImpl) then) =
      __$$CommentsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comments> commentsList, List<int> commentsCount});
}

/// @nodoc
class __$$CommentsListImplCopyWithImpl<$Res>
    extends _$CommentsListCopyWithImpl<$Res, _$CommentsListImpl>
    implements _$$CommentsListImplCopyWith<$Res> {
  __$$CommentsListImplCopyWithImpl(
      _$CommentsListImpl _value, $Res Function(_$CommentsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentsList = null,
    Object? commentsCount = null,
  }) {
    return _then(_$CommentsListImpl(
      commentsList: null == commentsList
          ? _value._commentsList
          : commentsList // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
      commentsCount: null == commentsCount
          ? _value._commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsListImpl extends _CommentsList {
  _$CommentsListImpl(
      {final List<Comments> commentsList = const [],
      final List<int> commentsCount = const []})
      : _commentsList = commentsList,
        _commentsCount = commentsCount,
        super._();

  factory _$CommentsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsListImplFromJson(json);

  final List<Comments> _commentsList;
  @override
  @JsonKey()
  List<Comments> get commentsList {
    if (_commentsList is EqualUnmodifiableListView) return _commentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentsList);
  }

  final List<int> _commentsCount;
  @override
  @JsonKey()
  List<int> get commentsCount {
    if (_commentsCount is EqualUnmodifiableListView) return _commentsCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentsCount);
  }

  @override
  String toString() {
    return 'CommentsList(commentsList: $commentsList, commentsCount: $commentsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsListImpl &&
            const DeepCollectionEquality()
                .equals(other._commentsList, _commentsList) &&
            const DeepCollectionEquality()
                .equals(other._commentsCount, _commentsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_commentsList),
      const DeepCollectionEquality().hash(_commentsCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsListImplCopyWith<_$CommentsListImpl> get copyWith =>
      __$$CommentsListImplCopyWithImpl<_$CommentsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsListImplToJson(
      this,
    );
  }
}

abstract class _CommentsList extends CommentsList {
  factory _CommentsList(
      {final List<Comments> commentsList,
      final List<int> commentsCount}) = _$CommentsListImpl;
  _CommentsList._() : super._();

  factory _CommentsList.fromJson(Map<String, dynamic> json) =
      _$CommentsListImpl.fromJson;

  @override
  List<Comments> get commentsList;
  @override
  List<int> get commentsCount;
  @override
  @JsonKey(ignore: true)
  _$$CommentsListImplCopyWith<_$CommentsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
