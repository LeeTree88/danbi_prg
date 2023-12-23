import 'package:shared_preferences/shared_preferences.dart';

abstract class DefaultPreference {
  SharedPreferences? _prefs;

  Future<SharedPreferences> get prefs async {
    if (_prefs != null) return _prefs!;

    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  /// get,set Methods

  // Bool Type

  Future<bool> setBool(String key, bool value) async {
    final pref = await prefs;
    return pref.setBool(key, value);
  }

  Future<bool> getBool(String key, bool defValue) async {
    final pref = await prefs;
    return pref.getBool(key) ?? defValue;
  }

  // String Type

  Future<bool> setString(String key, String value) async {
    final pref = await prefs;
    return pref.setString(key, value);
  }

  Future<String> getString(String key, String defValue) async {
    final pref = await prefs;
    return pref.getString(key) ?? defValue;
  }

  // Int Type

  Future<bool> setInt(String key, int value) async {
    final pref = await prefs;
    return pref.setInt(key, value);
  }

  Future<int> getInt(String key, int value) async {
    final pref = await prefs;
    return pref.getInt(key) ?? value;
  }

  // Double Type

  Future<bool> setDouble(String key, double value) async {
    final pref = await prefs;
    return pref.setDouble(key, value);
  }

  Future<double> getDouble(String key, double value) async {
    final pref = await prefs;
    return pref.getDouble(key) ?? value;
  }

  /// Utils

  Future removeAll() async {
    final pref = await prefs;
    pref.clear();
  }

  Future remove(String key) async {
    final pref = await prefs;
    pref.remove(key);
  }
}
