import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/Screens/EntityHost.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';

class EntityHeader extends StatelessWidget {
  static const _bannerHeight = 190.0;
  static const _portraitWidth = 128.0;
  static const _portraitHeight = 186.0;

  final EntityHost host;
  final bool canFavourite;
  final RxBool togglingFavourite;
  final VoidCallback onToggleFavourite;

  const EntityHeader({
    super.key,
    required this.host,
    required this.canFavourite,
    required this.togglingFavourite,
    required this.onToggleFavourite,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final profile = host.profile.value;
      final glass = find<ThemeController>().useGlassMode.value;
      final top = MediaQuery.paddingOf(context).top;
      return Stack(
        children: [
          if (!glass && profile.image != null)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: _bannerHeight + top,
              child: _banner(context, profile.image!),
            ),
          Padding(
            padding: EdgeInsets.only(top: top + 56),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _portrait(context, profile.image),
                  SizedBox(width: Dimens.gap),
                  Expanded(child: _info(context, profile)),
                ],
              ),
            ),
          ),
          Positioned(
            top: top,
            left: 6,
            right: 6,
            height: 56,
            child: Row(
              children: [
                const AppBackButton(),
                const Spacer(),
                if (profile.url != null) _menu(context, profile.url!),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _banner(BuildContext context, String url) {
    final surface = context.colorScheme.surface;
    return Stack(
      fit: StackFit.expand,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: cachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
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
            ? Icon(Icons.person_rounded, size: 48, color: scheme.outline)
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
      padding: const EdgeInsets.only(top: _bannerHeight - 108),
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
