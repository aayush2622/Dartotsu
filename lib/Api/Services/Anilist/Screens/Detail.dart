import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import '../Data/Media.dart';
import '../Data/User.dart';
import '../Widgets/DetailStats.dart';
import '../Widgets/FollowersShelf.dart';
import '../Widgets/StudioChip.dart';

class AnilistDetailView extends DetailScreenView {
  AnilistDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => AnilistListEditorView(service);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final full = await anilistAuth.queries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final description = (m.description ?? '').trim();
    return [
      ScreenWidget.extra(AnilistDetailStats(host)),
      if (description.isNotEmpty)
        ScreenWidget.data(
          'Synopsis',
          ScreenData(
            html: description.contains('<')
                ? description
                : description.replaceAll('\n', '<br>'),
          ),
        ),
      ..._info(m),
      if (m.anime?.studio != null)
        ScreenWidget.extra(
          StudioChip(service: service, studio: m.anime!.studio!),
        ),
      ..._names(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          'Genres',
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ..._tags(m, host),
      ..._followers(m),
      ..._sequels(m),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters('Characters', m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff('Staff', m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media('Relations', m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media('Recommendations', m.recommendations),
    ];
  }

  List<ScreenWidget> _info(Media m) {
    final anime = m.anime;
    final airing = anime?.nextAiringEpisode;
    final total = m.totalUnits?.toString() ?? '~';
    final count = airing != null && airing != -1 ? '$airing | $total' : total;
    final studio = anime?.studio?.name;
    final author = (anime?.author ?? m.manga?.author)?.name;
    final season = anime?.season;
    final rows = [
      (m.isAnime ? 'Episodes' : 'Chapters', count),
      if (m.format != null) ('Format', m.format!.titleCase),
      if (m.source != null) ('Source', m.source!.titleCase),
      if (studio?.isNotEmpty ?? false) ('Studio', studio!),
      if (author?.isNotEmpty ?? false) ('Author', author!),
      if (season != null && anime?.seasonYear != null)
        ('Season', '${season.titleCase} ${anime!.seasonYear}'),
      if (m.countryOfOrigin != null) ('Country', m.countryOfOrigin!),
      if (m.startDate?.getFormattedDate() != null) ('Aired', _aired(m)),
    ];
    return [ScreenWidget.data('Details', ScreenData(rows: rows))];
  }

  List<ScreenWidget> _names(Media m) {
    final rows = [
      if (m.nameRomaji?.isNotEmpty ?? false) ('Romaji', m.nameRomaji!),
      if (m.name?.isNotEmpty ?? false) ('English', m.name!),
    ];
    if (rows.isEmpty && m.synonyms.isEmpty) return const [];
    return [
      ScreenWidget.data('Names', ScreenData(rows: rows, columns: 1)),
      if (m.synonyms.isNotEmpty)
        ScreenWidget.data('Synonyms', ScreenData(chips: m.synonyms)),
    ];
  }

  List<ScreenWidget> _followers(Media m) {
    final users = m.users;
    if (users == null || users.isEmpty) return const [];
    return [
      ScreenWidget.extra(
        FollowersShelf(
          media: m,
          users: users,
          me: anilistAuth.user.value?.name,
          service: service,
        ),
      ),
    ];
  }

  List<ScreenWidget> _sequels(Media m) {
    final related = [
      if (m.prequel != null) m.prequel!,
      if (m.sequel != null) m.sequel!,
    ];
    return related.isEmpty
        ? const []
        : [ScreenWidget.media('Prequel & Sequel', related)];
  }

  String _aired(Media m) {
    final start = m.startDate?.getFormattedDate();
    final end = m.endDate?.getFormattedDate();
    if (start == null) return '';
    if (end == null || end == start) return start;
    return '$start  –  $end';
  }

  List<ScreenWidget> _tags(Media m, DetailHost host) {
    if (m.tags.isEmpty) return const [];
    double rank(String tag) =>
        double.tryParse(tag.split(' : ').last.replaceAll('%', '').trim()) ?? 0;
    final sorted = m.tags.toList()..sort((a, b) => rank(b).compareTo(rank(a)));
    return [
      ScreenWidget.data(
        'Tags',
        ScreenData(
          chips: [for (final t in sorted) t.replaceFirst(' : ', '  ')],
          onChipTap: (chip) => host.search(chip.split('  ').first),
        ),
      ),
    ];
  }
}

class AnilistListEditorView extends ListEditorScreenView {
  AnilistListEditorView(super.service);

  @override
  bool get advanced => true;

  @override
  Map<String, bool> customLists(Media media) {
    final user = anilistAuth.user.value;
    return {
      if (user is AnilistUser)
        for (final name
            in media.isAnime ? user.animeCustomLists : user.mangaCustomLists)
          name: false,
      if (media is AnilistMedia) ...media.inCustomListsOf,
    };
  }
}
