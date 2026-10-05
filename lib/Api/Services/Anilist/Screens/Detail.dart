import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Screen/Detail/Components/DetailHero.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../AnilistAuth.dart';
import '../Widgets/DetailStats.dart';

class AnilistDetailView extends DetailScreenView {
  AnilistDetailView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    final full = await anilistAuth.queries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final description = (m.description ?? '').trim();
    return [
      ScreenWidget.extra(DetailHero(host)),
      ScreenWidget.extra(AnilistDetailStats(host)),
      if (description.isNotEmpty)
        ScreenWidget.data('Synopsis', ScreenData(text: description.stripHtml)),
      if (m.genres.isNotEmpty)
        ScreenWidget.data('Genres', ScreenData(chips: m.genres)),
      ..._info(m),
      ..._tags(m),
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
    final studio = m.anime?.studio?.name;
    final rows = [
      if (studio?.isNotEmpty ?? false) ('Studio', studio!),
      if (m.source != null) ('Source', m.source!.titleCase),
      if (m.countryOfOrigin != null) ('Country', m.countryOfOrigin!),
      if (m.startDate?.getFormattedDate() != null) ('Aired', _aired(m)),
      if (m.format != null) ('Format', m.format!.titleCase),
    ];
    return rows.isEmpty
        ? const []
        : [ScreenWidget.data('Details', ScreenData(rows: rows))];
  }

  String _aired(Media m) {
    final start = m.startDate?.getFormattedDate();
    final end = m.endDate?.getFormattedDate();
    if (start == null) return '';
    if (end == null || end == start) return start;
    return '$start  –  $end';
  }

  List<ScreenWidget> _tags(Media m) {
    if (m.tags.isEmpty) return const [];
    double rank(String tag) =>
        double.tryParse(tag.split(' : ').last.replaceAll('%', '').trim()) ?? 0;
    final sorted = m.tags.toList()..sort((a, b) => rank(b).compareTo(rank(a)));
    return [
      ScreenWidget.data(
        'Tags',
        ScreenData(
          chips: [for (final t in sorted) t.replaceFirst(' : ', '  ')],
        ),
      ),
    ];
  }
}
