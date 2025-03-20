// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DefaultPlayerSettings.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PlayerSettingsSchema = Schema(
  name: r'PlayerSettings',
  id: 5441166910175932327,
  properties: {
    r'resizeMode': PropertySchema(
      id: 0,
      name: r'resizeMode',
      type: IsarType.long,
    ),
    r'showSubtitle': PropertySchema(
      id: 1,
      name: r'showSubtitle',
      type: IsarType.bool,
    ),
    r'skipDuration': PropertySchema(
      id: 2,
      name: r'skipDuration',
      type: IsarType.long,
    ),
    r'speed': PropertySchema(
      id: 3,
      name: r'speed',
      type: IsarType.string,
    ),
    r'subtitleBackgroundColor': PropertySchema(
      id: 4,
      name: r'subtitleBackgroundColor',
      type: IsarType.long,
    ),
    r'subtitleBottomPadding': PropertySchema(
      id: 5,
      name: r'subtitleBottomPadding',
      type: IsarType.long,
    ),
    r'subtitleColor': PropertySchema(
      id: 6,
      name: r'subtitleColor',
      type: IsarType.long,
    ),
    r'subtitleFont': PropertySchema(
      id: 7,
      name: r'subtitleFont',
      type: IsarType.string,
    ),
    r'subtitleLanguage': PropertySchema(
      id: 8,
      name: r'subtitleLanguage',
      type: IsarType.string,
    ),
    r'subtitleOutlineColor': PropertySchema(
      id: 9,
      name: r'subtitleOutlineColor',
      type: IsarType.long,
    ),
    r'subtitleSize': PropertySchema(
      id: 10,
      name: r'subtitleSize',
      type: IsarType.long,
    ),
    r'subtitleWeight': PropertySchema(
      id: 11,
      name: r'subtitleWeight',
      type: IsarType.long,
    )
  },
  estimateSize: _playerSettingsEstimateSize,
  serialize: _playerSettingsSerialize,
  deserialize: _playerSettingsDeserialize,
  deserializeProp: _playerSettingsDeserializeProp,
);

int _playerSettingsEstimateSize(
  PlayerSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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
  writer.writeLong(offsets[0], object.resizeMode);
  writer.writeBool(offsets[1], object.showSubtitle);
  writer.writeLong(offsets[2], object.skipDuration);
  writer.writeString(offsets[3], object.speed);
  writer.writeLong(offsets[4], object.subtitleBackgroundColor);
  writer.writeLong(offsets[5], object.subtitleBottomPadding);
  writer.writeLong(offsets[6], object.subtitleColor);
  writer.writeString(offsets[7], object.subtitleFont);
  writer.writeString(offsets[8], object.subtitleLanguage);
  writer.writeLong(offsets[9], object.subtitleOutlineColor);
  writer.writeLong(offsets[10], object.subtitleSize);
  writer.writeLong(offsets[11], object.subtitleWeight);
}

PlayerSettings _playerSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerSettings(
    resizeMode: reader.readLongOrNull(offsets[0]) ?? 0,
    showSubtitle: reader.readBoolOrNull(offsets[1]) ?? true,
    skipDuration: reader.readLongOrNull(offsets[2]) ?? 85,
    speed: reader.readStringOrNull(offsets[3]) ?? '1x',
    subtitleBackgroundColor: reader.readLongOrNull(offsets[4]) ?? 0x00000000,
    subtitleBottomPadding: reader.readLongOrNull(offsets[5]) ?? 0,
    subtitleColor: reader.readLongOrNull(offsets[6]) ?? 0xFFFFFFFF,
    subtitleFont: reader.readStringOrNull(offsets[7]) ?? 'Poppins',
    subtitleLanguage: reader.readStringOrNull(offsets[8]) ?? 'en',
    subtitleOutlineColor: reader.readLongOrNull(offsets[9]) ?? 0x00000000,
    subtitleSize: reader.readLongOrNull(offsets[10]) ?? 32,
    subtitleWeight: reader.readLongOrNull(offsets[11]) ?? 5,
  );
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
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 85) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '1x') as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0x00000000) as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0xFFFFFFFF) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? 'Poppins') as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? 'en') as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 0x00000000) as P;
    case 10:
      return (reader.readLongOrNull(offset) ?? 32) as P;
    case 11:
      return (reader.readLongOrNull(offset) ?? 5) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PlayerSettingsQueryFilter
    on QueryBuilder<PlayerSettings, PlayerSettings, QFilterCondition> {
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
