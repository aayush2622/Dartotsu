import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Sections/Media/MediaSection.dart';
import '../../Widgets/Sections/PeopleRail.dart';
import 'ListEditorSheet.dart';

class DetailScreen extends StatefulWidget {
  final Media media;
  final Queries queries;
  final Mutations? mutations;

  const DetailScreen({
    super.key,
    required this.media,
    required this.queries,
    this.mutations,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends BaseScreen<DetailScreen> {
  late final _media = widget.media.obs;
  final _loading = true.obs;
  final _tagsExpanded = false.obs;

  bool get _isAnime => _media.value.anime != null;

  @override
  String? get glassBackgroundUrl =>
      _media.value.banner ?? _media.value.cover ?? super.glassBackgroundUrl;

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  Future<void> _fetch() async {
    _loading.value = true;
    try {
      final full = await widget.queries.mediaDetails(_media.value);
      if (full != null) _media.value = full;
    } catch (_) {
      // keep the partial media we were opened with
    } finally {
      _loading.value = false;
    }
  }

  void _open(BuildContext context, Media media) => navigateToPage(
    context,
    DetailScreen(
      media: media,
      queries: widget.queries,
      mutations: widget.mutations,
    ),
  );

  EdgeInsets get _sectionMargin =>
      EdgeInsets.symmetric(horizontal: Dimens.gap, vertical: Dimens.gapSm / 2);

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: _fab(context),
      body: Obx(() {
        final m = _media.value;
        return RefreshIndicator(
          onRefresh: _fetch,
          child: CustomScrollConfig(
            context,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              _appBar(m),
              SliverToBoxAdapter(child: _header(m)),
              if (_statItems(m).isNotEmpty)
                SliverToBoxAdapter(child: _statStrip(m)),
              if (_airingIn(m) case final airing?)
                SliverToBoxAdapter(child: _airingCard(m, airing)),
              if ((m.description ?? '').trim().isNotEmpty)
                SliverToBoxAdapter(child: _synopsis(m)),
              if (m.genres.isNotEmpty) SliverToBoxAdapter(child: _genres(m)),
              if (_infoRows(m).isNotEmpty)
                SliverToBoxAdapter(child: _infoCard(m)),
              if (m.tags.isNotEmpty) SliverToBoxAdapter(child: _tags(m)),
              if ((m.characters ?? const []).isNotEmpty)
                SliverToBoxAdapter(
                  child: PeopleRail(
                    title: 'Characters',
                    people: [
                      for (final c in m.characters!)
                        RailPerson(
                          image: c.image,
                          name: c.name ?? '',
                          role: [
                            if (c.role != null) _pretty(c.role!),
                            if ((c.voiceActor?.isNotEmpty ?? false) &&
                                c.voiceActor!.first.name != null)
                              c.voiceActor!.first.name!,
                          ].join(' · '),
                        ),
                    ],
                  ),
                ),
              if ((m.staff ?? const []).isNotEmpty)
                SliverToBoxAdapter(
                  child: PeopleRail(
                    title: 'Staff',
                    people: [
                      for (final s in m.staff!)
                        RailPerson(
                          image: s.image,
                          name: s.name ?? '',
                          role: s.role == null ? null : _pretty(s.role!),
                        ),
                    ],
                  ),
                ),
              if ((m.relations ?? const []).isNotEmpty)
                SliverToBoxAdapter(
                  child: MediaSection(
                    data: MediaSectionData(
                      type: 0,
                      title: 'Relations',
                      mediaList: m.relations,
                      onMediaTap: (ctx, i, media) => _open(ctx, media),
                    ),
                  ),
                ),
              if ((m.recommendations ?? const []).isNotEmpty)
                SliverToBoxAdapter(
                  child: MediaSection(
                    data: MediaSectionData(
                      type: 0,
                      title: 'Recommendations',
                      mediaList: m.recommendations,
                      onMediaTap: (ctx, i, media) => _open(ctx, media),
                    ),
                  ),
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 110)),
            ],
          ),
        );
      }),
    );
  }

  // --- app bar ------------------------------------------------------------

  Widget _appBar(Media m) {
    final scheme = context.colorScheme;
    return SliverAppBar(
      expandedHeight: 208,
      pinned: true,
      backgroundColor: scheme.surface,
      surfaceTintColor: Colors.transparent,
      actions: [
        IconButton(
          tooltip: 'Share',
          icon: const Icon(Icons.share_rounded),
          onPressed: () => shareLink(m.shareLink),
        ),
        PopupMenuButton<String>(
          icon: const Icon(Icons.more_vert_rounded),
          onSelected: (v) {
            if (v == 'browser') openLinkInBrowser(m.shareLink);
            if (v == 'trailer' && m.trailer != null) {
              openLinkInBrowser(m.trailer!);
            }
          },
          itemBuilder: (_) => [
            if (m.trailer != null)
              const PopupMenuItem(
                value: 'trailer',
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.play_circle_outline_rounded),
                  title: Text('Watch trailer'),
                ),
              ),
            const PopupMenuItem(
              value: 'browser',
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.open_in_new_rounded),
                title: Text('Open in browser'),
              ),
            ),
          ],
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsetsDirectional.only(
          start: 52,
          end: 52,
          bottom: 14,
        ),
        title: Text(
          m.mainName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleSmall,
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            if ((m.banner ?? m.cover) != null)
              cachedNetworkImage(
                imageUrl: m.banner ?? m.cover,
                fit: BoxFit.cover,
              )
            else
              ColoredBox(color: scheme.surfaceContainerHigh),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 0.55, 1.0],
                  colors: [
                    scheme.surface.withValues(alpha: 0.1),
                    scheme.surface.withValues(alpha: 0.35),
                    scheme.surface,
                  ],
                ),
              ),
            ),
            Obx(
              () => _loading.value
                  ? const Align(
                      alignment: Alignment.bottomCenter,
                      child: LinearProgressIndicator(minHeight: 2),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  // --- header -----------------------------------------------------------

  Widget _header(Media m) {
    return Padding(
      padding: EdgeInsets.fromLTRB(Dimens.gap, Dimens.gap, Dimens.gap, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.radiusSm),
            child: Container(
              width: Dimens.detailPosterW,
              height: Dimens.detailPosterH,
              color: context.colorScheme.surfaceContainerHigh,
              child: cachedNetworkImage(imageUrl: m.cover, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  m.mainName,
                  style: context.textTheme.titleLarge,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                if (m.nameRomaji != null && m.nameRomaji != m.mainName) ...[
                  const SizedBox(height: 2),
                  Text(
                    m.nameRomaji!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
                SizedBox(height: Dimens.gapSm),
                _metaPills(m),
                if (m.trailer != null) ...[
                  SizedBox(height: Dimens.gapSm),
                  OutlinedButton.icon(
                    onPressed: () => openLinkInBrowser(m.trailer!),
                    icon: const Icon(Icons.play_arrow_rounded, size: 18),
                    label: const Text('Trailer'),
                    style: OutlinedButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _metaPills(Media m) {
    final pills = <Widget>[
      if (m.format != null) _MetaPill(text: _pretty(m.format!)),
      if (m.status != null) _MetaPill(text: _pretty(m.status!)),
      if (_isAnime && m.anime?.totalEpisodes != null)
        _MetaPill(icon: Icons.tv_rounded, text: '${m.anime!.totalEpisodes} ep'),
      if (!_isAnime && m.manga?.totalChapters != null)
        _MetaPill(
          icon: Icons.menu_book_rounded,
          text: '${m.manga!.totalChapters} ch',
        ),
      if (m.anime?.seasonYear != null)
        _MetaPill(
          text: [
            if (m.anime?.season != null) _pretty(m.anime!.season!),
            m.anime!.seasonYear,
          ].join(' '),
        ),
    ];
    if (pills.isEmpty) return const SizedBox.shrink();
    return Wrap(spacing: 8, runSpacing: 8, children: pills);
  }

  // --- stat strip -----------------------------------------------------

  List<(IconData, String, String)> _statItems(Media m) => [
    if ((m.meanScore ?? 0) > 0)
      (Icons.star_rounded, 'Score', (m.meanScore! / 10).toStringAsFixed(1)),
    if ((m.popularity ?? 0) > 0)
      (Icons.people_alt_rounded, 'Popularity', _compact(m.popularity!)),
    if ((m.favourites ?? 0) > 0)
      (Icons.favorite_rounded, 'Favourites', _compact(m.favourites!)),
    if (m.anime?.episodeDuration != null)
      (Icons.schedule_rounded, 'Duration', '${m.anime!.episodeDuration}m'),
  ];

  Widget _statStrip(Media m) {
    final items = _statItems(m);
    return SectionCard(
      margin: _sectionMargin,
      child: Row(
        children: [
          for (final (i, stat) in items.indexed) ...[
            Expanded(
              child: _Stat(icon: stat.$1, label: stat.$2, value: stat.$3),
            ),
            if (i != items.length - 1)
              Container(
                width: 1,
                height: 34,
                color: context.colorScheme.outlineVariant.withValues(
                  alpha: 0.5,
                ),
              ),
          ],
        ],
      ),
    );
  }

  // --- airing ---------------------------------------------------------

  Duration? _airingIn(Media m) {
    final at = m.anime?.nextAiringEpisodeTime;
    if (at == null) return null;
    final target = DateTime.fromMillisecondsSinceEpoch(at * 1000);
    final diff = target.difference(DateTime.now());
    return diff.isNegative ? null : diff;
  }

  Widget _airingCard(Media m, Duration until) {
    final scheme = context.colorScheme;
    final ep = m.anime?.nextAiringEpisode;
    return SectionCard(
      margin: _sectionMargin,
      child: Row(
        children: [
          Icon(Icons.podcasts_rounded, color: scheme.primary),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Text(
              ep != null
                  ? 'Episode $ep airs in ${_fmtDuration(until)}'
                  : 'Next episode in ${_fmtDuration(until)}',
              style: context.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  // --- text sections ------------------------------------------------

  Widget _synopsis(Media m) => SectionCard(
    margin: _sectionMargin,
    title: 'Synopsis',
    child: _Expandable(text: m.description!.stripHtml),
  );

  Widget _genres(Media m) => SectionCard(
    margin: _sectionMargin,
    title: 'Genres',
    child: Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final g in m.genres)
          Chip(
            label: Text(g),
            labelStyle: context.textTheme.labelMedium,
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: BorderSide(color: context.colorScheme.outlineVariant),
            backgroundColor: Colors.transparent,
          ),
      ],
    ),
  );

  Widget _tags(Media m) {
    final parsed = [
      for (final raw in m.tags)
        (
          name: raw.split(' : ').first,
          rank: raw.contains(' : ') ? raw.split(' : ').last : '',
        ),
    ]..sort((a, b) => _rankNum(b.rank).compareTo(_rankNum(a.rank)));

    return SectionCard(
      margin: _sectionMargin,
      title: 'Tags',
      child: Obx(() {
        final shown = _tagsExpanded.value ? parsed : parsed.take(12).toList();
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final t in shown)
              Chip(
                label: Text('${t.name}  ${t.rank}'),
                labelStyle: context.textTheme.labelSmall,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: context.colorScheme.surfaceContainerHighest,
                side: BorderSide.none,
              ),
            if (parsed.length > 12)
              ActionChip(
                label: Text(
                  _tagsExpanded.value
                      ? 'Show less'
                      : '+${parsed.length - 12} more',
                ),
                labelStyle: context.textTheme.labelSmall,
                visualDensity: VisualDensity.compact,
                onPressed: () => _tagsExpanded.value = !_tagsExpanded.value,
              ),
          ],
        );
      }),
    );
  }

  // --- info card ----------------------------------------------------

  List<(String, String)> _infoRows(Media m) {
    final a = m.anime;
    return [
      if (a?.studio?.name.isNotEmpty ?? false) ('Studio', a!.studio!.name),
      if (m.source != null) ('Source', _pretty(m.source!)),
      if (m.countryOfOrigin != null) ('Country', m.countryOfOrigin!),
      if (m.startDate?.getFormattedDate() != null) ('Aired', _airedRange(m)),
      if (m.format != null) ('Format', _pretty(m.format!)),
    ];
  }

  Widget _infoCard(Media m) => SectionCard(
    margin: _sectionMargin,
    title: 'Details',
    child: Column(
      children: [
        for (final (label, value) in _infoRows(m)) _InfoRow(label, value),
      ],
    ),
  );

  // --- fab ----------------------------------------------------------

  Widget _fab(BuildContext context) {
    return Obx(() {
      final mutations = widget.mutations;
      final auth = find<MediaServiceController>().currentService.value.auth;
      if (mutations == null || auth == null || !auth.isLoggedIn) {
        return const SizedBox.shrink();
      }
      final m = _media.value;
      final onList = m.userStatus != null;
      final progress = m.userProgress ?? 0;
      return FloatingActionButton.extended(
        onPressed: () => showListEditor(
          context,
          media: m,
          mutations: mutations,
          onSaved: _fetch,
        ),
        icon: Icon(onList ? Icons.edit_rounded : Icons.add_rounded),
        label: Text(
          onList && progress > 0
              ? '${_statusLabel(m.userStatus)} · $progress'
              : _statusLabel(m.userStatus),
        ),
      );
    });
  }

  // --- format helpers ---------------------------------------------

  static String _pretty(String raw) {
    final words = raw.toLowerCase().replaceAll('_', ' ').split(' ');
    return words
        .map((w) => w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}')
        .join(' ');
  }

  String _airedRange(Media m) {
    final start = m.startDate?.getFormattedDate();
    final end = m.endDate?.getFormattedDate();
    if (start == null) return '';
    if (end == null || end == start) return start;
    return '$start  –  $end';
  }

  static double _rankNum(String rank) =>
      double.tryParse(rank.replaceAll('%', '').trim()) ?? 0;

  static String _compact(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 1000) return '${(n / 1000).toStringAsFixed(1)}K';
    return '$n';
  }

  static String _fmtDuration(Duration d) {
    if (d.inDays > 0) return '${d.inDays}d ${d.inHours % 24}h';
    if (d.inHours > 0) return '${d.inHours}h ${d.inMinutes % 60}m';
    return '${d.inMinutes}m';
  }

  static String _statusLabel(String? status) => switch (status) {
    'CURRENT' => 'Watching',
    'PLANNING' => 'Planned',
    'COMPLETED' => 'Completed',
    'PAUSED' => 'Paused',
    'DROPPED' => 'Dropped',
    'REPEATING' => 'Rewatching',
    _ => 'Add to List',
  };
}

// --- shared bits ------------------------------------------------------

class _MetaPill extends StatelessWidget {
  final String text;
  final IconData? icon;
  const _MetaPill({required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 13, color: scheme.primary),
            const SizedBox(width: 4),
          ],
          Text(text, style: context.textTheme.labelMedium),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _Stat({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: scheme.primary),
        const SizedBox(height: 5),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.labelSmall?.copyWith(
            color: scheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 92,
            child: Text(
              label,
              style: context.textTheme.labelMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(value, style: context.textTheme.bodyMedium)),
        ],
      ),
    );
  }
}

class _Expandable extends StatefulWidget {
  final String text;
  const _Expandable({required this.text});

  @override
  State<_Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<_Expandable> {
  bool _expanded = false;

  void _toggle() => setState(() => _expanded = !_expanded);

  @override
  Widget build(BuildContext context) {
    final long = widget.text.length > 260;
    return DpadFocusable(
      onSelect: _toggle,
      effects: const [DpadScaleEffect(scale: 1.01)],
      child: GestureDetector(
        onTap: long ? _toggle : null,
        behavior: HitTestBehavior.opaque,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 180),
              alignment: Alignment.topCenter,
              child: Text(
                widget.text,
                maxLines: _expanded ? null : 5,
                overflow: _expanded ? null : TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
            ),
            if (long)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  _expanded ? 'Show less' : 'Read more',
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
