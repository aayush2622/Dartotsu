import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Widgets/Components/ListEditorFields.dart';
import '../Data/Mapper.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class SimklListEditorView extends ListEditorScreenView {
  SimklListEditorView(super.service);

  SimklKind? _kind(Media media) => parseSimklMediaId(media.id)?.$1;

  @override
  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': getString.watching,
    'PLANNING': getString.planToWatch,
    'COMPLETED': getString.completed,
    'PAUSED': getString.onHold,
    'DROPPED': getString.dropped,
  };

  @override
  List<ScreenWidget> build(Media media, ListEditorDraft draft) {
    final kind = _kind(media);
    final movie = kind == SimklKind.movies;
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
      if (kind == SimklKind.anime || kind == SimklKind.tv)
        ScreenWidget.extra(
          ListProgressField(draft: draft, total: media.totalUnits),
        ),
      ScreenWidget.extra(ListScoreField(draft: draft)),
      if (media.userStatus != null)
        ScreenWidget.extra(
          ListInfoDatesField(
            added: media.userAddedAt,
            watched: media.userWatchedAt,
          ),
        ),
    ];
  }
}
