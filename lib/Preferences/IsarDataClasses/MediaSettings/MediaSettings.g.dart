// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MediaSettings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMediaSettingsCollection on Isar {
  IsarCollection<MediaSettings> get mediaSettings => this.collection();
}

const MediaSettingsSchema = CollectionSchema(
  name: r'MediaSettings',
  id: 212310248542840178,
  properties: {
    r'isReverse': PropertySchema(
      id: 0,
      name: r'isReverse',
      type: IsarType.bool,
    ),
    r'key': PropertySchema(
      id: 1,
      name: r'key',
      type: IsarType.string,
    ),
    r'lastUsedSource': PropertySchema(
      id: 2,
      name: r'lastUsedSource',
      type: IsarType.string,
    ),
    r'navBarIndex': PropertySchema(
      id: 3,
      name: r'navBarIndex',
      type: IsarType.long,
    ),
    r'playerSettings': PropertySchema(
      id: 4,
      name: r'playerSettings',
      type: IsarType.object,
      target: r'PlayerSettings',
    ),
    r'readerSettings': PropertySchema(
      id: 5,
      name: r'readerSettings',
      type: IsarType.object,
      target: r'ReaderSettings',
    ),
    r'selectedScanlators': PropertySchema(
      id: 6,
      name: r'selectedScanlators',
      type: IsarType.stringList,
    ),
    r'server': PropertySchema(
      id: 7,
      name: r'server',
      type: IsarType.string,
    ),
    r'viewType': PropertySchema(
      id: 8,
      name: r'viewType',
      type: IsarType.long,
    )
  },
  estimateSize: _mediaSettingsEstimateSize,
  serialize: _mediaSettingsSerialize,
  deserialize: _mediaSettingsDeserialize,
  deserializeProp: _mediaSettingsDeserializeProp,
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
  embeddedSchemas: {
    r'PlayerSettings': PlayerSettingsSchema,
    r'ReaderSettings': ReaderSettingsSchema
  },
  getId: _mediaSettingsGetId,
  getLinks: _mediaSettingsGetLinks,
  attach: _mediaSettingsAttach,
  version: '3.1.0+1',
);

