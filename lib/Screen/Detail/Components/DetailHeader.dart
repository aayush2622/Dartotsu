import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Screens/DetailHost.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import 'StatusChip.dart';

const _toolbarHeight = 56.0;
const _actionsHeight = 60.0;

class DetailHeaderScope extends InheritedWidget {
  const DetailHeaderScope({super.key, required super.child});

  static bool contains(BuildContext context) =>
      context.getElementForInheritedWidgetOfExactType<DetailHeaderScope>() !=
      null;

  @override
  bool updateShouldNotify(DetailHeaderScope oldWidget) => false;
}

class DetailHeaderDelegate extends SliverPersistentHeaderDelegate {
  final DetailHost host;
  final double top;
  final bool glass;
  final String Function(Media media)? listLabel;
  final VoidCallback? onEditList;
  final FocusNode? actionFocus;
  final GlobalKey<DpadRegionState>? toolbarLane;
  final GlobalKey<DpadRegionState>? actionsLane;
  final void Function(int lane, TraversalDirection direction)? onLaneEdge;
  final DpadEdgeBehavior horizontalEdge;

  DetailHeaderDelegate({
    required this.host,
    required this.top,
    required this.glass,
    this.listLabel,
    this.onEditList,
    this.actionFocus,
    this.toolbarLane,
    this.actionsLane,
    this.onLaneEdge,
    this.horizontalEdge = DpadEdgeBehavior.stop,
  });

  double get _coverH => Dimens.detailPosterH;

  double get _bannerH => glass ? _coverH * 0.66 : 196.0;

  double get _overhang => _coverH * 0.42;

  double get _below => _overhang + _actionsHeight;

  @override
  double get maxExtent => top + _bannerH + _below;

  @override
  double get minExtent => top + _toolbarHeight;

