import 'dart:async';

import '../../Share/ShareCardSheet.dart';

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/ImageSheet.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

const _toolbarHeight = 56.0;

class ProfileHeaderDelegate extends SliverPersistentHeaderDelegate {
  static const contentHeight = 214.0;
  static const collapseRange = contentHeight;

  final MediaService service;
  final Object? heroTag;
  final UserBrief seed;
  final Live<SocialUser?> user;
  final double top;
  final bool glass;
  final bool isSelf;
  final bool canFollow;
  final Live<bool> followBusy;
  final VoidCallback onFollow;
  final VoidCallback onFollowers;
  final VoidCallback onFollowing;
  final VoidCallback onAnime;
  final VoidCallback onManga;
  final VoidCallback? onSettings;

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
    this.onSettings,
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
      (old.onSettings == null) != (onSettings == null) ||
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

    return Watch(() {
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
                child: Opacity(
                  opacity: 1 - t,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onLongPress: () => showImageSheet(
                      context,
                      url: banner,
                      name: '$name banner',
                      title: getString.imageTitleBanner,
                    ),
                    child: _banner(context, banner),
                  ),
                ),
              ),
            PositionedDirectional(
              start: 0,
              end: 0,
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
                              onTap: () => _openAvatar(context, avatar, name),
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
                                      message: getString.nameCopied,
                                    ),
                                    child: Text(
                                      name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: context.textTheme.titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  if (u != null && u.isFollower && !isSelf)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        u.isFollowing
                                            ? getString.followsEachOther
                                            : getString.followsYou,
                                        style: context.textTheme.labelMedium
                                            ?.copyWith(
                                              color: scheme.primary,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ),
                                  if (canFollow &&
                                      !isSelf &&
                                      (service.socialView?.hasFollows ?? true))
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
                            if (service.socialView?.hasFollows ?? true) ...[
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
                            ],
                            if (service.hasVideo)
                              _count(context, 'Anime', u?.animeCount, onAnime),
                            if (service.hasReading)
                              _count(context, 'Manga', u?.mangaCount, onManga),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            PositionedDirectional(
              start: 56,
              end: 56,
              top: top,
              height: _toolbarHeight,
              child: IgnorePointer(
                child: Opacity(
                  opacity: labelP,
                  child: Transform.translate(
                    offset: Offset(48 * (1 - labelP), 0),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
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
            PositionedDirectional(
              top: top,
              start: 6,
              end: 6,
              height: _toolbarHeight,
              child: Row(
                children: [
                  const AppBackButton(),
                  const Spacer(),
                  if (onSettings != null)
                    IconButton(
                      tooltip: getString.accountOptions,
                      icon: const Icon(Icons.settings_rounded),
                      color: context.colorScheme.onSurfaceVariant,
                      onPressed: onSettings,
                    ),
                  if (url != null) _menu(context, url, u),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  void _openAvatar(BuildContext context, String? avatar, String name) =>
      showImageSheet(
        context,
        url: avatar,
        name: '$name avatar',
        title: getString.imageTitleAvatar,
      );

  Widget _followButton(SocialUser? u) {
    return Watch(() {
      final following = u?.isFollowing ?? false;
      final busy = followBusy.value || u == null;
      return following
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                visualDensity: VisualDensity.compact,
                minimumSize: const Size(0, 36),
              ),
              onPressed: busy ? null : onFollow,
              child: Text(getString.unfollow),
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                visualDensity: VisualDensity.compact,
                minimumSize: const Size(0, 36),
              ),
              onPressed: busy ? null : onFollow,
              child: Text(getString.follow),
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
                  fontWeight: FontWeight.w600,
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
        PositionedDirectional(
          start: -40,
          end: -40,
          top: -40,
          bottom: -40,
          child: RepaintBoundary(
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
      iconColor: context.colorScheme.onSurfaceVariant,
      onSelected: (v) {
        if (v == 'share') shareLink(url);
        if (v == 'browser') openLinkInBrowser(url);
        if (v == 'copy') copyToClipboard(url, message: getString.linkCopied);
        if (v == 'card' && u != null) {
          unawaited(
            showShareList(
              context,
              service,
              userId: int.tryParse(u.id),
              name: u.name,
              avatar: u.avatar,
              user: u,
            ),
          );
        }
        if (v == 'id' && u != null) {
          copyToClipboard(u.id, message: getString.userIdCopied);
        }
      },
      itemBuilder: (_) => [
        PopupMenuItem(value: 'share', child: Text(getString.shareProfile)),
        if (u != null && service.getQueries != null)
          PopupMenuItem(value: 'card', child: Text(getString.shareCard)),
        PopupMenuItem(value: 'browser', child: Text(getString.openInBrowser)),
        PopupMenuItem(value: 'copy', child: Text(getString.copyLink)),
        PopupMenuItem(value: 'id', child: Text(getString.copyUserId)),
      ],
    );
  }

  static String _compact(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 10000) return '${(n / 1000).toStringAsFixed(1)}K';
    return '$n';
  }
}
