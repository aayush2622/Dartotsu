import 'package:shared_preferences/shared_preferences.dart';

class Pref<T> {
  final String key;
  final T defaultValue;

  const Pref(this.key, this.defaultValue);
}

class PrefManager {
  static SharedPreferences? _prefs;

  // Call this method at the start of the app
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static void setVal<T>(Pref<T> pref, T value) {
    _checkInitialization();
    final keyString = pref.key;

    if (value is int) {
      _prefs!.setInt(keyString, value);
    } else if (value is double) {
      _prefs!.setDouble(keyString, value);
    } else if (value is bool) {
      _prefs!.setBool(keyString, value);
    } else if (value is String) {
      _prefs!.setString(keyString, value);
    } else if (value is List<String>) {
      _prefs!.setStringList(keyString, value);
    } else if (value is List<bool>) {
      _prefs!.setStringList(keyString, value.map((e) => e.toString()).toList());
    } else if (value is Set<int>) {
      _prefs!.setStringList(keyString, value.map((e) => e.toString()).toList());
    } else if (value is List<int>) {
      _prefs!.setStringList(keyString, value.map((e) => e.toString()).toList());
    } else {
      throw Exception('Invalid value type');
    }
  }

  static T getVal<T>(Pref<T> pref) {
    _checkInitialization();
    final keyString = pref.key;

    if (T == bool) {
      return (_prefs!.getBool(keyString) ?? pref.defaultValue) as T;
    } else if (T == String) {
      return (_prefs!.getString(keyString) ?? pref.defaultValue) as T;
    } else if (T == int) {
      return (_prefs!.getInt(keyString) ?? pref.defaultValue) as T;
    } else if (T == double) {
      return (_prefs!.getDouble(keyString) ?? pref.defaultValue) as T;
    } else if (T == List<String>) {
      return (_prefs!.getStringList(keyString) ?? pref.defaultValue) as T;
    } else if (T == List<int>) {
      final stringList = _prefs!.getStringList(keyString);
      return (stringList?.map((e) => int.parse(e)).toList() ?? pref.defaultValue) as T;
    } else if (T == Set<int>) {
      final stringList = _prefs!.getStringList(keyString);
      return (stringList?.map((e) => int.parse(e)).toSet() ?? pref.defaultValue) as T;
    } else if (T == List<bool>) {
      final stringList = _prefs!.getStringList(keyString);
      return (stringList?.map((e) => e == 'true').toList() ?? pref.defaultValue) as T;
    } else {
      throw Exception('Unsupported type');
    }
  }

  static void setCustomVal<T>(String key, T value) {
    _checkInitialization();
    _setValue(key, value);
  }

  static T? getCustomVal<T>(String key) {
    _checkInitialization();
    return _getValue<T>(key);
  }

  // Helper Methods
  static void _checkInitialization() {
    if (_prefs == null) {
      throw Exception('SharedPreferences not initialized. Call PrefManager.init() first.');
    }
  }

  static void _setValue<T>(String key, T value) {
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
      _prefs!.setStringList(key, value.map((e) => e.toString()).toList());
    } else if (value is Set<int>) {
      _prefs!.setStringList(key, value.map((e) => e.toString()).toList());
    } else if (value is List<int>) {
      _prefs!.setStringList(key, value.map((e) => e.toString()).toList());
    } else {
      throw Exception('Invalid value type');
    }
  }

  static T? _getValue<T>(String key) {
    if (T == bool) return _prefs!.getBool(key) as T?;
    if (T == String) return _prefs!.getString(key) as T?;
    if (T == int) return _prefs!.getInt(key) as T?;
    if (T == double) return _prefs!.getDouble(key) as T?;
    if (T == List<String>) return _prefs!.getStringList(key) as T?;
    if (T == List<int>) {
      final stringList = _prefs!.getStringList(key);
      return stringList?.map((e) => int.parse(e)).toList() as T?;
    }
    if (T == Set<int>) {
      final stringList = _prefs!.getStringList(key);
      return stringList?.map((e) => int.parse(e)).toSet() as T?;
    }
    if (T == List<bool>) {
      final stringList = _prefs!.getStringList(key);
      return stringList?.map((e) => e == 'true').toList() as T?;
    }

    throw Exception('Invalid value type');
  }

  static void removeVal(Pref<dynamic> pref) {
    _checkInitialization();
    _prefs!.remove(pref.key);
  }
}
