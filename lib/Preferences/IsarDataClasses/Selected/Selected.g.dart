// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Selected.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSelectedCollection on Isar {
  IsarCollection<Selected> get selecteds => this.collection();
}

const SelectedSchema = CollectionSchema(
  name: r'Selected',
  id: 8068440006482770698,
  properties: {
    r'chip': PropertySchema(
      id: 0,
      name: r'chip',
      type: IsarType.long,
    ),
    r'key': PropertySchema(
      id: 1,
      name: r'key',
      type: IsarType.string,
    ),
    r'langIndex': PropertySchema(
      id: 2,
      name: r'langIndex',
      type: IsarType.long,
    ),
    r'latest': PropertySchema(
      id: 3,
      name: r'latest',
      type: IsarType.double,
    ),
    r'preferDub': PropertySchema(
      id: 4,
      name: r'preferDub',
      type: IsarType.bool,
    ),
    r'recyclerReversed': PropertySchema(
      id: 5,
      name: r'recyclerReversed',
      type: IsarType.bool,
    ),
    r'recyclerStyle': PropertySchema(
      id: 6,
      name: r'recyclerStyle',
      type: IsarType.long,
    ),
    r'scanlators': PropertySchema(
      id: 7,
      name: r'scanlators',
      type: IsarType.stringList,
    ),
    r'server': PropertySchema(
      id: 8,
      name: r'server',
      type: IsarType.string,
    ),
    r'sourceIndex': PropertySchema(
      id: 9,
      name: r'sourceIndex',
      type: IsarType.long,
    ),
    r'video': PropertySchema(
      id: 10,
      name: r'video',
      type: IsarType.long,
    ),
    r'window': PropertySchema(
      id: 11,
      name: r'window',
      type: IsarType.long,
    )
  },
  estimateSize: _selectedEstimateSize,
  serialize: _selectedSerialize,
  deserialize: _selectedDeserialize,
  deserializeProp: _selectedDeserializeProp,
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
  getId: _selectedGetId,
  getLinks: _selectedGetLinks,
  attach: _selectedAttach,
  version: '3.1.0+1',
);

int _selectedEstimateSize(
  Selected object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  {
    final list = object.scanlators;
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
    final value = object.server;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _selectedSerialize(
  Selected object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chip);
  writer.writeString(offsets[1], object.key);
  writer.writeLong(offsets[2], object.langIndex);
  writer.writeDouble(offsets[3], object.latest);
  writer.writeBool(offsets[4], object.preferDub);
  writer.writeBool(offsets[5], object.recyclerReversed);
  writer.writeLong(offsets[6], object.recyclerStyle);
  writer.writeStringList(offsets[7], object.scanlators);
  writer.writeString(offsets[8], object.server);
  writer.writeLong(offsets[9], object.sourceIndex);
  writer.writeLong(offsets[10], object.video);
  writer.writeLong(offsets[11], object.window);
}

Selected _selectedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Selected(
    chip: reader.readLongOrNull(offsets[0]) ?? 0,
    langIndex: reader.readLongOrNull(offsets[2]) ?? 0,
    latest: reader.readDoubleOrNull(offsets[3]) ?? 0.0,
    preferDub: reader.readBoolOrNull(offsets[4]) ?? false,
    recyclerReversed: reader.readBoolOrNull(offsets[5]) ?? false,
    recyclerStyle: reader.readLongOrNull(offsets[6]) ?? 0,
    scanlators: reader.readStringList(offsets[7]),
    server: reader.readStringOrNull(offsets[8]),
    sourceIndex: reader.readLongOrNull(offsets[9]) ?? 0,
    video: reader.readLongOrNull(offsets[10]) ?? 0,
    window: reader.readLongOrNull(offsets[11]) ?? 0,
  );
  object.id = id;
  object.key = reader.readString(offsets[1]);
  return object;
}