  @override
  bool shouldRebuild(DetailHeaderDelegate old) =>
      old.top != top ||
      old.glass != glass ||
      old.host != host ||
      old.onEditList != onEditList ||
      old.actionFocus != actionFocus ||
      old.horizontalEdge != horizontalEdge;

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
      final m = host.media.value;
      return DetailHeaderScope(
        child: ClipRect(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: ColoredBox(
                  color: scheme.surface.withValues(alpha: glass ? 0.85 * t : t),
                ),
              ),
              if (!glass)
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: _below * (1 - t),
                  child: Opacity(opacity: 1 - t, child: _banner(m, scheme)),
                ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: ExcludeFocus(
                  excluding: slideP > 0.95,
                  child: _slide(
                    slideP,
                    width,
                    Align(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.pagePad,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _cover(context, m),
                                SizedBox(width: Dimens.gap),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: _overhang),
                                    child: _title(context, m),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: _actionsHeight,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: DpadLane(
                                  laneKey: actionsLane,
                                  verticalEdge: DpadEdgeBehavior.stop,
                                  horizontalEdge: horizontalEdge,
                                  onEdge: (d) => onLaneEdge?.call(1, d),
                                  child: _actions(context, m),
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
                left: 56,
                right: 140,
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
                          m.mainName,
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
                child: DpadLane(
                  laneKey: toolbarLane,
                  verticalEdge: DpadEdgeBehavior.stop,
                  horizontalEdge: horizontalEdge,
                  onEdge: (d) => onLaneEdge?.call(0, d),
                  child: Row(
                    children: [
                      _iconButton(
                        context,
                        Icons.arrow_back_rounded,
                        guardedBack,
                      ),
                      const Spacer(),
                      _reloadButton(context),
                      const SizedBox(width: 6),
                      _iconButton(
                        context,
                        Icons.share_rounded,
                        () => shareLink(m.shareLink),
                      ),
                      const SizedBox(width: 6),
                      _menuButton(context, m),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _slide(double p, double width, Widget child) => Opacity(
    opacity: 1 - p,
    child: Transform.translate(offset: Offset(-width * p, 0), child: child),
  );

  Widget _banner(Media m, ColorScheme scheme) {
    final url = m.banner ?? m.cover;
    return Stack(
      fit: StackFit.expand,
      children: [
        url != null
            ? cachedNetworkImage(imageUrl: url, fit: BoxFit.cover)
            : ColoredBox(color: scheme.surfaceContainerHigh),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.45, 1.0],
              colors: [
                scheme.surface.withValues(alpha: 0.1),
                scheme.surface.withValues(alpha: 0.5),
                scheme.surface,
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _title(BuildContext context, Media m) {
    final scheme = context.colorScheme;
    return SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            m.mainName,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w800,
              height: 1.15,
              color: scheme.onSurface,
            ),
          ),
          if (m.nameRomaji != null && m.nameRomaji != m.mainName) ...[
            const SizedBox(height: 4),
            Text(
              m.nameRomaji!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
          if (m.status != null) ...[
            const SizedBox(height: 10),
            StatusChip(status: m.status!, isAnime: m.isAnime),
          ],
        ],
      ),
    );
  }

  Widget _cover(BuildContext context, Media m) {
    final image = ClipRRect(
      borderRadius: Dimens.borderSm,
      child: Container(
        width: Dimens.detailPosterW,
        height: _coverH,
        color: context.colorScheme.surfaceContainerHigh,
        child: cachedNetworkImage(imageUrl: m.cover, fit: BoxFit.cover),
      ),
    );
    final tag = host.heroTag;
    if (tag == null) return image;
    return Hero(
      tag: tag,
      flightShuttleBuilder: (_, _, _, _, toContext) =>
          (toContext.widget as Hero).child,
      child: image,
    );
  }

  Widget _actions(BuildContext context, Media m) {
    final onList = m.userStatus != null;
    return Obx(
      () => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (onEditList != null)
            FilledButton.icon(
              focusNode: actionFocus,
              onPressed: host.loading.value ? null : onEditList,
              icon: Icon(
                onList ? Icons.edit_rounded : Icons.add_rounded,
                size: 18,
              ),
              label: Text(listLabel?.call(m) ?? 'Add to List'),
            ),
          if (onEditList != null && m.trailer != null)
            SizedBox(width: Dimens.gapSm),
          if (m.trailer != null)
            OutlinedButton.icon(
              onPressed: () => openLinkInBrowser(m.trailer!),
              icon: const Icon(Icons.play_arrow_rounded, size: 18),
              label: const Text('Trailer'),
            ),
        ],
      ),
    );
  }

  Widget _reloadButton(BuildContext context) => Obx(
    () => _iconButton(
      context,
      Icons.refresh_rounded,
      host.loading.value ? null : () => host.refresh(),
      loading: host.loading.value,
    ),
  );

  Widget _iconButton(
    BuildContext context,
    IconData icon,
    VoidCallback? onTap, {
    bool loading = false,
  }) => IconButton.filledTonal(
    icon: loading
        ? const SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Icon(icon, size: 20),
    onPressed: onTap,
    visualDensity: VisualDensity.compact,
  );

  Widget _menuButton(BuildContext context, Media m) => PopupMenuButton<String>(
    style: IconButton.styleFrom(
      backgroundColor: context.colorScheme.secondaryContainer,
      foregroundColor: context.colorScheme.onSecondaryContainer,
      visualDensity: VisualDensity.compact,
    ),
    icon: const Icon(Icons.more_vert_rounded, size: 20),
    onSelected: (v) {
      if (v == 'browser') openLinkInBrowser(m.shareLink);
      if (v == 'copyTitle') {
        copyToClipboard(m.mainName, message: 'Title copied');
      }
      if (v == 'copyLink') {
        copyToClipboard(m.shareLink, message: 'Link copied');
      }
      if (v == 'trailer' && m.trailer != null) openLinkInBrowser(m.trailer!);
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
        value: 'copyTitle',
        child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.title_rounded),
          title: Text('Copy title'),
        ),
      ),
      const PopupMenuItem(
        value: 'copyLink',
        child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.link_rounded),
          title: Text('Copy link'),
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
  );
}
