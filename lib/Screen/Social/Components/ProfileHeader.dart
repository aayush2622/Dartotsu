import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/UserAvatar.dart';

const _toolbarHeight = 56.0;

class ProfileHeaderDelegate extends SliverPersistentHeaderDelegate {
  static const contentHeight = 214.0;
  static const collapseRange = contentHeight;

  final MediaService service;
  final Object? heroTag;
  final UserBrief seed;
  final Rxn<SocialUser> user;
  final double top;
  final bool glass;
  final bool isSelf;
  final bool canFollow;
  final RxBool followBusy;
  final VoidCallback onFollow;
  final VoidCallback onFollowers;
  final VoidCallback onFollowing;
  final VoidCallback onAnime;
  final VoidCallback onManga;

  ProfileHeaderDelegate({
    required this.service,
    this.heroTag,
    required this.seed,
    required this.user,
    required this.top,
    required this.glass,
    required this.isSelf,
    required this.canFollow,
    required this.followBusy,
    required this.onFollow,
    required this.onFollowers,
    required this.onFollowing,
    required this.onAnime,
    required this.onManga,
  });

  @override
  double get maxExtent => top + _toolbarHeight + contentHeight;

  @override
  double get minExtent => top + _toolbarHeight;

  @override
  bool shouldRebuild(ProfileHeaderDelegate old) =>
      old.top != top ||
      old.glass != glass ||
      old.isSelf != isSelf ||
      old.canFollow != canFollow ||
      old.seed != seed;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final range = maxExtent - minExtent;
    final t = (shrinkOffset / range).clamp(0.0, 1.0);
    final scheme = context.colorScheme;
    final width = MediaQuery.sizeOf(context).width;
    final slideP = (t * 1.6).clamp(0.0, 1.0);
    final labelP = ((t - 0.5) * 2).clamp(0.0, 1.0);

    return Obx(() {
      final u = user.value;
      final name = u?.name ?? seed.name;
      final avatar = u?.avatar ?? seed.avatar;
      final banner = u?.banner ?? seed.banner ?? avatar;
      final url = u?.siteUrl ?? service.socialView?.profileUrl(name);
      return ClipRect(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ColoredBox(
                color: scheme.surface.withValues(
                  alpha: glass ? 0.85 * ((t - 0.9) * 10).clamp(0.0, 1.0) : t,
                ),
              ),
            ),
            if (!glass && banner != null)
              Positioned.fill(
                child: Opacity(opacity: 1 - t, child: _banner(context, banner)),
              ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: contentHeight,
              child: Opacity(
                opacity: 1 - slideP,
                child: Transform.translate(
                  offset: Offset(-width * slideP, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      Dimens.pagePad,
                      0,
                      Dimens.pagePad,
                      8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Clickable(
                              onTap: () => _openAvatar(context, avatar),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: scheme.surface,
                                    width: 3,
                                  ),
                                ),
                                child: UserAvatar(
                                  url: avatar,
                                  name: name,
                                  size: 84,
                                  heroTag: heroTag,
                                ),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Clickable(
                                    onLongPress: () => copyToClipboard(
                                      name,
                                      message: 'Name copied',
                                    ),
                                    child: Text(
                                      name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: context.textTheme.titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                  if (u != null && u.isFollower && !isSelf)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        u.isFollowing
                                            ? 'Follows each other'
                                            : 'Follows you',
                                        style: context.textTheme.labelMedium
                                            ?.copyWith(
                                              color: scheme.primary,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ),
                                  if (canFollow && !isSelf)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: _followButton(u),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            _count(
                              context,
                              'Followers',
                              u?.followers,
                              onFollowers,
                            ),
                            _count(
                              context,
                              'Following',
                              u?.following,
                              onFollowing,
                            ),
                            _count(context, 'Anime', u?.animeCount, onAnime),
                            _count(context, 'Manga', u?.mangaCount, onManga),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 56,
              right: 56,
              top: top,
              height: _toolbarHeight,
              child: IgnorePointer(
                child: Opacity(
                  opacity: labelP,
                  child: Transform.translate(
                    offset: Offset(48 * (1 - labelP), 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          UserAvatar(url: avatar, name: name, size: 30),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: top,
              left: 6,
              right: 6,
              height: _toolbarHeight,
              child: Row(
                children: [
                  const AppBackButton(),
                  const Spacer(),
                  if (url != null) _menu(context, url, u),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  void _openAvatar(BuildContext context, String? avatar) {
    if (avatar == null) return;
    showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.network(avatar, fit: BoxFit.contain),
        ),
      ),
    );
  }

  Widget _followButton(SocialUser? u) {
    return Obx(() {
      final following = u?.isFollowing ?? false;
      final busy = followBusy.value || u == null;
      return following
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                visualDensity: VisualDensity.compact,
                minimumSize: const Size(0, 36),
              ),
              onPressed: busy ? null : onFollow,
              child: const Text('Unfollow'),
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                visualDensity: VisualDensity.compact,
                minimumSize: const Size(0, 36),
              ),
              onPressed: busy ? null : onFollow,
              child: const Text('Follow'),
            );
    });
  }

  Widget _count(
    BuildContext context,
    String label,
    int? value,
    VoidCallback onTap,
  ) {
    return Expanded(
      child: InkWell(
        mouseCursor: kClickCursor,
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(
            children: [
              Text(
                value == null ? '–' : _compact(value),
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
      ),
    );
  }

  Widget _banner(BuildContext context, String url) {
    final surface = context.colorScheme.surface;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: -40,
          right: -40,
          top: -40,
          bottom: -40,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
              tileMode: TileMode.clamp,
            ),
            child: cachedNetworkImage(
              imageUrl: url,
              fit: BoxFit.cover,
              cacheWidth: 720,
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [surface.withValues(alpha: 0.3), surface],
            ),
          ),
        ),
      ],
    );
  }

  Widget _menu(BuildContext context, String url, SocialUser? u) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (v) {
        if (v == 'share') shareLink(url);
        if (v == 'browser') openLinkInBrowser(url);
        if (v == 'copy') copyToClipboard(url, message: 'Link copied');
        if (v == 'id' && u != null) {
          copyToClipboard(u.id, message: 'User id copied');
        }
      },
      itemBuilder: (_) => const [
        PopupMenuItem(value: 'share', child: Text('Share profile')),
        PopupMenuItem(value: 'browser', child: Text('Open in browser')),
        PopupMenuItem(value: 'copy', child: Text('Copy link')),
        PopupMenuItem(value: 'id', child: Text('Copy user id')),
      ],
    );
  }

  static String _compact(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 10000) return '${(n / 1000).toStringAsFixed(1)}K';
    return '$n';
  }
}
