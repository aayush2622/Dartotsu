import 'dart:convert';

import 'package:isar_community/isar.dart';

import '../../Pref.dart';

part 'KeyValues.g.dart';

/// One row of the typed key-value store. [key] is the fully-qualified
/// `<LOCATION>/<name>` storage key (see [Pref.storageKey]) and is globally
/// unique, so it alone is the row identity.
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

  KeyValue();

  /// Backup grouping bucket, derived from the key prefix.
  @ignore
  PrefLocation get location {
    final prefix = key.contains('/') ? key.split('/').first : '';
    return PrefLocation.values.firstWhere(
      (e) => e.name == prefix,
      orElse: () => PrefLocation.OTHER,
    );
  }

  factory KeyValue.fromJson(Map<String, dynamic> json) {
    return KeyValue()
      ..key = json['key'] as String
      ..value = _deserialize(json['dataType'] as String, json['value']);
  }

  Map<String, dynamic> toJson() {
    final current = value;
    return {
      'key': key,
      'type': 'KeyValue',
      'dataType': _typeOf(current),
      'value': _serialize(current),
    };
  }

  static dynamic _deserialize(String type, dynamic value) {
    switch (type) {
      case 'string':
        return value as String;
      case 'int':
        return value as int;
      case 'double':
        return (value as num).toDouble();
      case 'bool':
        return value as bool;
      case 'datetime':
        return DateTime.parse(value as String);
      case 'string_list':
        return List<String>.from(value as List);
      case 'int_list':
        return List<int>.from(value as List);
      case 'bool_list':
        return List<bool>.from(value as List);
      case 'map':
        return Map<String, dynamic>.from(value as Map);
      default:
        throw UnsupportedError('Unknown type: $type');
    }
  }

  static String _typeOf(dynamic value) {
    return switch (value) {
      String _ => 'string',
      int _ => 'int',
      double _ => 'double',
      bool _ => 'bool',
      DateTime _ => 'datetime',
      List<String> _ => 'string_list',
      List<int> _ => 'int_list',
      List<bool> _ => 'bool_list',
      Map<String, dynamic> _ => 'map',
      _ => throw UnsupportedError('Unsupported type: ${value.runtimeType}'),
    };
  }

  static dynamic _serialize(dynamic value) =>
      value is DateTime ? value.toIso8601String() : value;

  void _clearValues() {
    stringValue = null;
    intValue = null;
    doubleValue = null;
    boolValue = null;
    dateTimeValue = null;
    stringListValue = null;
    intListValue = null;
    boolListValue = null;
    serializedMapValue = null;
  }
}

extension KeyValueValue on KeyValue {
  @ignore
  dynamic get value {
    if (stringValue != null) return stringValue;
    if (intValue != null) return intValue;
    if (doubleValue != null) return doubleValue;
    if (boolValue != null) return boolValue;
    if (stringListValue != null) return stringListValue;
    if (intListValue != null) return intListValue;
    if (boolListValue != null) return boolListValue;
    if (dateTimeValue != null) return DateTime.parse(dateTimeValue!);
    if (serializedMapValue != null) {
      return jsonDecode(serializedMapValue!) as Map<String, dynamic>;
    }
    return null;
  }

  set value(dynamic value) {
    _clearValues();

    switch (value) {
      case String v:
        stringValue = v;
      case int v:
        intValue = v;
      case double v:
        doubleValue = v;
      case bool v:
        boolValue = v;
      case DateTime v:
        dateTimeValue = v.toIso8601String();
      case List<String> v:
        stringListValue = v;
      case List<int> v:
        intListValue = v;
      case List<bool> v:
        boolListValue = v;
      case Map<String, dynamic> v:
        serializedMapValue = jsonEncode(v);
      case Map v:
        serializedMapValue = jsonEncode(Map<String, dynamic>.from(v));
      case null:
        break;
      default:
        throw UnsupportedError('${value.runtimeType} is not supported');
    }
  }
}
