// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KeyValues.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKeyValueCollection on Isar {
  IsarCollection<KeyValue> get keyValues => this.collection();
}

const KeyValueSchema = CollectionSchema(
  name: r'KeyValue',
  id: 351509419635681045,
  properties: {
    r'boolListValue': PropertySchema(
      id: 0,
      name: r'boolListValue',
      type: IsarType.boolList,
    ),
    r'boolValue': PropertySchema(
      id: 1,
      name: r'boolValue',
      type: IsarType.bool,
    ),
    r'dateTimeValue': PropertySchema(
      id: 2,
      name: r'dateTimeValue',
      type: IsarType.string,
    ),
    r'doubleValue': PropertySchema(
      id: 3,
      name: r'doubleValue',
      type: IsarType.double,
    ),
    r'intListValue': PropertySchema(
      id: 4,
      name: r'intListValue',
      type: IsarType.longList,
    ),
    r'intValue': PropertySchema(
      id: 5,
      name: r'intValue',
      type: IsarType.long,
    ),
    r'key': PropertySchema(
      id: 6,
      name: r'key',
      type: IsarType.string,
    ),
    r'serializedMapValue': PropertySchema(
      id: 7,
      name: r'serializedMapValue',
      type: IsarType.string,
    ),
    r'stringListValue': PropertySchema(
      id: 8,
      name: r'stringListValue',
      type: IsarType.stringList,
    ),
    r'stringValue': PropertySchema(
      id: 9,
      name: r'stringValue',
      type: IsarType.string,
    )
  },
  estimateSize: _keyValueEstimateSize,
  serialize: _keyValueSerialize,
  deserialize: _keyValueDeserialize,
  deserializeProp: _keyValueDeserializeProp,
  idName: r'id',
  indexes: {
    r'key': IndexSchema(
      id: -4906094122524121629,
      name: r'key',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _keyValueGetId,
  getLinks: _keyValueGetLinks,
  attach: _keyValueAttach,
  version: '3.1.0+1',
);

int _keyValueEstimateSize(
  KeyValue object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.boolListValue;
    if (value != null) {
      bytesCount += 3 + value.length;
    }
  }
  {
    final value = object.dateTimeValue;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.intListValue;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  bytesCount += 3 + object.key.length * 3;
  {
    final value = object.serializedMapValue;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.stringListValue;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.stringValue;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _keyValueSerialize(
  KeyValue object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBoolList(offsets[0], object.boolListValue);
  writer.writeBool(offsets[1], object.boolValue);
  writer.writeString(offsets[2], object.dateTimeValue);
  writer.writeDouble(offsets[3], object.doubleValue);
  writer.writeLongList(offsets[4], object.intListValue);
  writer.writeLong(offsets[5], object.intValue);
  writer.writeString(offsets[6], object.key);
  writer.writeString(offsets[7], object.serializedMapValue);
  writer.writeStringList(offsets[8], object.stringListValue);
  writer.writeString(offsets[9], object.stringValue);
}

KeyValue _keyValueDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KeyValue();
  object.boolListValue = reader.readBoolList(offsets[0]);
  object.boolValue = reader.readBoolOrNull(offsets[1]);
  object.dateTimeValue = reader.readStringOrNull(offsets[2]);
  object.doubleValue = reader.readDoubleOrNull(offsets[3]);
  object.id = id;
  object.intListValue = reader.readLongList(offsets[4]);
  object.intValue = reader.readLongOrNull(offsets[5]);
  object.key = reader.readString(offsets[6]);
  object.serializedMapValue = reader.readStringOrNull(offsets[7]);
  object.stringListValue = reader.readStringList(offsets[8]);
  object.stringValue = reader.readStringOrNull(offsets[9]);
  return object;
}

P _keyValueDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolList(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readLongList(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringList(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _keyValueGetId(KeyValue object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _keyValueGetLinks(KeyValue object) {
  return [];
}

void _keyValueAttach(IsarCollection<dynamic> col, Id id, KeyValue object) {
  object.id = id;
}

extension KeyValueByIndex on IsarCollection<KeyValue> {
  Future<KeyValue?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  KeyValue? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<KeyValue?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<KeyValue?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<Id> putByKey(KeyValue object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(KeyValue object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<KeyValue> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<KeyValue> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension KeyValueQueryWhereSort on QueryBuilder<KeyValue, KeyValue, QWhere> {
  QueryBuilder<KeyValue, KeyValue, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KeyValueQueryWhere on QueryBuilder<KeyValue, KeyValue, QWhereClause> {
  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> keyEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterWhereClause> keyNotEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }
}

extension KeyValueQueryFilter
    on QueryBuilder<KeyValue, KeyValue, QFilterCondition> {
  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'boolListValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'boolListValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueElementEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boolListValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'boolListValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'boolListValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'boolListValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'boolListValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'boolListValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      boolListValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'boolListValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> boolValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'boolValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> boolValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'boolValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> boolValueEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boolValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      dateTimeValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTimeValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      dateTimeValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTimeValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> dateTimeValueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTimeValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      dateTimeValueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTimeValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> dateTimeValueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTimeValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> dateTimeValueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTimeValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      dateTimeValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateTimeValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> dateTimeValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateTimeValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> dateTimeValueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateTimeValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> dateTimeValueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateTimeValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      dateTimeValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTimeValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      dateTimeValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateTimeValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> doubleValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doubleValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      doubleValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doubleValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> doubleValueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      doubleValueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> doubleValueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> doubleValueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doubleValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intListValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'intListValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'intListValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intListValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intListValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intListValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intListValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'intListValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'intListValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'intListValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'intListValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'intListValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      intListValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'intListValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'intValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'intValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intValueEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> intValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serializedMapValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serializedMapValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serializedMapValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serializedMapValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serializedMapValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serializedMapValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serializedMapValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serializedMapValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serializedMapValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serializedMapValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serializedMapValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      serializedMapValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serializedMapValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringListValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringListValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringListValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stringListValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stringListValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stringListValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stringListValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stringListValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stringListValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stringListValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringListValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stringListValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringListValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringListValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringListValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringListValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringListValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringListValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringListValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringValue',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringValueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stringValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stringValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition> stringValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringValue',
        value: '',
      ));
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterFilterCondition>
      stringValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stringValue',
        value: '',
      ));
    });
  }
}

extension KeyValueQueryObject
    on QueryBuilder<KeyValue, KeyValue, QFilterCondition> {}

extension KeyValueQueryLinks
    on QueryBuilder<KeyValue, KeyValue, QFilterCondition> {}

extension KeyValueQuerySortBy on QueryBuilder<KeyValue, KeyValue, QSortBy> {
  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByBoolValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByDateTimeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByDateTimeValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByDoubleValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByIntValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortBySerializedMapValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serializedMapValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy>
      sortBySerializedMapValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serializedMapValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> sortByStringValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.desc);
    });
  }
}

