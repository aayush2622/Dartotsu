import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../../Widgets/Shelf/MediaSection.dart';
import '../../Feed/FeedNavigation.dart';
import '../../Widgets/ScreenWidgetView.dart';
import '../SocialNavigation.dart';
import 'AniMediaCard.dart';

class ProfileInfoTab extends StatefulWidget {
  final MediaService service;
  final SocialUser? user;
  final String userId;
  final Future<SocialProfile?> bundle;

  const ProfileInfoTab({
    super.key,
    required this.service,
    required this.user,
    required this.userId,
    required this.bundle,
  });

  @override
  State<ProfileInfoTab> createState() => _ProfileInfoTabState();
}

class _ProfileInfoTabState extends State<ProfileInfoTab>
    with AutomaticKeepAliveClientMixin {
  SocialFavourites? _favourites;
  bool _failed = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load() async {
    try {
      final result =
          (await widget.bundle)?.favourites ??
          await widget.service.socialView!.favourites(widget.userId);
      if (mounted) setState(() => _favourites = result);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final user = widget.user;
    final favourites = _favourites;
    final service = widget.service;
    return ScrollConfig(
      context,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: Dimens.gapSm, bottom: 120),
        children: [
          if (user?.about?.trim().isNotEmpty ?? false)
            SectionCard(
              title: 'About',
              margin: _margin,
              child: AniHtml(
                html: user!.about!,
                onLink: (url) => openAppLink(context, service, url),
                linkCard: aniLinkCards(service),
              ),
            ),
          if (user != null) _stats(context, user),
          if (favourites == null && !_failed)
            const MediaSection(data: MediaSectionData.loading()),
          if (favourites != null) ..._favouriteSections(context, favourites),
          if (_failed)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: TextButton.icon(
                  onPressed: () {
                    setState(() => _failed = false);
                    unawaited(_load());
                  },
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text("Couldn't load favourites. Retry"),
                ),
              ),
            ),
        ],
      ),
    );
  }

  EdgeInsets get _margin => EdgeInsets.symmetric(
    horizontal: Dimens.pagePad,
    vertical: Dimens.gapSm / 2,
  );

  Widget _stats(BuildContext context, SocialUser u) {
    Widget group(String title, List<(String, String)> rows) => Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.primary,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),
          for (final (label, value) in rows)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    label,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );

    return SectionCard(
      margin: _margin,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          group('Anime', [
            ('Episodes watched', '${u.episodesWatched}'),
            ('Days watched', u.daysWatched.toStringAsFixed(1)),
            ('Mean score', u.animeMeanScore.toStringAsFixed(1)),
          ]),
          group('Manga', [
            ('Chapters read', '${u.chaptersRead}'),
            ('Volumes read', '${u.volumesRead}'),
            ('Mean score', u.mangaMeanScore.toStringAsFixed(1)),
          ]),
        ],
      ),
    );
  }

  List<Widget> _favouriteSections(BuildContext context, SocialFavourites f) {
    final service = widget.service;
    Widget view(ScreenWidget w) => ScreenWidgetView(
      w,
      heroPrefix: 'profile:${widget.userId}',
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
      onCharacterTap: (c) => openEntity(
        context,
        service,
        EntityKind.character,
        c.id,
        name: c.name,
        image: c.image,
      ),
      onStaffTap: (s) => openEntity(
        context,
        service,
        EntityKind.staff,
        s.id,
        name: s.name,
        image: s.image,
      ),
    );
    final entity = service.entityView != null;
    return [
      if (f.anime.isNotEmpty)
        view(ScreenWidget.media('Favourite anime', f.anime)),
      if (f.manga.isNotEmpty)
        view(ScreenWidget.media('Favourite manga', f.manga)),
      if (f.characters.isNotEmpty && entity)
        view(ScreenWidget.characters('Favourite characters', f.characters)),
      if (f.staff.isNotEmpty && entity)
        view(ScreenWidget.staff('Favourite staff', f.staff)),
      if (f.studios.isNotEmpty && entity)
        SectionCard(
          title: 'Favourite studios',
          margin: _margin,
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final s in f.studios)
                ActionChip(
                  mouseCursor: kClickCursor,
                  avatar: const Icon(Icons.business_rounded, size: 18),
                  label: Text(s.name),
                  onPressed: () => openEntity(
                    context,
                    service,
                    EntityKind.studio,
                    s.id,
                    name: s.name,
                  ),
                ),
            ],
          ),
        ),
      if (f.isEmpty)
        Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Text(
              'No favourites yet',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
    ];
  }
}
