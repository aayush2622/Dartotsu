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
  properties: {},
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
) {}
ReaderSettings _readerSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReaderSettings();
  return object;
}

P _readerSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ReaderSettingsQueryFilter
    on QueryBuilder<ReaderSettings, ReaderSettings, QFilterCondition> {}

extension ReaderSettingsQueryObject
    on QueryBuilder<ReaderSettings, ReaderSettings, QFilterCondition> {}
