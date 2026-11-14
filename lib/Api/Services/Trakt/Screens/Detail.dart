import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/IntExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';
import 'ListEditor.dart';

class TraktDetailView extends DetailScreenView {
  TraktDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => TraktListEditorView(service);

  @override
  String get sourceName => 'Trakt';

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final full = await traktAuth.queries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);

    final media = host.media.value;
    final queries = traktAuth.queries;

    final characters = queries.characters(media);
    final staff = queries.staff(media);

    media.characters = await characters;
    host.update(media);
    yield _build(host);

    media.staff = await staff;
    host.update(media);
    yield _build(host);

    final recommendations = await queries.recommendations(media);
    if (recommendations.isNotEmpty) {
      media.recommendations = recommendations;
      host.update(media);
      yield _build(host);
    }

    final reviews = await queries.reviews(media);
    if (reviews.isNotEmpty) {
      media.review = reviews;
      host.update(media);
      yield _build(host);
    }
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = traktExtras[m];
    final description = (m.description ?? '').trim();

    return [
      ScreenWidget.extra(DetailStats(host, items: _stats)),
      if (description.isNotEmpty)
        ScreenWidget.data(getString.synopsis, ScreenData(html: description)),
      ScreenWidget.data(getString.details, ScreenData(rows: _rows(m, extras))),
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
      if (extras?.trailer != null && extras!.trailer!.isNotEmpty)
        ...linkChips(getString.trailers, [('Trailer', extras.trailer!)]),
      ...linkChips(getString.links, extras?.links),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters(getString.characters, m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff(getString.staff, m.staff),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.recommendations, m.recommendations),
      if ((m.review ?? const []).isNotEmpty)
        ScreenWidget.reviews(getString.reviews, m.review),
      ScreenWidget.extra(_Attribution(m.shareLink)),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = traktExtras[m];
    final votes = extras?.votes;
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(1)),
      if ((votes ?? 0) > 0) (getString.votes, DetailStats.compact(votes!)),
      if ((m.popularity ?? 0) > 0)
        (getString.watchedStat, DetailStats.compact(m.popularity!)),
      if (m.anime?.episodeDuration != null)
        (getString.runtime, m.anime!.episodeDuration!.durationLabel),
    ];
  }

  List<(String, String)> _rows(Media m, TraktExtras? extras) {
    final total = m.anime?.totalEpisodes;
    final studio = m.anime?.studio?.name;
    return [
      if (m.status != null) (getString.status, m.status!),
      if (m.format != null) (getString.format, m.format!),
      if (m.countryOfOrigin != null)
        (getString.countryOfOrigin, m.countryOfOrigin!),
      if (total != null && total > 0 && m.format != 'MOVIE')
        (getString.totalEpisodes, '$total'),
      if (studio != null) (getString.network, studio),
      if (extras?.certification != null)
        (getString.certification, extras!.certification!),
      if (extras?.airs != null) (getString.schedule, extras!.airs!),
      if (extras?.tagline != null && extras!.tagline!.isNotEmpty)
        (getString.tagline, extras.tagline!),
      if (m.startDate?.getFormattedDate() != null)
        (
          m.format == 'MOVIE' ? getString.released : getString.aired,
          airedRange(m),
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
                getString.traktAttribution,
                style: context.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
