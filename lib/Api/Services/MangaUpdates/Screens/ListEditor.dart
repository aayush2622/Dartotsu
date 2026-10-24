import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Widgets/Components/ListEditorFields.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class MangaUpdatesListEditorView extends ListEditorScreenView {
  MangaUpdatesListEditorView(super.service);

  @override
  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': getString.reading,
    'PLANNING': getString.planToRead,
    'COMPLETED': getString.completed,
    'PAUSED': getString.onHold,
    'DROPPED': getString.dropped,
  };

  @override
  List<ScreenWidget> build(Media media, ListEditorDraft draft) => [
    ScreenWidget.extra(
      ListStatusField(
        draft: draft,
        statuses: statuses(anime: false),
      ),
    ),
    ScreenWidget.extra(
      ListProgressField(draft: draft, total: media.totalUnits),
    ),
    ScreenWidget.extra(ListScoreField(draft: draft)),
  ];
}
