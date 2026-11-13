import '../../../Logger.dart';
import '../Model/Media.dart';
import '../Model/MediaListEntry.dart';

Future<List<Media>> overlayEntries(
  List<Media> items,
  Future<Iterable<Media>> Function() library,
) async {
  if (items.isEmpty) return items;
  try {
    final mine = {for (final m in await library()) m.id: m};
    for (final m in items) {
      final entry = mine[m.id];
      if (entry != null) m.takeListEntry(entry);
    }
  } catch (e, st) {
    logError('Queries', e, st);
  }
  return items;
}
