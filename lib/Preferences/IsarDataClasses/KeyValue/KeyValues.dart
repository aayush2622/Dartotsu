import 'dart:convert';

import 'package:isar/isar.dart';

part 'KeyValues.g.dart';

@collection
class KeyValue {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String key;

  String? stringValue;
  int? intValue;
  double? doubleValue;
  bool? boolValue;
  String? dateTimeValue;

  List<String>? stringListValue;
  List<int>? intListValue;
  List<bool>? boolListValue;
  String? serializedMapValue;
}

extension KeyValueX on KeyValue {
  set value(dynamic value) {
    if (value is String) {
      stringValue = value;
    } else if (value is int) {
      intValue = value;
    } else if (value is double) {
      doubleValue = value;
    } else if (value is bool) {
      boolValue = value;
    } else if (value is DateTime) {
      dateTimeValue = value.toIso8601String();
    } else if (value is List<String>) {
      stringListValue = value;
    } else if (value is List<int>) {
      intListValue = value;
    } else if (value is List<bool>) {
      boolListValue = value;
    } else if (value is Map<dynamic, dynamic>) {
      serializedMapValue = jsonEncode(value); // Serialize the Map
    } else {
      throw UnsupportedError('${value.runtimeType} is not supported');
    }
  }

  dynamic get value {
    if (stringValue != null) return stringValue;
    if (intValue != null) return intValue;
    if (doubleValue != null) return doubleValue;
    if (boolValue != null) return boolValue;
    if (stringListValue != null) return stringListValue;
    if (intListValue != null) return intListValue;
    if (boolListValue != null) return boolListValue;
    if (dateTimeValue != null) return DateTime.parse(dateTimeValue!);
    if (serializedMapValue != null) return jsonDecode(serializedMapValue!);
    return null;
  }
}
