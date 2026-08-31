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

  static final Map<String, PrefLocation> _locationMap = {
    for (final e in PrefLocation.values) e.name: e,
  };

  factory KeyValue.fromJson(Map<String, dynamic> json) {
    final kv = KeyValue()
      ..key = json['key'] as String
      ..location = _locationMap[json['location']] ?? PrefLocation.OTHER;

    kv.value = _deserialize(json['dataType'] as String, json['value']);

    return kv;
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
        return List<String>.from(value);
      case 'int_list':
        return List<int>.from(value);
      case 'bool_list':
        return List<bool>.from(value);
      case 'map':
        return Map<String, dynamic>.from(value);
      default:
        throw UnsupportedError('Unknown type: $type');
    }
  }

  static String _typeOf(dynamic value) {
    switch (value) {
      case String _:
        return 'string';
      case int _:
        return 'int';
      case double _:
        return 'double';
      case bool _:
        return 'bool';
      case DateTime _:
        return 'datetime';
      case List<String> _:
        return 'string_list';
      case List<int> _:
        return 'int_list';
      case List<bool> _:
        return 'bool_list';
      case Map<String, dynamic> _:
        return 'map';
      default:
        throw UnsupportedError('Unsupported type: ${value.runtimeType}');
    }
  }

  static dynamic _serialize(dynamic value) {
    if (value is DateTime) {
      return value.toIso8601String();
    }
    return value;
  }

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
        break;

      case int v:
        intValue = v;
        break;

      case double v:
        doubleValue = v;
        break;

      case bool v:
        boolValue = v;
        break;

      case DateTime v:
        dateTimeValue = v.toIso8601String();
        break;

      case List<String> v:
        stringListValue = v;
        break;

      case List<int> v:
        intListValue = v;
        break;

      case List<bool> v:
        boolListValue = v;
        break;

      case Map<String, dynamic> v:
        serializedMapValue = jsonEncode(v);
        break;

      default:
        throw UnsupportedError('${value.runtimeType} is not supported');
    }
  }
}

extension KeyValueJson on KeyValue {
  Map<String, dynamic> toJson() {
    final current = value;

    return {
      'key': key,
      'location': location.name,
      'type': 'KeyValue',
      'dataType': KeyValue._typeOf(current),
      'value': KeyValue._serialize(current),
    };
  }
}
