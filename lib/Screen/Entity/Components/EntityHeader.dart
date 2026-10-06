import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/Screens/EntityHost.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';

const _toolbarHeight = 56.0;

class EntityHeaderDelegate extends SliverPersistentHeaderDelegate {
  static const _contentHeight = 252.0;
  static const collapseRange = _contentHeight;
  static const _portraitWidth = 128.0;
  static const _portraitHeight = 186.0;

  final EntityHost host;
  final double top;
  final bool glass;
  final bool canFavourite;
  final RxBool togglingFavourite;
  final VoidCallback onToggleFavourite;

  EntityHeaderDelegate({
    required this.host,
    required this.top,
    required this.glass,
    required this.canFavourite,
    required this.togglingFavourite,
    required this.onToggleFavourite,
  });

  @override
  double get maxExtent => top + _toolbarHeight + _contentHeight;

  @override
  double get minExtent => top + _toolbarHeight;

  @override
  bool shouldRebuild(EntityHeaderDelegate old) =>
      old.top != top ||
      old.glass != glass ||
      old.host != host ||
      old.canFavourite != canFavourite;

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
      final profile = host.profile.value;
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
            if (!glass && profile.image != null)
              Positioned.fill(
                child: Opacity(
                  opacity: 1 - t,
                  child: _banner(context, profile.image!),
                ),
              ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: _contentHeight,
              child: Opacity(
                opacity: 1 - slideP,
                child: Transform.translate(
                  offset: Offset(-width * slideP, 0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _portrait(context, profile.image),
                        SizedBox(width: Dimens.gap),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: _info(context, profile),
                          ),
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
                      child: Text(
                        profile.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
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
                  if (profile.url != null) _menu(context, profile.url!),
                ],
              ),
            ),
          ],
        ),
      );
    });
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
              sigmaX: 14,
              sigmaY: 14,
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

  Widget _portrait(BuildContext context, String? url) {
    final scheme = context.colorScheme;
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(18),
      clipBehavior: Clip.antiAlias,
      color: scheme.surfaceContainerHigh,
      child: SizedBox(
        width: _portraitWidth,
        height: _portraitHeight,
        child: url == null
            ? Icon(
                host.kind == EntityKind.studio
                    ? Icons.business_rounded
                    : Icons.person_rounded,
                size: 48,
                color: scheme.outline,
              )
            : cachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
                width: _portraitWidth,
                height: _portraitHeight,
              ),
      ),
    );
  }

  Widget _info(BuildContext context, EntityProfile profile) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            profile.name,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          if (profile.nativeName != null &&
              profile.nativeName != profile.name) ...[
            const SizedBox(height: 2),
            Text(
              profile.nativeName!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
          if (profile.subtitle != null) ...[
            const SizedBox(height: 6),
            Text(
              profile.subtitle!,
              style: context.textTheme.labelLarge?.copyWith(
                color: scheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (profile.favourites != null)
                _count(context, Icons.favorite_rounded, profile.favourites!),
              if (canFavourite) _favouriteButton(context, profile),
            ],
          ),
        ],
      ),
    );
  }

  Widget _count(BuildContext context, IconData icon, int value) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: scheme.primary),
          const SizedBox(width: 6),
          Text(
            _compact(value),
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _favouriteButton(BuildContext context, EntityProfile profile) {
    return Obx(
      () => FilledButton.tonalIcon(
        style: FilledButton.styleFrom(
          visualDensity: VisualDensity.compact,
          minimumSize: const Size(0, 36),
        ),
        onPressed: togglingFavourite.value ? null : onToggleFavourite,
        icon: Icon(
          profile.isFavourite
              ? Icons.favorite_rounded
              : Icons.favorite_border_rounded,
          size: 18,
        ),
        label: Text(profile.isFavourite ? 'Favourited' : 'Favourite'),
      ),
    );
  }

  Widget _menu(BuildContext context, String url) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded),
      onSelected: (v) {
        if (v == 'share') shareLink(url);
        if (v == 'browser') openLinkInBrowser(url);
        if (v == 'copy') copyToClipboard(url, message: 'Link copied');
      },
      itemBuilder: (_) => const [
        PopupMenuItem(value: 'share', child: Text('Share')),
        PopupMenuItem(value: 'browser', child: Text('Open in browser')),
        PopupMenuItem(value: 'copy', child: Text('Copy link')),
      ],
    );
  }

  static String _compact(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 1000) return '${(n / 1000).toStringAsFixed(1)}K';
    return '$n';
  }
}
