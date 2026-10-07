import '../Model/Date.dart';
import '../Model/Media.dart';
import '../../State/State.dart';

class ListEditorDraft {
  final status = ''.live;
  final progress = 0.live;
  final score = 0.live;
  final isPrivate = false.live;
  final hiddenFromStatusLists = false.live;
  final repeat = 0.live;
  final notes = ''.live;
  final startedAt = Live<Date?>(null);
  final completedAt = Live<Date?>(null);
  final customLists = <String, bool>{}.liveMap;

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
