import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Author.dart';
import '../../Core/Services/Model/Character.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Sections/Media/MediaSection.dart';
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
              SliverToBoxAdapter(child: _statStrip(m)),
              if (_airingIn(m) case final airing?)
                SliverToBoxAdapter(child: _airingCard(m, airing)),
              if ((m.description ?? '').trim().isNotEmpty)
                SliverToBoxAdapter(child: _synopsis(m)),
              if (m.genres.isNotEmpty)
                SliverToBoxAdapter(child: _genres(m)),
              if (_infoRows(m).isNotEmpty)
                SliverToBoxAdapter(child: _infoCard(m)),
              if (m.tags.isNotEmpty) SliverToBoxAdapter(child: _tags(m)),
              if ((m.characters ?? const []).isNotEmpty)
                SliverToBoxAdapter(
                  child: _peopleStrip(
                    'Characters',
                    [for (final c in m.characters!) _person(c)],
                  ),
                ),
              if ((m.staff ?? const []).isNotEmpty)
                SliverToBoxAdapter(
                  child: _peopleStrip(
                    'Staff',
                    [for (final s in m.staff!) _staff(s)],
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

  // --- app bar ---------------------------------------------------------------

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

  // --- header ---------------------------------------------------------------

  Widget _header(Media m) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Poster(url: m.cover),
              const SizedBox(width: 14),
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
                    if (m.nameRomaji != null &&
                        m.nameRomaji != m.mainName) ...[
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
                    const SizedBox(height: 10),
                    _metaPills(m),
                    if (m.trailer != null) ...[
                      const SizedBox(height: 10),
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

  // --- stat strip ---------------------------------------------------------

  Widget _statStrip(Media m) {
    final stats = <Widget>[
      if ((m.meanScore ?? 0) > 0)
        _StatTile(
          icon: Icons.star_rounded,
          label: 'Score',
          value: (m.meanScore! / 10).toStringAsFixed(1),
        ),
      if ((m.popularity ?? 0) > 0)
        _StatTile(
          icon: Icons.people_alt_rounded,
          label: 'Popularity',
          value: _compact(m.popularity!),
        ),
      if ((m.favourites ?? 0) > 0)
        _StatTile(
          icon: Icons.favorite_rounded,
          label: 'Favourites',
          value: _compact(m.favourites!),
        ),
      if (m.anime?.episodeDuration != null)
        _StatTile(
          icon: Icons.schedule_rounded,
          label: 'Duration',
          value: '${m.anime!.episodeDuration}m',
        ),
    ];
    if (stats.isEmpty) return const SizedBox.shrink();
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
        itemCount: stats.length,
        separatorBuilder: (_, i) => const SizedBox(width: 10),
        itemBuilder: (_, i) => SizedBox(width: 96, child: stats[i]),
      ),
    );
  }

  // --- airing card ------------------------------------------------------

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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: scheme.secondaryContainer.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Icon(Icons.podcasts_rounded, color: scheme.onSecondaryContainer),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                ep != null
                    ? 'Episode $ep airs in ${_fmtDuration(until)}'
                    : 'Next episode in ${_fmtDuration(until)}',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSecondaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- synopsis --------------------------------------------------------

  Widget _synopsis(Media m) => Padding(
    padding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionHeader(title: 'Synopsis'),
        const SizedBox(height: 6),
        _Expandable(text: m.description!.stripHtml),
      ],
    ),
  );

  Widget _genres(Media m) => Padding(
    padding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionHeader(title: 'Genres'),
        const SizedBox(height: 8),
        Wrap(
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

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionHeader(title: 'Tags'),
          const SizedBox(height: 8),
          Obx(() {
            final shown = _tagsExpanded.value
                ? parsed
                : parsed.take(12).toList();
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
                    backgroundColor:
                        context.colorScheme.surfaceContainerHighest,
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
                    onPressed: () =>
                        _tagsExpanded.value = !_tagsExpanded.value,
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }

  // --- info card ------------------------------------------------------

  List<(String, String)> _infoRows(Media m) {
    final a = m.anime;
    return [
      if (a?.studio?.name.isNotEmpty ?? false) ('Studio', a!.studio!.name),
      if (m.source != null) ('Source', _pretty(m.source!)),
      if (m.countryOfOrigin != null) ('Country', m.countryOfOrigin!),
      if (m.startDate?.getFormattedDate() != null)
        ('Aired', _airedRange(m)),
      if (m.format != null) ('Format', _pretty(m.format!)),
    ];
  }

  Widget _infoCard(Media m) {
    final rows = _infoRows(m);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionHeader(title: 'Details'),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                for (final (label, value) in rows) _InfoRow(label, value),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- people ---------------------------------------------------------

  Widget _peopleStrip(String title, List<Widget> cards) => Padding(
    padding: const EdgeInsets.only(top: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _SectionHeader(title: title),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 168,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: cards.length,
            separatorBuilder: (_, i) => const SizedBox(width: 12),
            itemBuilder: (_, i) => cards[i],
          ),
        ),
      ],
    ),
  );

  Widget _person(Character c) {
    final va = (c.voiceActor?.isNotEmpty ?? false) ? c.voiceActor!.first : null;
    return _PersonCard(
      image: c.image,
      name: c.name ?? '',
      subtitle: [
        if (c.role != null) _pretty(c.role!),
        if (va?.name != null) va!.name!,
      ].join(' · '),
    );
  }

  Widget _staff(Author a) => _PersonCard(
    image: a.image,
    name: a.name ?? '',
    subtitle: a.role == null ? '' : _pretty(a.role!),
  );

  // --- fab ----------------------------------------------------------------

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

  // --- format helpers -------------------------------------------------

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

// --- shared bits ---------------------------------------------------------

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _Poster extends StatelessWidget {
  final String? url;
  const _Poster({this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: 108,
        height: 156,
        color: context.colorScheme.surfaceContainerHigh,
        child: cachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
      ),
    );
  }
}

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

class _StatTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _StatTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 17, color: scheme.primary),
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
      ),
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
          Expanded(
            child: Text(value, style: context.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}

class _PersonCard extends StatelessWidget {
  final String? image;
  final String name;
  final String subtitle;
  const _PersonCard({
    required this.image,
    required this.name,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              width: 104,
              height: 118,
              color: context.colorScheme.surfaceContainerHigh,
              child: cachedNetworkImage(imageUrl: image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.labelMedium,
          ),
          if (subtitle.isNotEmpty)
            Text(
              subtitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelSmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
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

  @override
  Widget build(BuildContext context) {
    return DpadFocusable(
      onSelect: () => setState(() => _expanded = !_expanded),
      effects: const [DpadScaleEffect(scale: 1.01)],
      child: GestureDetector(
        onTap: () => setState(() => _expanded = !_expanded),
        behavior: HitTestBehavior.opaque,
        child: AnimatedSize(
          duration: const Duration(milliseconds: 180),
          alignment: Alignment.topCenter,
          child: Text(
            widget.text,
            maxLines: _expanded ? null : 5,
            overflow: _expanded ? null : TextOverflow.ellipsis,
            style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
          ),
        ),
      ),
    );
  }
}
