import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Widgets/Components/ListEditorFields.dart';

class MalListEditorView extends ListEditorScreenView {
  MalListEditorView(super.service);

  @override
  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': anime ? 'Watching' : 'Reading',
    'PLANNING': anime ? 'Plan to watch' : 'Plan to read',
    'COMPLETED': 'Completed',
    'PAUSED': 'On hold',
    'DROPPED': 'Dropped',
    'REPEATING': anime ? 'Rewatching' : 'Rereading',
  };

  @override
  List<ScreenWidget> build(Media media, ListEditorDraft draft) => [
    ScreenWidget.extra(
      ListStatusField(
        draft: draft,
        statuses: statuses(anime: media.isAnime),
      ),
    ),
    ScreenWidget.extra(
      ListProgressField(draft: draft, total: media.totalUnits),
    ),
    ScreenWidget.extra(ListScoreField(draft: draft)),
    ScreenWidget.extra(ListDatesField(draft: draft)),
    ScreenWidget.extra(
      ListRepeatField(
        draft: draft,
        label: media.isAnime ? 'Times rewatched' : 'Times reread',
      ),
    ),
    ScreenWidget.extra(ListNotesField(draft: draft, label: 'Comments')),
  ];
}
