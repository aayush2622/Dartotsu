import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';
import 'ListEditor.dart';

class ComickDetailView extends DetailScreenView {
  ComickDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => ComickListEditorView(service);

  @override
  String get sourceName => 'Comick';

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final queries = comickAuth.queries;
    final base = host.media.value;
    final full = await queries.mediaDetails(base);
    if (full != null) {
      host.update(full);
      yield _build(host);
    }
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = comickExtras[m];
    final description = (m.description ?? '').trim().replaceAll('\n', '<br>');
    return [
      ScreenWidget.extra(DetailStats(host, items: _stats)),
      if (description.isNotEmpty)
        ScreenWidget.data(getString.synopsis, ScreenData(html: description)),
      ScreenWidget.data(getString.details, ScreenData(rows: _rows(m, extras))),
      ...nameSections(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          getString.genres,
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ...linkChips(getString.links, extras?.links),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = comickExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(1)),
      if (extras?.bayesianRating != null)
        (getString.rating, extras!.bayesianRating!.toStringAsFixed(2)),
      if (m.manga?.totalChapters != null)
        (getString.chapters, DetailStats.compact(m.manga!.totalChapters!)),
      if (m.anime?.totalEpisodes != null)
        (getString.episodes, DetailStats.compact(m.anime!.totalEpisodes!)),
    ];
  }

  List<(String, String)> _rows(Media m, ComickExtras? extras) {
    String join(List<String> items) => items.take(6).join(', ');
    return [
      if (m.isAnime) ...[
        (getString.episodes, m.anime?.totalEpisodes?.toString() ?? '~'),
      ] else ...[
        (getString.chapters, m.manga?.totalChapters?.toString() ?? '~'),
      ],
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (extras?.authors.isNotEmpty ?? false)
        (getString.authorsLabel, join(extras!.authors)),
      if (extras?.artists.isNotEmpty ?? false)
        (getString.artistsLabel, join(extras!.artists)),
      if (m.countryOfOrigin != null) (getString.country, m.countryOfOrigin!),
      if (extras?.translationStatus != null)
        (getString.translationStatusLabel, extras!.translationStatus!.titleCase),
      if (m.startDate?.getFormattedDate() != null)
        (getString.published, airedRange(m)),
    ];
  }
}
