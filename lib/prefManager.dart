import 'package:shared_preferences/shared_preferences.dart';

class PrefManager { // simplified version of shared preferences

  static Future<void> setVal<T>(String key, T value) async {
        final prefs = await SharedPreferences.getInstance();
    if (value is int) {
      await prefs.setInt(key, value);
    } else if (value is double) {
      await prefs.setDouble(key, value);
    } else if (value is bool) {
      await prefs.setBool(key, value);
    } else if (value is String) {
      await prefs.setString(key, value);
    } else if (value is List<String>) {
      await prefs.setStringList(key, value);
    } else if (value is List<bool>) {
      final boolListAsString = value.map((e) => e.toString()).toList();
      await prefs.setStringList(key, boolListAsString);
    } else if (value is Set<int>) {
      final setListAsString = value.map((e) => e.toString()).toList();
      await prefs.setStringList(key, setListAsString);
    } else if (value is List<int>) {
      final intListAsString = value.map((e) => e.toString()).toList();
      await prefs.setStringList(key, intListAsString);
    } else {
      throw Exception('Invalid value type');
    }
  }

  static Future<T?> getVal<T>(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (T == List<bool>) {
      final stringList = prefs.getStringList(key);
      if (stringList != null) {
        return stringList.map((e) => e == 'true').toList() as T;
      }
      return null;
    } else if (T == List<String>) {
      return prefs.getStringList(key) as T?;
    } else if (T == Set<int>) {
      final stringList = prefs.getStringList(key);
      if (stringList != null) {
        return stringList.map((e) => int.parse(e)).toSet() as T;
      }
      return null;
    } else if (T == List<int>) {
      final stringList = prefs.getStringList(key);
      if (stringList != null) {
        return stringList.map((e) => int.parse(e)).toList() as T;
      }
      return null;
    } else if (T == int) {
      return prefs.getInt(key) as T?;
    } else if (T == double) {
      return prefs.getDouble(key) as T?;
    } else if (T == bool) {
      return prefs.getBool(key) as T?;
    } else if (T == String) {
      return prefs.getString(key) as T?;
    } else {
      throw Exception('Invalid value type');
    }
  }
}