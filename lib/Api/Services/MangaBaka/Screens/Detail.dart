import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Detail/Components/DetailRelated.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';
import 'ListEditor.dart';

class MangaBakaDetailView extends DetailScreenView {
  MangaBakaDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => MangaBakaListEditorView(service);

  @override
  String get sourceName => 'MangaBaka';

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final queries = mangaBakaAuth.queries;
    final base = host.media.value;
    final related = queries.related(base);
    final similar = queries.similar(base);
    final full = await queries.mediaDetails(base);
    if (full != null) {
      host.update(full);
      yield _build(host);
    }
    final media = host.media.value;
    media.relations = await related;
    host.update(media);
    yield _build(host);
    media.recommendations = await similar;
    host.update(media);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = mangaBakaExtras[m];
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
      if (m.tags.isNotEmpty)
        ScreenWidget.data(
          getString.tags,
          ScreenData(chips: m.tags.take(24).toList()),
        ),
      ...prequelSequelWidgets(host, m),
      ...linkChips(getString.links, extras?.links),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.relations, m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.recommendations, m.recommendations),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = mangaBakaExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(1)),
      if (extras?.popularityRank != null)
        (getString.rank, extras!.popularityRank?.toString() ?? ''),
      if (m.manga?.totalChapters != null)
        (getString.chapters, DetailStats.compact(m.manga!.totalChapters!)),
    ];
  }

  List<(String, String)> _rows(Media m, MangaBakaExtras? extras) {
    String join(List<String> items) => items.take(6).join(', ');
    return [
      (getString.chapters, m.manga?.totalChapters?.toString() ?? '~'),
      if (extras?.finalVolume != null)
        (getString.volumes, extras!.finalVolume!),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (extras?.authors.isNotEmpty ?? false)
        (getString.authorsLabel, join(extras!.authors)),
      if (extras?.artists.isNotEmpty ?? false)
        (getString.artistsLabel, join(extras!.artists)),
      if (extras?.publishers.isNotEmpty ?? false)
        (getString.publishersLabel, join(extras!.publishers)),
      if (m.countryOfOrigin != null) (getString.country, m.countryOfOrigin!),
      if (extras?.contentRating != null)
        (getString.contentRatingLabel, extras!.contentRating!.titleCase),
      if (extras != null)
        (
          getString.licensedLabel,
          extras.licensed ? getString.yesLabel : getString.noLabel,
        ),
      if (m.startDate?.getFormattedDate() != null)
        (getString.published, airedRange(m)),
    ];
  }
}
