// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

/// @nodoc
mixin _$Login {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call({int id, String name, String username, String email});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String username, String email});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$LoginImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginImpl implements _Login {
  _$LoginImpl(
      {this.id = 0, this.name = "", this.username = "", this.email = ""});

  factory _$LoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'Login(id: $id, name: $name, username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginImplToJson(
      this,
    );
  }
}

abstract class _Login implements Login {
  factory _Login(
      {final int id,
      final String name,
      final String username,
      final String email}) = _$LoginImpl;

  factory _Login.fromJson(Map<String, dynamic> json) = _$LoginImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginList _$LoginListFromJson(Map<String, dynamic> json) {
  return _LoginList.fromJson(json);
}

/// @nodoc
mixin _$LoginList {
  List<Login> get loginList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginListCopyWith<LoginList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginListCopyWith<$Res> {
  factory $LoginListCopyWith(LoginList value, $Res Function(LoginList) then) =
      _$LoginListCopyWithImpl<$Res, LoginList>;
  @useResult
  $Res call({List<Login> loginList});
}

/// @nodoc
class _$LoginListCopyWithImpl<$Res, $Val extends LoginList>
    implements $LoginListCopyWith<$Res> {
  _$LoginListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginList = null,
  }) {
    return _then(_value.copyWith(
      loginList: null == loginList
          ? _value.loginList
          : loginList // ignore: cast_nullable_to_non_nullable
              as List<Login>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginListImplCopyWith<$Res>
    implements $LoginListCopyWith<$Res> {
  factory _$$LoginListImplCopyWith(
          _$LoginListImpl value, $Res Function(_$LoginListImpl) then) =
      __$$LoginListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Login> loginList});
}

/// @nodoc
class __$$LoginListImplCopyWithImpl<$Res>
    extends _$LoginListCopyWithImpl<$Res, _$LoginListImpl>
    implements _$$LoginListImplCopyWith<$Res> {
  __$$LoginListImplCopyWithImpl(
      _$LoginListImpl _value, $Res Function(_$LoginListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginList = null,
  }) {
    return _then(_$LoginListImpl(
      loginList: null == loginList
          ? _value._loginList
          : loginList // ignore: cast_nullable_to_non_nullable
              as List<Login>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginListImpl extends _LoginList {
  _$LoginListImpl({final List<Login> loginList = const []})
      : _loginList = loginList,
        super._();

  factory _$LoginListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginListImplFromJson(json);

  final List<Login> _loginList;
  @override
  @JsonKey()
  List<Login> get loginList {
    if (_loginList is EqualUnmodifiableListView) return _loginList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loginList);
  }

  @override
  String toString() {
    return 'LoginList(loginList: $loginList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginListImpl &&
            const DeepCollectionEquality()
                .equals(other._loginList, _loginList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_loginList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginListImplCopyWith<_$LoginListImpl> get copyWith =>
      __$$LoginListImplCopyWithImpl<_$LoginListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginListImplToJson(
      this,
    );
  }
}

abstract class _LoginList extends LoginList {
  factory _LoginList({final List<Login> loginList}) = _$LoginListImpl;
  _LoginList._() : super._();

  factory _LoginList.fromJson(Map<String, dynamic> json) =
      _$LoginListImpl.fromJson;

  @override
  List<Login> get loginList;
  @override
  @JsonKey(ignore: true)
  _$$LoginListImplCopyWith<_$LoginListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
