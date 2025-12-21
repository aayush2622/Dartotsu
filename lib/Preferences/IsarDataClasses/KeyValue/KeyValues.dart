import 'dart:convert';

import 'package:isar_community/isar.dart';

import '../../PrefManager.dart';

part 'KeyValues.g.dart';

@collection
class KeyValue {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String key;

  @Enumerated(EnumType.name)
  late PrefLocation location;

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
  factory KeyValue.fromJson(Map<String, dynamic> json) {
    final kv = KeyValue()
      ..key = json['key'] as String
      ..location = PrefLocation.values.firstWhere(
        (e) => e.name == json['location'],
        orElse: () => PrefLocation.OTHER,
      );

    final type = json['dataType'];
    final value = json['value'];

    switch (type) {
      case 'string':
        kv.stringValue = value;
        break;
      case 'int':
        kv.intValue = value;
        break;
      case 'double':
        kv.doubleValue = (value as num).toDouble();
        break;
      case 'bool':
        kv.boolValue = value;
        break;
      case 'datetime':
        kv.dateTimeValue = value;
        break;
      case 'string_list':
        kv.stringListValue = List<String>.from(value);
        break;
      case 'int_list':
        kv.intListValue = List<int>.from(value);
        break;
      case 'bool_list':
        kv.boolListValue = List<bool>.from(value);
        break;
      case 'map':
        kv.serializedMapValue = jsonEncode(value);
        break;
      default:
        throw UnsupportedError('Unknown type $type');
    }

    return kv;
  }
}

extension KeyValueJson on KeyValue {
  Map<String, dynamic> toJson() {
    final v = value;
    return {
      'key': key,
      'location': location.name,
      'type': 'KeyValue',
      'dataType': _typeOf(v),
      'value': _serialize(v),
    };
  }

  static String _typeOf(dynamic v) {
    if (v is String) return 'string';
    if (v is int) return 'int';
    if (v is double) return 'double';
    if (v is bool) return 'bool';
    if (v is DateTime) return 'datetime';
    if (v is List<String>) return 'string_list';
    if (v is List<int>) return 'int_list';
    if (v is List<bool>) return 'bool_list';
    if (v is Map<dynamic, dynamic>) return 'map';
    throw UnsupportedError('Unsupported type: ${v.runtimeType}');
  }

  static dynamic _serialize(dynamic v) {
    if (v is DateTime) return v.toIso8601String();
    return v;
  }
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