extension KeyValueQuerySortThenBy
    on QueryBuilder<KeyValue, KeyValue, QSortThenBy> {
  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByBoolValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByDateTimeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByDateTimeValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByDoubleValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByIntValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenBySerializedMapValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serializedMapValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy>
      thenBySerializedMapValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serializedMapValue', Sort.desc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.asc);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QAfterSortBy> thenByStringValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.desc);
    });
  }
}

extension KeyValueQueryWhereDistinct
    on QueryBuilder<KeyValue, KeyValue, QDistinct> {
  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByBoolListValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boolListValue');
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boolValue');
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByDateTimeValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTimeValue',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doubleValue');
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByIntListValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intListValue');
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intValue');
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctBySerializedMapValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serializedMapValue',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByStringListValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringListValue');
    });
  }

  QueryBuilder<KeyValue, KeyValue, QDistinct> distinctByStringValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringValue', caseSensitive: caseSensitive);
    });
  }
}

extension KeyValueQueryProperty
    on QueryBuilder<KeyValue, KeyValue, QQueryProperty> {
  QueryBuilder<KeyValue, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<KeyValue, List<bool>?, QQueryOperations>
      boolListValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boolListValue');
    });
  }

  QueryBuilder<KeyValue, bool?, QQueryOperations> boolValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boolValue');
    });
  }

  QueryBuilder<KeyValue, String?, QQueryOperations> dateTimeValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTimeValue');
    });
  }

  QueryBuilder<KeyValue, double?, QQueryOperations> doubleValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doubleValue');
    });
  }

  QueryBuilder<KeyValue, List<int>?, QQueryOperations> intListValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intListValue');
    });
  }

  QueryBuilder<KeyValue, int?, QQueryOperations> intValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intValue');
    });
  }

  QueryBuilder<KeyValue, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<KeyValue, String?, QQueryOperations>
      serializedMapValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serializedMapValue');
    });
  }

  QueryBuilder<KeyValue, List<String>?, QQueryOperations>
      stringListValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringListValue');
    });
  }

  QueryBuilder<KeyValue, String?, QQueryOperations> stringValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringValue');
    });
  }
}
