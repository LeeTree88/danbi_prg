import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_login.freezed.dart';
part 'vo_login.g.dart';

@freezed
class Login with _$Login {
  factory Login({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String username,
    @Default("") String email,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}

@freezed
class LoginList with _$LoginList {
  factory LoginList({
    @Default([]) List<Login> loginList,
  }) = _LoginList;

  factory LoginList.fromJson(Map<String, dynamic> json) =>
      _$LoginListFromJson(json);

  // 커스텀 setter 추가
  LoginList._();

  LoginList setLoginResult(List<Login> value) {
    return copyWith(loginList: value);
  }
}
