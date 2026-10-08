import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';

class MalMutations extends Mutations {
  final MalClient client;
  final void Function() onChanged;

  MalMutations(this.client, {required this.onChanged});

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString('Incognito: list edits are blocked');
      return;
    }
    final ref = parseMalMediaId(media.id);
    if (ref == null) return;
    final (anime, id) = ref;
    final repeating = media.userStatus == 'REPEATING';
    final form = <String, String>{
      if (malStatusOut(media.userStatus, anime: anime) != null)
        'status': malStatusOut(media.userStatus, anime: anime)!,
      'score': '${((media.userScore ?? 0) / 10).round().clamp(0, 10)}',
      if (media.userProgress != null)
        anime ? 'num_watched_episodes' : 'num_chapters_read':
            '${media.userProgress}',
      anime ? 'is_rewatching' : 'is_rereading': '$repeating',
      anime ? 'num_times_rewatched' : 'num_times_reread': '${media.userRepeat}',
      if (media.notes != null) 'comments': media.notes!,
      if (malDateOut(media.userStartedAt) != null)
        'start_date': malDateOut(media.userStartedAt)!,
      if (malDateOut(media.userCompletedAt) != null)
        'finish_date': malDateOut(media.userCompletedAt)!,
    };
    try {
      await client.put(
        '/${anime ? 'anime' : 'manga'}/$id/my_list_status',
        form,
      );
      _done();
    } on MalException catch (e) {
      snackString('MyAnimeList: ${e.message}');
    }
  }

  @override
  Future<void> deleteFromList(Media media) async {
    final ref = parseMalMediaId(media.id);
    if (ref == null) return;
    try {
      await client.delete(
        '/${ref.$1 ? 'anime' : 'manga'}/${ref.$2}/my_list_status',
      );
      _done();
    } on MalException catch (e) {
      snackString('MyAnimeList: ${e.message}');
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final ref = parseMalMediaId(media.id);
    if (ref == null) return;
    final (anime, id) = ref;
    final total = media.totalUnits;
    final done = total != null && total > 0 && progress >= total;
    final form = <String, String>{
      anime ? 'num_watched_episodes' : 'num_chapters_read': '$progress',
      'status': done
          ? 'completed'
          : media.userStatus == 'PLANNING' || media.userStatus == null
          ? (anime ? 'watching' : 'reading')
          : malStatusOut(media.userStatus, anime: anime) ??
                (anime ? 'watching' : 'reading'),
    };
    try {
      await client.put(
        '/${anime ? 'anime' : 'manga'}/$id/my_list_status',
        form,
      );
      _done();
    } on MalException catch (e) {
      snackString('MyAnimeList: ${e.message}');
    }
  }

  void _done() {
    onChanged();
    tryFind<RefreshController>()?.all();
  }
}
