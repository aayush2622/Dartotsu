import 'package:dartotsu/DataClass/Media.dart';
import '../../Services/Api/Mutations.dart';
import 'MangaBaka.dart';
import 'MangaBakaModels.dart';

class MangaBakaMutations extends Mutations {
  final MangaBakaController controller;

  MangaBakaMutations(this.controller);

  @override
  Future<void> editList(
    Media media, {
    List<String>? customList,
  }) async {
    final seriesId = media.id;
    final state = media.userStatus != null
        ? MangaBakaLibraryState.fromAnilistStatus(media.userStatus)
        : MangaBakaLibraryState.reading;

    final score = media.userScore != null && media.userScore! > 0
        ? (media.userScore! / 10).round()
        : null;

    final body = <String, dynamic>{
      'state': state.value,
      if (score != null) 'rating': score,
      if (media.userProgress != null) 'progress_chapter': media.userProgress,
      if (media.notes != null) 'note': media.notes,
    };

    final existing = await controller.fetchLibraryEntry(seriesId);
    final create = existing == null;

    await controller.writeLibraryEntry(
      seriesId: seriesId,
      body: body,
      create: create,
    );
  }

  @override
  Future<void> deleteFromList(Media media) async {
    await controller.deleteLibraryEntry(media.id);
  }

  @override
  Future<void> setProgress(Media media, String episodeNumber) async {
    final progress = double.tryParse(episodeNumber) ??
        int.tryParse(episodeNumber)?.toDouble();
    if (progress == null) return;

    media.userProgress = progress.toInt();

    final seriesId = media.id;
    final existing = await controller.fetchLibraryEntry(seriesId);
    final create = existing == null;

    final body = <String, dynamic>{
      'progress_chapter': progress,
      if (create) 'state': MangaBakaLibraryState.reading.value,
    };

    await controller.writeLibraryEntry(
      seriesId: seriesId,
      body: body,
      create: create,
    );
  }
}
