import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Widgets/Components/ListEditorFields.dart';
import '../Data/Mapper.dart';

class SimklListEditorView extends ListEditorScreenView {
  SimklListEditorView(super.service);

  SimklKind? _kind(Media media) => parseSimklMediaId(media.id)?.$1;

  @override
  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': 'Watching',
    'PLANNING': 'Plan to watch',
    'COMPLETED': 'Completed',
    'PAUSED': 'On hold',
    'DROPPED': 'Dropped',
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
              ? const {'PLANNING': 'Plan to watch', 'COMPLETED': 'Watched'}
              : statuses(anime: media.isAnime),
        ),
      ),
      if (kind == SimklKind.anime)
        ScreenWidget.extra(
          ListProgressField(draft: draft, total: media.totalUnits),
        ),
      ScreenWidget.extra(ListScoreField(draft: draft)),
    ];
  }
}
