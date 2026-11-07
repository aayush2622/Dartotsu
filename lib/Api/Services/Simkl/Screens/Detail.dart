import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Screen/Detail/Components/DetailRelated.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
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
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

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
        ScreenWidget.data(getString.synopsis, ScreenData(html: description)),
      ScreenWidget.data(getString.details, ScreenData(rows: _rows(m, extras))),
      ..._ratings(extras),
      ...nameSections(
        m,
        originalLabel: getString.originalTitle,
        translatedLabel: getString.titleLabel,
        minRows: 2,
      ),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          getString.genres,
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ...prequelSequelWidgets(host, m),
      ...linkChips(getString.trailers, extras?.trailers),
      ...linkChips(getString.links, extras?.links),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters(getString.characters, m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff(getString.staff, m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.relations, m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.recommendations, m.recommendations),
      ScreenWidget.extra(_Attribution(m.shareLink)),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = simklExtras[m];
    final votes = extras?.ratings.firstOrNull?.$3;
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(1)),
      if (extras?.rank != null) (getString.rank, '#${extras!.rank}'),
      if ((votes ?? 0) > 0) (getString.votes, DetailStats.compact(votes!)),
      if ((m.popularity ?? 0) > 0)
        (getString.watchedStat, DetailStats.compact(m.popularity!)),
      if (m.anime?.episodeDuration != null)
        (getString.runtime, m.anime!.episodeDuration!.durationLabel),
    ];
  }

  List<(String, String)> _rows(Media m, SimklExtras? extras) {
    final total = m.anime?.totalEpisodes;
    final studio = m.anime?.studio?.name;
    final season = m.anime?.season;
    return [
      if (total != null) (getString.episodes, '$total'),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (extras?.director?.isNotEmpty ?? false)
        (getString.director, extras!.director!),
      if (studio?.isNotEmpty ?? false) (getString.studio, studio!),
      if (extras?.network?.isNotEmpty ?? false)
        (getString.network, extras!.network!),
      if (extras?.certification?.isNotEmpty ?? false)
        (getString.certification, extras!.certification!),
      if (extras?.airs?.isNotEmpty ?? false) (getString.airs, extras!.airs!),
      if (season != null && m.anime?.seasonYear != null)
        (getString.season, '${season.titleCase} ${m.anime!.seasonYear}'),
      if (m.countryOfOrigin != null) (getString.country, m.countryOfOrigin!),
      if (extras?.language?.isNotEmpty ?? false)
        (getString.language, extras!.language!.titleCase),
      if ((extras?.budget ?? 0) > 0)
        (getString.budget, _money(extras!.budget!)),
      if ((extras?.revenue ?? 0) > 0)
        (getString.revenue, _money(extras!.revenue!)),
      if (extras?.dropRate != null) (getString.dropRate, extras!.dropRate!),
      if (m.startDate?.getFormattedDate() != null)
        (
          m.format == 'MOVIE' ? getString.released : getString.aired,
          airedRange(m),
        ),
    ];
  }

  String _money(int v) => '\$${DetailStats.compact(v)}';

  List<ScreenWidget> _ratings(SimklExtras? extras) {
    final ratings = extras?.ratings ?? const [];
    if (ratings.isEmpty) return const [];
    return [
      ScreenWidget.data(
        getString.ratings,
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
                getString.simklAttribution,
                style: context.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