int _mediaSettingsEstimateSize(
  MediaSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  {
    final value = object.lastUsedSource;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      PlayerSettingsSchema.estimateSize(
          object.playerSettings, allOffsets[PlayerSettings]!, allOffsets);
  bytesCount += 3 +
      ReaderSettingsSchema.estimateSize(
          object.readerSettings, allOffsets[ReaderSettings]!, allOffsets);
  {
    final list = object.selectedScanlators;
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

void _mediaSettingsSerialize(
  MediaSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isReverse);
  writer.writeString(offsets[1], object.key);
  writer.writeString(offsets[2], object.lastUsedSource);
  writer.writeLong(offsets[3], object.navBarIndex);
  writer.writeObject<PlayerSettings>(
    offsets[4],
    allOffsets,
    PlayerSettingsSchema.serialize,
    object.playerSettings,
  );
  writer.writeObject<ReaderSettings>(
    offsets[5],
    allOffsets,
    ReaderSettingsSchema.serialize,
    object.readerSettings,
  );
  writer.writeStringList(offsets[6], object.selectedScanlators);
  writer.writeString(offsets[7], object.server);
  writer.writeLong(offsets[8], object.viewType);
}

MediaSettings _mediaSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaSettings(
    isReverse: reader.readBoolOrNull(offsets[0]) ?? false,
    lastUsedSource: reader.readStringOrNull(offsets[2]),
    navBarIndex: reader.readLongOrNull(offsets[3]) ?? 0,
    selectedScanlators: reader.readStringList(offsets[6]),
    server: reader.readStringOrNull(offsets[7]),
    viewType: reader.readLongOrNull(offsets[8]) ?? 0,
  );
  object.id = id;
  object.key = reader.readString(offsets[1]);
  object.playerSettings = reader.readObjectOrNull<PlayerSettings>(
        offsets[4],
        PlayerSettingsSchema.deserialize,
        allOffsets,
      ) ??
      PlayerSettings();
  object.readerSettings = reader.readObjectOrNull<ReaderSettings>(
        offsets[5],
        ReaderSettingsSchema.deserialize,
        allOffsets,
      ) ??
      ReaderSettings();
  return object;
}

P _mediaSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readObjectOrNull<PlayerSettings>(
            offset,
            PlayerSettingsSchema.deserialize,
            allOffsets,
          ) ??
          PlayerSettings()) as P;
    case 5:
      return (reader.readObjectOrNull<ReaderSettings>(
            offset,
            ReaderSettingsSchema.deserialize,
            allOffsets,
          ) ??
          ReaderSettings()) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mediaSettingsGetId(MediaSettings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mediaSettingsGetLinks(MediaSettings object) {
  return [];
}

void _mediaSettingsAttach(
    IsarCollection<dynamic> col, Id id, MediaSettings object) {
  object.id = id;
}

extension MediaSettingsByIndex on IsarCollection<MediaSettings> {
  Future<MediaSettings?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  MediaSettings? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<MediaSettings?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<MediaSettings?> getAllByKeySync(List<String> keyValues) {
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

  Future<Id> putByKey(MediaSettings object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(MediaSettings object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<MediaSettings> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<MediaSettings> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension MediaSettingsQueryWhereSort
    on QueryBuilder<MediaSettings, MediaSettings, QWhere> {
  QueryBuilder<MediaSettings, MediaSettings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MediaSettingsQueryWhere
    on QueryBuilder<MediaSettings, MediaSettings, QWhereClause> {
  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> idBetween(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> keyEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterWhereClause> keyNotEqualTo(
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

extension MediaSettingsQueryFilter
    on QueryBuilder<MediaSettings, MediaSettings, QFilterCondition> {
  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      isReverseEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isReverse',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> keyEqualTo(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> keyLessThan(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> keyBetween(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> keyEndsWith(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> keyContains(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition> keyMatches(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUsedSource',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUsedSource',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUsedSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUsedSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUsedSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUsedSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastUsedSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastUsedSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastUsedSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastUsedSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUsedSource',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      lastUsedSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastUsedSource',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      navBarIndexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'navBarIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      navBarIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'navBarIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      navBarIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'navBarIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      navBarIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'navBarIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'selectedScanlators',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'selectedScanlators',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedScanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedScanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedScanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedScanlators',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedScanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedScanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedScanlators',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedScanlators',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedScanlators',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedScanlators',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedScanlators',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedScanlators',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedScanlators',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedScanlators',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedScanlators',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      selectedScanlatorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedScanlators',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'server',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'server',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverEqualTo(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverGreaterThan(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverLessThan(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverBetween(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverStartsWith(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverEndsWith(
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

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'server',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'server',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'server',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      serverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'server',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      viewTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'viewType',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      viewTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'viewType',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      viewTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'viewType',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      viewTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'viewType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MediaSettingsQueryObject
    on QueryBuilder<MediaSettings, MediaSettings, QFilterCondition> {
  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      playerSettings(FilterQuery<PlayerSettings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'playerSettings');
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterFilterCondition>
      readerSettings(FilterQuery<ReaderSettings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'readerSettings');
    });
  }
}

extension MediaSettingsQueryLinks
    on QueryBuilder<MediaSettings, MediaSettings, QFilterCondition> {}

extension MediaSettingsQuerySortBy
    on QueryBuilder<MediaSettings, MediaSettings, QSortBy> {
  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByIsReverse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverse', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      sortByIsReverseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverse', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      sortByLastUsedSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedSource', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      sortByLastUsedSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedSource', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByNavBarIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'navBarIndex', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      sortByNavBarIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'navBarIndex', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> sortByViewType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewType', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      sortByViewTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewType', Sort.desc);
    });
  }
}

extension MediaSettingsQuerySortThenBy
    on QueryBuilder<MediaSettings, MediaSettings, QSortThenBy> {
  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByIsReverse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverse', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      thenByIsReverseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverse', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      thenByLastUsedSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedSource', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      thenByLastUsedSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedSource', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByNavBarIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'navBarIndex', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      thenByNavBarIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'navBarIndex', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'server', Sort.desc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy> thenByViewType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewType', Sort.asc);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QAfterSortBy>
      thenByViewTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'viewType', Sort.desc);
    });
  }
}

extension MediaSettingsQueryWhereDistinct
    on QueryBuilder<MediaSettings, MediaSettings, QDistinct> {
  QueryBuilder<MediaSettings, MediaSettings, QDistinct> distinctByIsReverse() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isReverse');
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QDistinct>
      distinctByLastUsedSource({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUsedSource',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QDistinct>
      distinctByNavBarIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'navBarIndex');
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QDistinct>
      distinctBySelectedScanlators() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedScanlators');
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QDistinct> distinctByServer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'server', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaSettings, MediaSettings, QDistinct> distinctByViewType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'viewType');
    });
  }
}

extension MediaSettingsQueryProperty
    on QueryBuilder<MediaSettings, MediaSettings, QQueryProperty> {
  QueryBuilder<MediaSettings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MediaSettings, bool, QQueryOperations> isReverseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isReverse');
    });
  }

  QueryBuilder<MediaSettings, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<MediaSettings, String?, QQueryOperations>
      lastUsedSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUsedSource');
    });
  }

  QueryBuilder<MediaSettings, int, QQueryOperations> navBarIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'navBarIndex');
    });
  }

  QueryBuilder<MediaSettings, PlayerSettings, QQueryOperations>
      playerSettingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playerSettings');
    });
  }

  QueryBuilder<MediaSettings, ReaderSettings, QQueryOperations>
      readerSettingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readerSettings');
    });
  }

  QueryBuilder<MediaSettings, List<String>?, QQueryOperations>
      selectedScanlatorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedScanlators');
    });
  }

  QueryBuilder<MediaSettings, String?, QQueryOperations> serverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'server');
    });
  }

  QueryBuilder<MediaSettings, int, QQueryOperations> viewTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'viewType');
    });
  }
}
