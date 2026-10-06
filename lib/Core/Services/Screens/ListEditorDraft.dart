import 'package:get/get.dart' hide ContextExtensionss;

import '../Model/Date.dart';
import '../Model/Media.dart';

class ListEditorDraft {
  final status = ''.obs;
  final progress = 0.obs;
  final score = 0.obs;
  final isPrivate = false.obs;
  final hiddenFromStatusLists = false.obs;
  final repeat = 0.obs;
  final notes = ''.obs;
  final startedAt = Rxn<Date>();
  final completedAt = Rxn<Date>();
  final customLists = <String, bool>{}.obs;

  ListEditorDraft(Media media, {Map<String, bool> customLists = const {}}) {
    status.value = media.userStatus ?? 'PLANNING';
    progress.value = media.userProgress ?? 0;
    score.value = media.userScore ?? 0;
    isPrivate.value = media.isListPrivate;
    hiddenFromStatusLists.value = media.hiddenFromStatusLists ?? false;
    repeat.value = media.userRepeat;
    notes.value = media.notes ?? '';
    startedAt.value = media.userStartedAt;
    completedAt.value = media.userCompletedAt;
    this.customLists.addAll(customLists);
  }

  List<String> get selectedCustomLists => [
    for (final e in customLists.entries)
      if (e.value) e.key,
  ];

  void applyTo(Media media) {
    media
      ..userStatus = status.value
      ..userProgress = progress.value
      ..userScore = score.value
      ..isListPrivate = isPrivate.value
      ..hiddenFromStatusLists = hiddenFromStatusLists.value
      ..userRepeat = repeat.value
      ..notes = notes.value
      ..userStartedAt = startedAt.value
      ..userCompletedAt = completedAt.value;
  }
}
