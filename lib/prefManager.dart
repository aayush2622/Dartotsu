import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  static SharedPreferences? _prefs;

  // Call this method at the start of your app
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void setVal<T>(String key, T value) {
    if (_prefs == null) {
      throw Exception('SharedPreferences not initialized. Call PrefManager.init() first.');
    }

    if (value is int) {
      _prefs!.setInt(key, value);
    } else if (value is double) {
      _prefs!.setDouble(key, value);
    } else if (value is bool) {
      _prefs!.setBool(key, value);
    } else if (value is String) {
      _prefs!.setString(key, value);
    } else if (value is List<String>) {
      _prefs!.setStringList(key, value);
    } else if (value is List<bool>) {
      final boolListAsString = value.map((e) => e.toString()).toList();
      _prefs!.setStringList(key, boolListAsString);
    } else if (value is Set<int>) {
      final setListAsString = value.map((e) => e.toString()).toList();
      _prefs!.setStringList(key, setListAsString);
    } else if (value is List<int>) {
      final intListAsString = value.map((e) => e.toString()).toList();
      _prefs!.setStringList(key, intListAsString);
    } else {
      throw Exception('Invalid value type');
    }
  }

  static T? getVal<T>(String key) {
    if (_prefs == null) {
      throw Exception('SharedPreferences not initialized. Call PrefManager.init() first.');
    }

    if (T == List<bool>) {
      final stringList = _prefs!.getStringList(key);
      if (stringList != null) {
        return stringList.map((e) => e == 'true').toList() as T;
      }
      return null;
    } else if (T == List<String>) {
      return _prefs!.getStringList(key) as T?;
    } else if (T == Set<int>) {
      final stringList = _prefs!.getStringList(key);
      if (stringList != null) {
        return stringList.map((e) => int.parse(e)).toSet() as T;
      }
      return null;
    } else if (T == List<int>) {
      final stringList = _prefs!.getStringList(key);
      if (stringList != null) {
        return stringList.map((e) => int.parse(e)).toList() as T;
      }
      return null;
    } else if (T == int) {
      return _prefs!.getInt(key) as T?;
    } else if (T == double) {
      return _prefs!.getDouble(key) as T?;
    } else if (T == bool) {
      return _prefs!.getBool(key) as T?;
    } else if (T == String) {
      return _prefs!.getString(key) as T?;
    } else {
      throw Exception('Invalid value type');
    }
  }
}
