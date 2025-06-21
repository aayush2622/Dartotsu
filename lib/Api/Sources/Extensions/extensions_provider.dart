import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../main.dart';
import '../Eval/dart/model/m_source.dart';
import '../Model/Source.dart';

part 'extensions_provider.g.dart';

@riverpod
Stream<List<Source>> getExtensionsStream(
    GetExtensionsStreamRef ref, ItemType itemType) async* {
  yield* isar.sources
      .filter()
      .idIsNotNull()
      .and()
      .isActiveEqualTo(true)
      .itemTypeEqualTo(itemType)
      .watch(fireImmediately: true);
}
