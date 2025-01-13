// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DefaultPlayerSettings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlayerSettingsCollection on Isar {
  IsarCollection<PlayerSettings> get playerSettings => this.collection();
}

const PlayerSettingsSchema = CollectionSchema(
  name: r'PlayerSettings',
  id: 5441166910175932327,
  properties: {
    r'key': PropertySchema(
      id: 0,
      name: r'key',
      type: IsarType.string,
    ),
    r'resizeMode': PropertySchema(
      id: 1,
      name: r'resizeMode',
      type: IsarType.long,
    ),
    r'showSubtitle': PropertySchema(
      id: 2,
      name: r'showSubtitle',
      type: IsarType.bool,
    ),
    r'skipDuration': PropertySchema(
      id: 3,
      name: r'skipDuration',
      type: IsarType.long,
    ),
    r'speed': PropertySchema(
      id: 4,
      name: r'speed',
      type: IsarType.string,
    ),
    r'subtitleBackgroundColor': PropertySchema(
      id: 5,
      name: r'subtitleBackgroundColor',
      type: IsarType.long,
    ),
    r'subtitleBottomPadding': PropertySchema(
      id: 6,
      name: r'subtitleBottomPadding',
      type: IsarType.long,
    ),
    r'subtitleColor': PropertySchema(
      id: 7,
      name: r'subtitleColor',
      type: IsarType.long,
    ),
    r'subtitleFont': PropertySchema(
      id: 8,
      name: r'subtitleFont',
      type: IsarType.string,
    ),
    r'subtitleLanguage': PropertySchema(
      id: 9,
      name: r'subtitleLanguage',
      type: IsarType.string,
    ),
    r'subtitleOutlineColor': PropertySchema(
      id: 10,
      name: r'subtitleOutlineColor',
      type: IsarType.long,
    ),
    r'subtitleSize': PropertySchema(
      id: 11,
      name: r'subtitleSize',
      type: IsarType.long,
    ),
    r'subtitleWeight': PropertySchema(
      id: 12,
      name: r'subtitleWeight',
      type: IsarType.long,
    )
  },
  estimateSize: _playerSettingsEstimateSize,
  serialize: _playerSettingsSerialize,
  deserialize: _playerSettingsDeserialize,
  deserializeProp: _playerSettingsDeserializeProp,
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
  getId: _playerSettingsGetId,
  getLinks: _playerSettingsGetLinks,
  attach: _playerSettingsAttach,
  version: '3.1.0+1',
);

int _playerSettingsEstimateSize(
  PlayerSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.speed.length * 3;
  bytesCount += 3 + object.subtitleFont.length * 3;
  bytesCount += 3 + object.subtitleLanguage.length * 3;
  return bytesCount;
}

void _playerSettingsSerialize(
  PlayerSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
  writer.writeLong(offsets[1], object.resizeMode);
  writer.writeBool(offsets[2], object.showSubtitle);
  writer.writeLong(offsets[3], object.skipDuration);
  writer.writeString(offsets[4], object.speed);
  writer.writeLong(offsets[5], object.subtitleBackgroundColor);
  writer.writeLong(offsets[6], object.subtitleBottomPadding);
  writer.writeLong(offsets[7], object.subtitleColor);
  writer.writeString(offsets[8], object.subtitleFont);
  writer.writeString(offsets[9], object.subtitleLanguage);
  writer.writeLong(offsets[10], object.subtitleOutlineColor);
  writer.writeLong(offsets[11], object.subtitleSize);
  writer.writeLong(offsets[12], object.subtitleWeight);
}

