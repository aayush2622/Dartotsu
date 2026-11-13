import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import '../../../Core/Services/Api/Progress.dart';

class KitsuMutations extends Mutations {
  final KitsuClient client;
  final int? Function() userId;
  final void Function() onChanged;

  KitsuMutations(this.client, {required this.userId, required this.onChanged});

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    try {
      await saveEntry(media);
      _done();
    } on KitsuException catch (e) {
      snackString(getString.serviceError(getString.kitsu, e.message));
    }
  }

  @override
  Future<void> saveEntry(Media media, {bool? exists}) async {
    final score = ((media.userScore ?? 0) / 5).round().clamp(0, 20);
    final attributes = <String, dynamic>{
      if (kitsuStatusOut(media.userStatus) != null)
        'status': kitsuStatusOut(media.userStatus),
      'ratingTwenty': score < 2 ? null : score,
      if (media.userProgress != null) 'progress': media.userProgress,
      'reconsuming': media.userStatus == 'REPEATING',
      'reconsumeCount': media.userRepeat,
      'notes': media.notes ?? '',
      'startedAt': kitsuDateOut(media.userStartedAt),
      'finishedAt': kitsuDateOut(media.userCompletedAt),
      if (media.isListPrivate) 'private': true,
    };
    if (exists == true) {
      attributes.removeWhere((k, v) => v == null || v == '');
      if (media.userRepeat == 0) attributes.remove('reconsumeCount');
    }
    await _write(media, attributes, exists: exists);
  }

  @override
  Future<void> deleteFromList(Media media) async {
    final ref = parseKitsuMediaId(media.id);
    if (ref == null) return;
    try {
      final entry = await _entryId(media, ref);
      if (entry != null) await client.delete('/library-entries/$entry');
      clearListEntry(media);
      _done();
    } on KitsuException catch (e) {
      snackString(getString.serviceError(getString.kitsu, e.message));
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final done = reachesEnd(media, progress);
    await _save(media, {
      'progress': progress,
      'status': done
          ? 'completed'
          : kitsuStatusOut(media.userStatus) == null ||
                media.userStatus == 'PLANNING'
          ? 'current'
          : kitsuStatusOut(media.userStatus),
    });
  }

  @override
  bool canFavourite(Media media) => parseKitsuMediaId(media.id) != null;

  Future<int?> _favouriteId(Media media) async {
    final ref = parseKitsuMediaId(media.id);
    final user = userId();
    if (ref == null || user == null) return null;
    final res = await client.get(
      '/favorites',
      query: {
        'filter[userId]': '$user',
        'filter[itemId]': '${ref.$2}',
        'filter[itemType]': ref.$1 ? 'Anime' : 'Manga',
        'page[limit]': '1',
      },
    );
    final data = (res['data'] as List?) ?? const [];
    return data.isEmpty ? null : int.tryParse('${(data.first as Map)['id']}');
  }

  @override
  Future<bool> isFavourite(Media media) async {
    try {
      return await _favouriteId(media) != null;
    } on KitsuException {
      return media.isFav;
    }
  }

  @override
  Future<bool?> toggleFavourite(Media media) async {
    final ref = parseKitsuMediaId(media.id);
    final user = userId();
    if (ref == null || user == null) return null;
    try {
      final existing = await _favouriteId(media);
      if (existing != null) {
        await client.delete('/favorites/$existing');
        return false;
      }
      await client.post('/favorites', {
        'data': {
          'type': 'favorites',
          'relationships': {
            'user': {
              'data': {'type': 'users', 'id': '$user'},
            },
            'item': {
              'data': {'type': ref.$1 ? 'anime' : 'manga', 'id': '${ref.$2}'},
            },
          },
        },
      });
      return true;
    } on KitsuException catch (e) {
      snackString(getString.serviceError(getString.kitsu, e.message));
      return null;
    }
  }

  Future<int?> _entryId(Media media, (bool, int) ref) async {
    if (media.userListId != null) return media.userListId;
    final user = userId();
    if (user == null) return null;
    final kind = ref.$1 ? 'anime' : 'manga';
    final res = await client.get(
      '/library-entries',
      query: {
        'filter[userId]': '$user',
        'filter[${kind}Id]': '${ref.$2}',
        'fields[libraryEntries]': 'status',
        'page[limit]': '1',
      },
    );
    final data = (res['data'] as List?) ?? const [];
    return data.isEmpty ? null : int.tryParse('${(data.first as Map)['id']}');
  }

  Future<void> _save(Media media, Map<String, dynamic> attributes) async {
    try {
      await _write(media, attributes);
      _done();
    } on KitsuException catch (e) {
      snackString(getString.serviceError(getString.kitsu, e.message));
    }
  }

  Future<void> _write(
    Media media,
    Map<String, dynamic> attributes, {
    bool? exists,
  }) async {
    final ref = parseKitsuMediaId(media.id);
    final user = userId();
    if (ref == null || user == null) return;
    final kind = ref.$1 ? 'anime' : 'manga';
    final entry = exists == false ? null : await _entryId(media, ref);
    if (entry == null) {
      try {
        await _create(user, kind, ref.$2, attributes);
        return;
      } on KitsuException catch (e) {
        if (e.status != 422 || exists != false) rethrow;
      }
      final existing = await _entryId(media, ref);
      if (existing == null) return;
      await client.patch('/library-entries/$existing', {
        'data': {
          'type': 'libraryEntries',
          'id': '$existing',
          'attributes': attributes,
        },
      });
    } else {
      await client.patch('/library-entries/$entry', {
        'data': {
          'type': 'libraryEntries',
          'id': '$entry',
          'attributes': attributes,
        },
      });
    }
  }

  Future<void> _create(
    int user,
    String kind,
    int id,
    Map<String, dynamic> attributes,
  ) => client.post('/library-entries', {
    'data': {
      'type': 'libraryEntries',
      'attributes': {'status': 'current', ...attributes},
      'relationships': {
        'user': {
          'data': {'type': 'users', 'id': '$user'},
        },
        'media': {
          'data': {'type': kind, 'id': '$id'},
        },
      },
    },
  });

  void _done() {
    onChanged();
    findBuilt<RefreshController>()?.all();
  }
}
