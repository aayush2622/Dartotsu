// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DafaultReaderSettings.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ReaderSettingsSchema = Schema(
  name: r'ReaderSettings',
  id: -7089826136440672203,
  properties: {
    r'changePageWithVolumeButtons': PropertySchema(
      id: 0,
      name: r'changePageWithVolumeButtons',
      type: IsarType.bool,
    ),
    r'direction': PropertySchema(
      id: 1,
      name: r'direction',
      type: IsarType.byte,
      enumMap: _ReaderSettingsdirectionEnumValueMap,
    ),
    r'dualPageMode': PropertySchema(
      id: 2,
      name: r'dualPageMode',
      type: IsarType.byte,
      enumMap: _ReaderSettingsdualPageModeEnumValueMap,
    ),
    r'hidePageNumber': PropertySchema(
      id: 3,
      name: r'hidePageNumber',
      type: IsarType.bool,
    ),
    r'hideScrollbar': PropertySchema(
      id: 4,
      name: r'hideScrollbar',
      type: IsarType.bool,
    ),
    r'keepScreenOn': PropertySchema(
      id: 5,
      name: r'keepScreenOn',
      type: IsarType.bool,
    ),
    r'layoutType': PropertySchema(
      id: 6,
      name: r'layoutType',
      type: IsarType.byte,
      enumMap: _ReaderSettingslayoutTypeEnumValueMap,
    ),
    r'openImageWithLongTap': PropertySchema(
      id: 7,
      name: r'openImageWithLongTap',
      type: IsarType.bool,
    ),
    r'scrollToNext': PropertySchema(
      id: 8,
      name: r'scrollToNext',
      type: IsarType.bool,
    ),
    r'spacedPages': PropertySchema(
      id: 9,
      name: r'spacedPages',
      type: IsarType.bool,
    )
  },
  estimateSize: _readerSettingsEstimateSize,
  serialize: _readerSettingsSerialize,
  deserialize: _readerSettingsDeserialize,
  deserializeProp: _readerSettingsDeserializeProp,
);

int _readerSettingsEstimateSize(
  ReaderSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _readerSettingsSerialize(
  ReaderSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.changePageWithVolumeButtons);
  writer.writeByte(offsets[1], object.direction.index);
  writer.writeByte(offsets[2], object.dualPageMode.index);
  writer.writeBool(offsets[3], object.hidePageNumber);
  writer.writeBool(offsets[4], object.hideScrollbar);
  writer.writeBool(offsets[5], object.keepScreenOn);
  writer.writeByte(offsets[6], object.layoutType.index);
  writer.writeBool(offsets[7], object.openImageWithLongTap);
  writer.writeBool(offsets[8], object.scrollToNext);
  writer.writeBool(offsets[9], object.spacedPages);
}

ReaderSettings _readerSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReaderSettings(
    changePageWithVolumeButtons: reader.readBoolOrNull(offsets[0]) ?? false,
    direction: _ReaderSettingsdirectionValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        Direction.UTD,
    dualPageMode: _ReaderSettingsdualPageModeValueEnumMap[
            reader.readByteOrNull(offsets[2])] ??
        DualPageMode.Auto,
    hidePageNumber: reader.readBoolOrNull(offsets[3]) ?? false,
    hideScrollbar: reader.readBoolOrNull(offsets[4]) ?? false,
    keepScreenOn: reader.readBoolOrNull(offsets[5]) ?? false,
    layoutType: _ReaderSettingslayoutTypeValueEnumMap[
            reader.readByteOrNull(offsets[6])] ??
        LayoutType.Continuous,
    openImageWithLongTap: reader.readBoolOrNull(offsets[7]) ?? true,
    scrollToNext: reader.readBoolOrNull(offsets[8]) ?? true,
    spacedPages: reader.readBoolOrNull(offsets[9]) ?? false,
  );
  return object;
}

P _readerSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (_ReaderSettingsdirectionValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Direction.UTD) as P;
    case 2:
      return (_ReaderSettingsdualPageModeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          DualPageMode.Auto) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 5:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 6:
      return (_ReaderSettingslayoutTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          LayoutType.Continuous) as P;
    case 7:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 8:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 9:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ReaderSettingsdirectionEnumValueMap = {
  'UTD': 0,
  'DTU': 1,
  'RTL': 2,
  'LTR': 3,
};
const _ReaderSettingsdirectionValueEnumMap = {
  0: Direction.UTD,
  1: Direction.DTU,
  2: Direction.RTL,
  3: Direction.LTR,
};
const _ReaderSettingsdualPageModeEnumValueMap = {
  'Auto': 0,
  'Single': 1,
  'ForcedDouble': 2,
};
const _ReaderSettingsdualPageModeValueEnumMap = {
  0: DualPageMode.Auto,
  1: DualPageMode.Single,
  2: DualPageMode.ForcedDouble,
};
const _ReaderSettingslayoutTypeEnumValueMap = {
  'Continuous': 0,
  'Paged': 1,
};
const _ReaderSettingslayoutTypeValueEnumMap = {
  0: LayoutType.Continuous,
  1: LayoutType.Paged,
};

extension ReaderSettingsQueryFilter
    on QueryBuilder<ReaderSettings, ReaderSettings, QFilterCondition> {
  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      changePageWithVolumeButtonsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'changePageWithVolumeButtons',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      directionEqualTo(Direction value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'direction',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      directionGreaterThan(
    Direction value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'direction',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      directionLessThan(
    Direction value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'direction',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      directionBetween(
    Direction lower,
    Direction upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'direction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      dualPageModeEqualTo(DualPageMode value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dualPageMode',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      dualPageModeGreaterThan(
    DualPageMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dualPageMode',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      dualPageModeLessThan(
    DualPageMode value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dualPageMode',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      dualPageModeBetween(
    DualPageMode lower,
    DualPageMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dualPageMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      hidePageNumberEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidePageNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      hideScrollbarEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hideScrollbar',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      keepScreenOnEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keepScreenOn',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      layoutTypeEqualTo(LayoutType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'layoutType',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      layoutTypeGreaterThan(
    LayoutType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'layoutType',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      layoutTypeLessThan(
    LayoutType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'layoutType',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      layoutTypeBetween(
    LayoutType lower,
    LayoutType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'layoutType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      openImageWithLongTapEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openImageWithLongTap',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      scrollToNextEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrollToNext',
        value: value,
      ));
    });
  }

  QueryBuilder<ReaderSettings, ReaderSettings, QAfterFilterCondition>
      spacedPagesEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spacedPages',
        value: value,
      ));
    });
  }
}

extension ReaderSettingsQueryObject
    on QueryBuilder<ReaderSettings, ReaderSettings, QFilterCondition> {}
