import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Widgets/Components/ListEditorFields.dart';
import '../Data/Mapper.dart';

class TraktListEditorView extends ListEditorScreenView {
  TraktListEditorView(super.service);

  TraktKind? _kind(Media media) => parseTraktMediaId(media.id)?.$1;

  @override
  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': getString.watching,
    'PLANNING': getString.planToWatch,
    'COMPLETED': getString.completed,
  };

  @override
  List<ScreenWidget> build(Media media, ListEditorDraft draft) {
    final kind = _kind(media);
    final movie = kind == TraktKind.movies;
    return [
      ScreenWidget.extra(
        ListStatusField(
          draft: draft,
          statuses: movie
              ? {
                  'PLANNING': getString.planToWatch,
                  'COMPLETED': getString.watchedStatus,
                }
              : statuses(anime: media.isAnime),
        ),
      ),
      if (kind == TraktKind.shows)
        ScreenWidget.extra(
          ListProgressField(draft: draft, total: media.totalUnits),
        ),
      ScreenWidget.extra(ListScoreField(draft: draft)),
    ];
  }
}
