import 'package:flutter/material.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/IntExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../../../../Utils/Function.dart';
import '../Auth.dart';
import 'ListEditor.dart';
import '../Data/Mapper.dart';

class SimklDetailView extends DetailScreenView {
  SimklDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => SimklListEditorView(service);

  @override
  String get sourceName => 'Simkl';

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final full = await simklAuth.queries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);
    final media = host.media.value;
    final queries = simklAuth.queries;
    final characters = queries.characters(media);
    final staff = queries.staff(media);
    await queries.enrich(media);
    host.update(media);
    yield _build(host);
    media.characters = await characters;
    host.update(media);
    yield _build(host);
    media.staff = await staff;
    host.update(media);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = simklExtras[m];
    final description = (m.description ?? '').trim();
    return [
      ScreenWidget.extra(DetailStats(host, items: _stats)),
      if (description.isNotEmpty)
        ScreenWidget.data('Synopsis', ScreenData(html: description)),
      ScreenWidget.data('Details', ScreenData(rows: _rows(m, extras))),
      ..._ratings(extras),
      ..._names(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          'Genres',
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ..._episodes(extras),
      ..._linkChips('Trailers', extras?.trailers),
      ..._linkChips('Links', extras?.links),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters('Characters', m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff('Staff', m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media('Relations', m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media('Recommendations', m.recommendations),
      ScreenWidget.extra(_Attribution(m.shareLink)),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = simklExtras[m];
    final votes = extras?.ratings.firstOrNull?.$3;
    return [
      if ((m.meanScore ?? 0) > 0)
        ('Score', (m.meanScore! / 10).toStringAsFixed(1)),
      if (extras?.rank != null) ('Rank', '#${extras!.rank}'),
      if ((votes ?? 0) > 0) ('Votes', DetailStats.compact(votes!)),
      if ((m.popularity ?? 0) > 0)
        ('Watched', DetailStats.compact(m.popularity!)),
      if (m.anime?.episodeDuration != null)
        ('Runtime', m.anime!.episodeDuration!.durationLabel),
    ];
  }

  List<(String, String)> _rows(Media m, SimklExtras? extras) {
    final total = m.anime?.totalEpisodes;
    final studio = m.anime?.studio?.name;
    final season = m.anime?.season;
    return [
      if (total != null) ('Episodes', '$total'),
      if (m.format != null) ('Format', m.format!.titleCase),
      if (m.status != null) ('Status', m.status!.titleCase),
      if (extras?.director?.isNotEmpty ?? false)
        ('Director', extras!.director!),
      if (studio?.isNotEmpty ?? false) ('Studio', studio!),
      if (extras?.network?.isNotEmpty ?? false) ('Network', extras!.network!),
      if (extras?.certification?.isNotEmpty ?? false)
        ('Certification', extras!.certification!),
      if (extras?.airs?.isNotEmpty ?? false) ('Airs', extras!.airs!),
      if (season != null && m.anime?.seasonYear != null)
        ('Season', '${season.titleCase} ${m.anime!.seasonYear}'),
      if (m.countryOfOrigin != null) ('Country', m.countryOfOrigin!),
      if (extras?.language?.isNotEmpty ?? false)
        ('Language', extras!.language!.titleCase),
      if ((extras?.budget ?? 0) > 0) ('Budget', _money(extras!.budget!)),
      if ((extras?.revenue ?? 0) > 0) ('Revenue', _money(extras!.revenue!)),
      if (extras?.dropRate != null) ('Drop rate', extras!.dropRate!),
      if (m.startDate?.getFormattedDate() != null)
        (m.format == 'MOVIE' ? 'Released' : 'Aired', _aired(m)),
    ];
  }

  String _money(int v) => '\$${DetailStats.compact(v)}';

  List<ScreenWidget> _episodes(SimklExtras? extras) {
    final episodes = extras?.episodes ?? const [];
    if (episodes.isEmpty) return const [];
    return [
      ScreenWidget.data(
        'Latest episodes',
        ScreenData(
          rows: [
            for (final (label, title, date) in episodes)
              (label, date == null ? title : '$title  ·  $date'),
          ],
          columns: 1,
        ),
      ),
    ];
  }

  String _aired(Media m) {
    final start = m.startDate?.getFormattedDate();
    final end = m.endDate?.getFormattedDate();
    if (start == null) return '';
    if (end == null || end == start) return start;
    return '$start  –  $end';
  }

  List<ScreenWidget> _ratings(SimklExtras? extras) {
    final ratings = extras?.ratings ?? const [];
    if (ratings.isEmpty) return const [];
    return [
      ScreenWidget.data(
        'Ratings',
        ScreenData(
          rows: [
            for (final (name, rating, votes) in ratings)
              (
                name,
                votes > 0
                    ? '${rating.toStringAsFixed(1)}  ·  ${DetailStats.compact(votes)} votes'
                    : rating.toStringAsFixed(1),
              ),
          ],
          columns: 1,
        ),
      ),
    ];
  }

  List<ScreenWidget> _names(Media m) {
    final rows = [
      if ((m.name?.isNotEmpty ?? false)) ('Title', m.name!),
      if ((m.nameRomaji?.isNotEmpty ?? false) && m.nameRomaji != m.name)
        ('Original', m.nameRomaji!),
    ];
    return [
      if (rows.length > 1)
        ScreenWidget.data('Names', ScreenData(rows: rows, columns: 1)),
      if (m.synonyms.isNotEmpty)
        ScreenWidget.data('Synonyms', ScreenData(chips: m.synonyms)),
    ];
  }

  List<ScreenWidget> _linkChips(String title, List<(String, String)>? links) {
    if (links == null || links.isEmpty) return const [];
    final byName = {for (final (name, url) in links) name: url};
    return [
      ScreenWidget.data(
        title,
        ScreenData(
          chips: byName.keys.toList(),
          onChipTap: (name) => openLinkInBrowser(byName[name]!),
        ),
      ),
    ];
  }
}

class _Attribution extends StatelessWidget {
  final String link;

  const _Attribution(this.link);

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
    child: SectionCard(
      child: InkWell(
        onTap: () => openLinkInBrowser(link),
        child: Row(
          children: [
            Icon(
              Icons.open_in_new_rounded,
              size: 20,
              color: context.colorScheme.primary,
            ),
            SizedBox(width: Dimens.gap),
            Expanded(
              child: Text(
                'Data and artwork provided by Simkl. View on Simkl',
                style: context.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