PlayerSettings _playerSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerSettings(
    resizeMode: reader.readLongOrNull(offsets[1]) ?? 0,
    showSubtitle: reader.readBoolOrNull(offsets[2]) ?? true,
    skipDuration: reader.readLongOrNull(offsets[3]) ?? 85,
    speed: reader.readStringOrNull(offsets[4]) ?? '1x',
    subtitleBackgroundColor: reader.readLongOrNull(offsets[5]) ?? 0x80000000,
    subtitleBottomPadding: reader.readLongOrNull(offsets[6]) ?? 0,
    subtitleColor: reader.readLongOrNull(offsets[7]) ?? 0xFFFFFFFF,
    subtitleFont: reader.readStringOrNull(offsets[8]) ?? 'Poppins',
    subtitleLanguage: reader.readStringOrNull(offsets[9]) ?? 'en',
    subtitleOutlineColor: reader.readLongOrNull(offsets[10]) ?? 0x00000000,
    subtitleSize: reader.readLongOrNull(offsets[11]) ?? 32,
    subtitleWeight: reader.readLongOrNull(offsets[12]) ?? 5,
  );
  object.id = id;
  object.key = reader.readString(offsets[0]);
  return object;
}

P _playerSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 85) as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '1x') as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0x80000000) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 0xFFFFFFFF) as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? 'Poppins') as P;
    case 9:
      return (reader.readStringOrNull(offset) ?? 'en') as P;
    case 10:
      return (reader.readLongOrNull(offset) ?? 0x00000000) as P;
    case 11:
      return (reader.readLongOrNull(offset) ?? 32) as P;
    case 12:
      return (reader.readLongOrNull(offset) ?? 5) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _playerSettingsGetId(PlayerSettings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playerSettingsGetLinks(PlayerSettings object) {
  return [];
}

void _playerSettingsAttach(
    IsarCollection<dynamic> col, Id id, PlayerSettings object) {
  object.id = id;
}

extension PlayerSettingsByIndex on IsarCollection<PlayerSettings> {
  Future<PlayerSettings?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  PlayerSettings? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<PlayerSettings?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<PlayerSettings?> getAllByKeySync(List<String> keyValues) {
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

  Future<Id> putByKey(PlayerSettings object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(PlayerSettings object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<PlayerSettings> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<PlayerSettings> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension PlayerSettingsQueryWhereSort
    on QueryBuilder<PlayerSettings, PlayerSettings, QWhere> {
  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlayerSettingsQueryWhere
    on QueryBuilder<PlayerSettings, PlayerSettings, QWhereClause> {
  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> idBetween(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> keyEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterWhereClause> keyNotEqualTo(
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

extension PlayerSettingsQueryFilter
    on QueryBuilder<PlayerSettings, PlayerSettings, QFilterCondition> {
  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyEqualTo(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyGreaterThan(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyLessThan(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyBetween(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyStartsWith(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyEndsWith(
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

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      resizeModeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resizeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      resizeModeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resizeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      resizeModeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resizeMode',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      resizeModeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resizeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      showSubtitleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showSubtitle',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      skipDurationEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'skipDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      skipDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'skipDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      skipDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'skipDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      skipDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'skipDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      speedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speed',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBackgroundColorEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleBackgroundColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBackgroundColorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleBackgroundColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBackgroundColorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleBackgroundColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBackgroundColorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleBackgroundColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBottomPaddingEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleBottomPadding',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBottomPaddingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleBottomPadding',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBottomPaddingLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleBottomPadding',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleBottomPaddingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleBottomPadding',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleColorEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleColorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleColorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleColorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleFont',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleFont',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleFont',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleFont',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subtitleFont',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subtitleFont',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subtitleFont',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subtitleFont',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleFont',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleFontIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subtitleFont',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleLanguage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subtitleLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subtitleLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subtitleLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subtitleLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleLanguageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subtitleLanguage',
        value: '',
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleOutlineColorEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleOutlineColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleOutlineColorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleOutlineColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleOutlineColorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleOutlineColor',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleOutlineColorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleOutlineColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleSizeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleSize',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleSizeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleSize',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleSizeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleSize',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleSizeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleWeightEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitleWeight',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleWeightGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitleWeight',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleWeightLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitleWeight',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterFilterCondition>
      subtitleWeightBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitleWeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PlayerSettingsQueryObject
    on QueryBuilder<PlayerSettings, PlayerSettings, QFilterCondition> {}

extension PlayerSettingsQueryLinks
    on QueryBuilder<PlayerSettings, PlayerSettings, QFilterCondition> {}

extension PlayerSettingsQuerySortBy
    on QueryBuilder<PlayerSettings, PlayerSettings, QSortBy> {
  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortByResizeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resizeMode', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortByResizeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resizeMode', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortByShowSubtitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showSubtitle', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortByShowSubtitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showSubtitle', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySkipDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skipDuration', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySkipDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skipDuration', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> sortBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> sortBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBackgroundColor', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleBackgroundColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBackgroundColor', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleBottomPadding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBottomPadding', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleBottomPaddingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBottomPadding', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleColor', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleColor', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleFont() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleFont', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleFontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleFont', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleLanguage', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleLanguage', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleOutlineColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleOutlineColor', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleOutlineColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleOutlineColor', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleSize', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleSize', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleWeight', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      sortBySubtitleWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleWeight', Sort.desc);
    });
  }
}

extension PlayerSettingsQuerySortThenBy
    on QueryBuilder<PlayerSettings, PlayerSettings, QSortThenBy> {
  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenByResizeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resizeMode', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenByResizeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resizeMode', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenByShowSubtitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showSubtitle', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenByShowSubtitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showSubtitle', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySkipDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skipDuration', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySkipDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skipDuration', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> thenBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy> thenBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBackgroundColor', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleBackgroundColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBackgroundColor', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleBottomPadding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBottomPadding', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleBottomPaddingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleBottomPadding', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleColor', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleColor', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleFont() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleFont', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleFontDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleFont', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleLanguage', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleLanguage', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleOutlineColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleOutlineColor', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleOutlineColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleOutlineColor', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleSize', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleSize', Sort.desc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleWeight', Sort.asc);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QAfterSortBy>
      thenBySubtitleWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitleWeight', Sort.desc);
    });
  }
}

extension PlayerSettingsQueryWhereDistinct
    on QueryBuilder<PlayerSettings, PlayerSettings, QDistinct> {
  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctByResizeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resizeMode');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctByShowSubtitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showSubtitle');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySkipDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'skipDuration');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct> distinctBySpeed(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speed', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleBackgroundColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleBackgroundColor');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleBottomPadding() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleBottomPadding');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleColor');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleFont({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleFont', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleOutlineColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleOutlineColor');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleSize');
    });
  }

  QueryBuilder<PlayerSettings, PlayerSettings, QDistinct>
      distinctBySubtitleWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitleWeight');
    });
  }
}

extension PlayerSettingsQueryProperty
    on QueryBuilder<PlayerSettings, PlayerSettings, QQueryProperty> {
  QueryBuilder<PlayerSettings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlayerSettings, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations> resizeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resizeMode');
    });
  }

  QueryBuilder<PlayerSettings, bool, QQueryOperations> showSubtitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showSubtitle');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations> skipDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skipDuration');
    });
  }

  QueryBuilder<PlayerSettings, String, QQueryOperations> speedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speed');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations>
      subtitleBackgroundColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleBackgroundColor');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations>
      subtitleBottomPaddingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleBottomPadding');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations> subtitleColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleColor');
    });
  }

  QueryBuilder<PlayerSettings, String, QQueryOperations>
      subtitleFontProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleFont');
    });
  }

  QueryBuilder<PlayerSettings, String, QQueryOperations>
      subtitleLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleLanguage');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations>
      subtitleOutlineColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleOutlineColor');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations> subtitleSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleSize');
    });
  }

  QueryBuilder<PlayerSettings, int, QQueryOperations> subtitleWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitleWeight');
    });
  }
}