P _selectedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 5:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 10:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 11:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _selectedGetId(Selected object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _selectedGetLinks(Selected object) {
  return [];
}

void _selectedAttach(IsarCollection<dynamic> col, Id id, Selected object) {
  object.id = id;
}

extension SelectedByIndex on IsarCollection<Selected> {
  Future<Selected?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  Selected? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<Selected?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<Selected?> getAllByKeySync(List<String> keyValues) {
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

  Future<Id> putByKey(Selected object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(Selected object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<Selected> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<Selected> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension SelectedQueryWhereSort on QueryBuilder<Selected, Selected, QWhere> {
  QueryBuilder<Selected, Selected, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SelectedQueryWhere on QueryBuilder<Selected, Selected, QWhereClause> {
  QueryBuilder<Selected, Selected, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Selected, Selected, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterWhereClause> idBetween(
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

  QueryBuilder<Selected, Selected, QAfterWhereClause> keyEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterWhereClause> keyNotEqualTo(
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

extension SelectedQueryFilter
    on QueryBuilder<Selected, Selected, QFilterCondition> {
  QueryBuilder<Selected, Selected, QAfterFilterCondition> chipEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chip',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> chipGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chip',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> chipLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chip',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> chipBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyEqualTo(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyGreaterThan(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyLessThan(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyBetween(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyStartsWith(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyEndsWith(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyContains(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyMatches(
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

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> langIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'langIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> langIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'langIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> langIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'langIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> langIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'langIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> latestEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> latestGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> latestLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> latestBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> preferDubEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preferDub',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      recyclerReversedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recyclerReversed',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> recyclerStyleEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recyclerStyle',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      recyclerStyleGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recyclerStyle',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> recyclerStyleLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recyclerStyle',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> recyclerStyleBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recyclerStyle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> scanlatorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scanlators',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scanlators',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scanlators',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'scanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'scanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'scanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'scanlators',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scanlators',
        value: '',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'scanlators',
        value: '',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scanlators',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> scanlatorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scanlators',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scanlators',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scanlators',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scanlators',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      scanlatorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'scanlators',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'server',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'server',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'server',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'server',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'server',
        value: '',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> serverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'server',
        value: '',
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> sourceIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition>
      sourceIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sourceIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> sourceIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sourceIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> sourceIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sourceIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> videoEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'video',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> videoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'video',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> videoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'video',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> videoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'video',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> windowEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'window',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> windowGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'window',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> windowLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'window',
        value: value,
      ));
    });
  }

  QueryBuilder<Selected, Selected, QAfterFilterCondition> windowBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'window',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SelectedQueryObject
    on QueryBuilder<Selected, Selected, QFilterCondition> {}

extension SelectedQueryLinks
    on QueryBuilder<Selected, Selected, QFilterCondition> {}

extension SelectedQuerySortBy on QueryBuilder<Selected, Selected, QSortBy> {
  QueryBuilder<Selected, Selected, QAfterSortBy> sortByChip() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chip', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByChipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chip', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByLangIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'langIndex', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByLangIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'langIndex', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByLatest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latest', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByLatestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latest', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByPreferDub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferDub', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByPreferDubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferDub', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByRecyclerReversed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerReversed', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByRecyclerReversedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerReversed', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByRecyclerStyle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerStyle', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByRecyclerStyleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerStyle', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortBySourceIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIndex', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortBySourceIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIndex', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByWindow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'window', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> sortByWindowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'window', Sort.desc);
    });
  }
}

extension SelectedQuerySortThenBy
    on QueryBuilder<Selected, Selected, QSortThenBy> {
  QueryBuilder<Selected, Selected, QAfterSortBy> thenByChip() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chip', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByChipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chip', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByLangIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'langIndex', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByLangIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'langIndex', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByLatest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latest', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByLatestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latest', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByPreferDub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferDub', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByPreferDubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preferDub', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByRecyclerReversed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerReversed', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByRecyclerReversedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerReversed', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByRecyclerStyle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerStyle', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByRecyclerStyleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recyclerStyle', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenBySourceIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIndex', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenBySourceIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIndex', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'video', Sort.desc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByWindow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'window', Sort.asc);
    });
  }

  QueryBuilder<Selected, Selected, QAfterSortBy> thenByWindowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'window', Sort.desc);
    });
  }
}

extension SelectedQueryWhereDistinct
    on QueryBuilder<Selected, Selected, QDistinct> {
  QueryBuilder<Selected, Selected, QDistinct> distinctByChip() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chip');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByLangIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'langIndex');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByLatest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latest');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByPreferDub() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preferDub');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByRecyclerReversed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recyclerReversed');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByRecyclerStyle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recyclerStyle');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByScanlators() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scanlators');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByServer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'server', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctBySourceIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceIndex');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'video');
    });
  }

  QueryBuilder<Selected, Selected, QDistinct> distinctByWindow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'window');
    });
  }
}

extension SelectedQueryProperty
    on QueryBuilder<Selected, Selected, QQueryProperty> {
  QueryBuilder<Selected, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Selected, int, QQueryOperations> chipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chip');
    });
  }

  QueryBuilder<Selected, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<Selected, int, QQueryOperations> langIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'langIndex');
    });
  }

  QueryBuilder<Selected, double, QQueryOperations> latestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latest');
    });
  }

  QueryBuilder<Selected, bool, QQueryOperations> preferDubProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preferDub');
    });
  }

  QueryBuilder<Selected, bool, QQueryOperations> recyclerReversedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recyclerReversed');
    });
  }

  QueryBuilder<Selected, int, QQueryOperations> recyclerStyleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recyclerStyle');
    });
  }

  QueryBuilder<Selected, List<String>?, QQueryOperations> scanlatorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scanlators');
    });
  }

  QueryBuilder<Selected, String?, QQueryOperations> serverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'server');
    });
  }

  QueryBuilder<Selected, int, QQueryOperations> sourceIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceIndex');
    });
  }

  QueryBuilder<Selected, int, QQueryOperations> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'video');
    });
  }

  QueryBuilder<Selected, int, QQueryOperations> windowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'window');
    });
  }
}
