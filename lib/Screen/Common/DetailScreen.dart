import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Character.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
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

class _DetailScreenState extends State<DetailScreen> {
  late final _media = widget.media.obs;
  final _loading = true.obs;

  bool get _isAnime => _media.value.anime != null;

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
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Obx(() {
        final mutations = widget.mutations;
        final auth = find<MediaServiceController>().currentService.value.auth;
        if (mutations == null || auth == null || !auth.isLoggedIn) {
          return const SizedBox.shrink();
        }
        final m = _media.value;
        return FloatingActionButton.extended(
          onPressed: () => showListEditor(
            context,
            media: m,
            mutations: mutations,
            onSaved: _fetch,
          ),
          icon: Icon(m.userStatus == null ? Icons.add : Icons.edit_rounded),
          label: Text(_statusLabel(m.userStatus)),
        );
      }),
      body: Obx(() {
        final m = _media.value;
        return RefreshIndicator(
          onRefresh: _fetch,
          child: CustomScrollConfig(
            context,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              _appBar(m),
              SliverToBoxAdapter(child: _headerCard(m)),
              if (m.genres.isNotEmpty) SliverToBoxAdapter(child: _genres(m)),
              if ((m.description ?? '').isNotEmpty)
                SliverToBoxAdapter(child: _description(m)),
              if ((m.characters ?? []).isNotEmpty)
                SliverToBoxAdapter(child: _characters(m.characters!)),
              if ((m.relations ?? []).isNotEmpty)
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
              if ((m.recommendations ?? []).isNotEmpty)
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
              const SliverToBoxAdapter(child: SizedBox(height: 96)),
            ],
          ),
        );
      }),
    );
  }

  Widget _appBar(Media m) {
    return SliverAppBar(
      expandedHeight: 220,
      pinned: true,
      backgroundColor: context.colorScheme.surface,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            if ((m.banner ?? m.cover) != null)
              cachedNetworkImage(
                imageUrl: m.banner ?? m.cover,
                fit: BoxFit.cover,
              ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, context.colorScheme.surface],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerCard(Media m) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: const Offset(0, -40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: SizedBox(
                width: 110,
                height: 160,
                child: cachedNetworkImage(imageUrl: m.cover, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                Text(m.mainName, style: context.textTheme.titleLarge),
                if (m.nameRomaji != null && m.nameRomaji != m.mainName)
                  Text(
                    m.nameRomaji!,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 14,
                  runSpacing: 4,
                  children: [
                    if (m.meanScore != null)
                      _meta(Icons.star_rounded, '${m.meanScore! / 10}'),
                    if (m.format != null) _meta(null, m.format!),
                    if (m.status != null)
                      _meta(null, m.status!.replaceAll('_', ' ')),
                    if (_isAnime && m.anime?.totalEpisodes != null)
                      _meta(Icons.tv_rounded, '${m.anime!.totalEpisodes} ep'),
                    if (!_isAnime && m.manga?.totalChapters != null)
                      _meta(
                        Icons.menu_book_rounded,
                        '${m.manga!.totalChapters} ch',
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _meta(IconData? icon, String text) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      if (icon != null) ...[
        Icon(icon, size: 15, color: context.colorScheme.primary),
        const SizedBox(width: 3),
      ],
      Text(text, style: context.textTheme.labelMedium),
    ],
  );

  Widget _genres(Media m) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
    child: Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final g in m.genres)
          Chip(
            label: Text(g, style: context.textTheme.labelMedium),
            visualDensity: VisualDensity.compact,
            side: BorderSide(color: context.colorScheme.outlineVariant),
          ),
      ],
    ),
  );

  Widget _description(Media m) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
    child: _Expandable(text: m.description!.stripHtml),
  );

  Widget _characters(List<Character> chars) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 16, 8),
        child: Text('Characters', style: context.textTheme.titleMedium),
      ),
      SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: chars.length,
          separatorBuilder: (_, i) => const SizedBox(width: 12),
          itemBuilder: (_, i) => _CharacterCard(character: chars[i]),
        ),
      ),
    ],
  );

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
      effects: const [DpadBorderEffect(borderRadius: BorderRadius.zero)],
      child: AnimatedSize(
        duration: const Duration(milliseconds: 180),
        alignment: Alignment.topCenter,
        child: Text(
          widget.text,
          maxLines: _expanded ? null : 4,
          overflow: _expanded ? null : TextOverflow.ellipsis,
          style: context.textTheme.bodyMedium?.copyWith(height: 1.45),
        ),
      ),
    );
  }
}

class _CharacterCard extends StatelessWidget {
  final Character character;
  const _CharacterCard({required this.character});

  @override
  Widget build(BuildContext context) {
    final va = character.voiceActor?.isNotEmpty == true
        ? character.voiceActor!.first
        : null;
    return SizedBox(
      width: 92,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 92,
              height: 110,
              child: cachedNetworkImage(
                imageUrl: character.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            character.name ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.labelSmall,
          ),
          if (va?.name != null)
            Text(
              va!.name!,
              maxLines: 1,
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
