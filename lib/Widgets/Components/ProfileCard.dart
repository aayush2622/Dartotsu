import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import 'CachedNetworkImage.dart';
import 'Clickable.dart';
import 'ThemedContainer.dart';
import 'UserAvatar.dart';

const _bannerH = 76.0;
const _avatarD = 68.0;
const _wideH = 92.0;

class ProfileCard extends StatelessWidget {
  static const gridExtent = 220.0;
  static const gridMaxWidth = 320.0;

  final String name;
  final String? avatar;
  final String? banner;
  final Widget? chip;
  final Widget? meta;
  final Widget? action;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool skeleton;
  final bool wide;
  final Object? heroTag;

  const ProfileCard({
    super.key,
    required this.name,
    this.avatar,
    this.banner,
    this.chip,
    this.meta,
    this.action,
    this.onTap,
    this.onLongPress,
    this.skeleton = false,
    this.wide = false,
    this.heroTag,
  });

  static SliverGridDelegate gridDelegate() =>
      SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: gridMaxWidth,
        mainAxisExtent: gridExtent,
        crossAxisSpacing: Dimens.gap,
        mainAxisSpacing: Dimens.gap,
      );

  Widget _banner(ColorScheme scheme, {double? cacheWidth}) {
    final fill = ColoredBox(color: scheme.secondaryContainer);
    if (skeleton) return fill;
    if (banner == null || banner!.isEmpty) return fill;
    return cachedNetworkImage(
      imageUrl: banner,
      fit: BoxFit.cover,
      cacheWidth: cacheWidth?.toInt(),
      placeholder: (_, _) => fill,
      errorWidget: (_, _, _) => fill,
    );
  }

  Widget _textBlock(BuildContext context, {required bool big}) {
    final scheme = context.colorScheme;
    if (skeleton) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Bone.text(words: 2, fontSize: 16),
          SizedBox(height: Dimens.gapXs),
          Bone(width: 76, height: 20, borderRadius: BorderRadius.circular(999)),
          if (meta != null) ...[
            SizedBox(height: Dimens.gapXs),
            const Bone.text(words: 1, fontSize: 11),
          ],
        ],
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:
              (big
                      ? context.textTheme.titleMedium
                      : context.textTheme.titleSmall)
                  ?.copyWith(fontWeight: FontWeight.w800),
        ),
        if (chip != null) ...[SizedBox(height: Dimens.gapXs), chip!],
        if (meta != null)
          Padding(
            padding: EdgeInsets.only(top: Dimens.gapXs),
            child: DefaultTextStyle.merge(
              style: context.textTheme.labelSmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
              child: meta!,
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    var body = wide ? _wide(context, scheme) : _grid(context, scheme);
    if (skeleton) body = Skeletonizer.zone(child: body);
    return ThemedContainer(
      blur: false,
      padding: EdgeInsets.zero,
      borderRadius: Dimens.border,
      child: Clickable(
        onTap: skeleton ? null : onTap,
        onLongPress: skeleton ? null : onLongPress,
        child: ClipRRect(borderRadius: Dimens.border, child: body),
      ),
    );
  }

  Widget _grid(BuildContext context, ColorScheme scheme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: _bannerH + _avatarD / 2,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: _bannerH,
                width: double.infinity,
                child: _banner(scheme, cacheWidth: 480),
              ),
              PositionedDirectional(
                start: Dimens.gap,
                top: _bannerH - _avatarD / 2,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: scheme.surfaceContainerHigh,
                  ),
                  child: skeleton
                      ? const Bone.circle(size: _avatarD - 6)
                      : UserAvatar(
                          url: avatar,
                          name: name,
                          size: _avatarD - 6,
                          heroTag: heroTag,
                        ),
                ),
              ),
              if (action != null)
                PositionedDirectional(
                  end: Dimens.gap,
                  top: _bannerH + 8,
                  child: action!,
                ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.gap,
            Dimens.gapXs,
            Dimens.gap,
            Dimens.gap,
          ),
          child: _textBlock(context, big: true),
        ),
      ],
    );
  }

  Widget _wide(BuildContext context, ColorScheme scheme) {
    return SizedBox(
      height: _wideH,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _banner(scheme, cacheWidth: 720),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  scheme.surfaceContainerHigh.withValues(alpha: 0.96),
                  scheme.surfaceContainerHigh.withValues(alpha: 0.72),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.gap),
            child: Row(
              children: [
                skeleton
                    ? const Bone.circle(size: 58)
                    : UserAvatar(
                        url: avatar,
                        name: name,
                        size: 58,
                        heroTag: heroTag,
                      ),
                SizedBox(width: Dimens.gap),
                Expanded(child: _textBlock(context, big: true)),
                if (action != null) ...[SizedBox(width: Dimens.gapSm), action!],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePill extends StatelessWidget {
  final String text;
  final Color color;

  const ProfilePill(this.text, {super.key, required this.color});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    decoration: BoxDecoration(
      color: color.withValues(alpha: 0.16),
      borderRadius: BorderRadius.circular(999),
    ),
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.labelSmall?.copyWith(
        color: color,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
