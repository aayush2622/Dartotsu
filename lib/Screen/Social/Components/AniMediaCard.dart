import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../Feed/FeedNavigation.dart';

class AniMediaCard extends StatefulWidget {
  final MediaService service;
  final String id;
  final bool centered;

  const AniMediaCard({
    super.key,
    required this.service,
    required this.id,
    this.centered = false,
  });

  @override
  State<AniMediaCard> createState() => _AniMediaCardState();
}

class _AniMediaCardState extends State<AniMediaCard> {
  static final _cache = <String, Media>{};

  Media? _media;

  @override
  void initState() {
    super.initState();
    _media = _cache['${widget.service.id}/${widget.id}'];
    if (_media == null) unawaited(_load());
  }

  Future<void> _load() async {
    try {
      final map = await widget.service.socialView?.mediaByIds([widget.id]);
      final media = map?[widget.id];
      if (media == null || !mounted) return;
      _cache['${widget.service.id}/${widget.id}'] = media;
      setState(() => _media = media);
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final media = _media;
    if (media == null) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    final tag = 'about:${media.id}:${widget.hashCode}';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Align(
        alignment: widget.centered ? Alignment.center : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Clickable(
            onTap: () =>
                openDetail(context, widget.service, media, heroTag: tag),
            child: Container(
              height: 104,
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHigh,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: scheme.outlineVariant.withValues(alpha: 0.4),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Row(
                children: [
                  SizedBox(
                    width: 74,
                    height: double.infinity,
                    child: cachedNetworkImage(
                      imageUrl: media.cover,
                      fit: BoxFit.cover,
                      width: 74,
                      height: 104,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            media.mainName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: scheme.primary,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            [
                              media.isAnime ? 'Anime' : 'Manga',
                              if (media.format != null) media.format!.titleCase,
                              if (media.status != null)
                                media.status!.replaceAll('_', ' ').titleCase,
                            ].join(' · '),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

AniLinkCardBuilder aniLinkCards(MediaService service) =>
    (context, url, centered) {
      final link = service.socialView?.parseLink(url);
      if (link == null ||
          (link.kind != AppLinkKind.anime && link.kind != AppLinkKind.manga)) {
        return null;
      }
      return AniMediaCard(service: service, id: link.value, centered: centered);
    };
