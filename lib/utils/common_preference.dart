import 'package:flutter/foundation.dart';

import 'default_preference.dart';

class CommonPreference extends DefaultPreference {
  // 싱글톤 패턴으로 사용
  static CommonPreference? _instance;

  CommonPreference._();

  static CommonPreference get instance {
    _instance ??= CommonPreference._();
    return _instance!;
  }

  /// Keys

  // User 관련
  final String userIdKey = "id"; // 유저 id
  final String autoLoginKey = "autologin"; // 자동 로그인
  final String userEmailKey = "userEmail"; // 자동 로그인

  /// get,set Methods

  // User 관련

  Future<int> getUserId() {
    return getInt(userIdKey, 0);
  }

  Future<bool> setUserId(int userId) {
    return setInt(userIdKey, userId);
  }

  Future<String> getUserEmail() {
    return getString(userEmailKey, "");
  }

  Future<bool> setUserEmail(String userEmail) {
    return setString(userEmailKey, userEmail);
  }

//setUserEmail
  Future<String> getAutoLogin() {
    return getString(autoLoginKey, "init");
  }

  Future<bool> setAutoLogin(String autoLogin) {
    return setString(autoLoginKey, autoLogin);
  }
}
