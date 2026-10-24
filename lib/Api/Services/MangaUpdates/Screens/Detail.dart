import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';
import 'ListEditor.dart';

class MangaUpdatesDetailView extends DetailScreenView {
  MangaUpdatesDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => MangaUpdatesListEditorView(service);

  @override
  String get sourceName => 'MangaUpdates';

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;

    final queries = mangaUpdatesAuth.queries;
    final base = host.media.value;

    final full = await queries.mediaDetails(base);
    if (full != null) {
      host.update(full);
      yield _build(host);
    }

    final media = host.media.value;
    final reviewsFuture = queries.reviews(media);
    final releasesFuture = queries.releases(media);

    final reviews = await reviewsFuture;
    if (reviews.isNotEmpty) {
      media.review = reviews;
      host.update(media);
      yield _build(host);
    }

    final releases = await releasesFuture;
    if (releases.isNotEmpty) {
      mangaUpdatesExtras[media]?.releases = releases;
      host.update(media);
      yield _build(host);
    }
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = mangaUpdatesExtras[m];
    final description = (m.description ?? '').trim().replaceAll('\n', '<br>');

    final releasesRows = <(String, String)>[
      for (final rel in (extras?.releases ?? const <MangaUpdatesRelease>[]).take(10))
        (
          rel.formattedNumber.isNotEmpty ? rel.formattedNumber : rel.title,
          [
            if (rel.groups.isNotEmpty) rel.groups.join(', '),
            if (rel.releaseDate != null) rel.releaseDate!,
          ].join('  ·  '),
        ),
    ];

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
          ScreenData(chips: m.tags.take(30).toList()),
        ),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.relations, m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.recommendations, m.recommendations),
      if (releasesRows.isNotEmpty)
        ScreenWidget.data(
          getString.releases,
          ScreenData(rows: releasesRows, columns: 1),
        ),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = mangaUpdatesExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(1)),
      if (extras?.ratingVotes != null)
        ('Votes', DetailStats.compact(extras!.ratingVotes!)),
      if (extras?.latestChapter != null)
        (getString.chapters, DetailStats.compact(extras!.latestChapter!)),
    ];
  }

  List<(String, String)> _rows(Media m, MangaUpdatesExtras? extras) {
    String join(List<String> items) => items.take(6).join(', ');
    return [
      if (extras?.latestChapter != null)
        (getString.chapters, extras!.latestChapter!.toString()),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (extras?.authors.isNotEmpty ?? false)
        (getString.authorsLabel, join(extras!.authors)),
      if (extras?.artists.isNotEmpty ?? false)
        (getString.artistsLabel, join(extras!.artists)),
      if (extras?.publishers.isNotEmpty ?? false)
        (getString.publishersLabel, join(extras!.publishers)),
      if (extras != null)
        (getString.licensedLabel, extras.licensed ? getString.yesLabel : getString.noLabel),
      if (extras?.animeStart != null && extras!.animeStart!.isNotEmpty)
        ('Anime Start', extras.animeStart!),
      if (extras?.animeEnd != null && extras!.animeEnd!.isNotEmpty)
        ('Anime End', extras.animeEnd!),
    ];
  }
}
