import 'package:flutter/widgets.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Review/ReviewsShelf.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../AnimePlanetService.dart';
import 'ListEditor.dart';
import '../Data/Parser.dart';

class AnimePlanetDetailView extends DetailScreenView {
  AnimePlanetDetailView(super.service);

  @override
  String get sourceName => 'Anime-Planet';

  @override
  ListEditorScreenView get listEditor => AnimePlanetListEditorView(service);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final full = await animePlanetQueries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final description = (m.description ?? '').trim().replaceAll('\n', '<br>');
    return [
      ScreenWidget.extra(DetailStats(host, items: _stats)),
      if (description.isNotEmpty)
        ScreenWidget.data(getString.synopsis, ScreenData(html: description)),
      ScreenWidget.data(getString.details, ScreenData(rows: _rows(m))),
      ...nameSections(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          getString.genres,
          ScreenData(
            chips: m.genres,
            chipLimit: 24,
            onChipTap: (tag) => host.filter(genre: tag),
          ),
        ),
      ScreenWidget.extra(
        ReviewsShelf(key: ValueKey('reviews-${m.id}'), media: m, view: this),
      ),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters(getString.characters, m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff(getString.staff, m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.relations, m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.recommendations, m.recommendations),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = animePlanetExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 20).toStringAsFixed(2)),
      if (extras?.votes != null)
        (getString.votes, DetailStats.compact(extras!.votes!)),
      if (extras?.rank != null) (getString.animePlanetRank, '#${extras!.rank}'),
    ];
  }

  List<(String, String)> _rows(Media m) {
    final extras = animePlanetExtras[m];
    final units = m.totalUnits?.toString();
    return [
      if (units != null)
        (m.isAnime ? getString.episodes : getString.chapters, units),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (extras?.studio != null) (getString.studio, extras!.studio!),
      if (extras?.publisher != null)
        (getString.animePlanetMagazine, extras!.publisher!),
      if (extras?.season != null) (getString.season, extras!.season!),
      if (m.startDate?.getFormattedDate() != null)
        (getString.aired, airedRange(m)),
    ];
  }
}
