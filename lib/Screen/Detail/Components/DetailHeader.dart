import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/MediaServiceController.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/GlassSurface.dart';
import '../../../Widgets/Components/ImageSheet.dart';
import '../../../Widgets/Components/MarqueeText.dart';
import 'StatusChip.dart';
import '../../../Core/State/State.dart';
import '../Watch/Data/Media/MediaRecord.dart';
import '../Watch/Data/WatchPrefs.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/AppSpinner.dart';

const _toolbarHeight = 56.0;
const _actionsHeight = 68.0;
const _actionsGap = 24.0;
const _sideExtra = 6.0;

class DetailHeaderScope extends InheritedWidget {
  const DetailHeaderScope({super.key, required super.child});

  static bool contains(BuildContext context) =>
      context.getElementForInheritedWidgetOfExactType<DetailHeaderScope>() !=
      null;

  @override
  bool updateShouldNotify(DetailHeaderScope oldWidget) => false;
}

double detailHeaderCollapseRange() =>
    196.0 + Dimens.detailPosterH * 0.42 + _actionsHeight - _toolbarHeight;

class DetailHeaderDelegate extends SliverPersistentHeaderDelegate {
  final DetailHost host;
  final double top;
  final bool glass;
  final String Function(Media media)? listLabel;
  final String? sourceName;
  final VoidCallback? onEditList;
  final VoidCallback? onShareCard;
  final VoidCallback? onFavourite;
  final Live<bool>? favouriteBusy;
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
    this.sourceName,
    this.onEditList,
    this.onShareCard,
    this.onFavourite,
    this.favouriteBusy,
    this.actionFocus,
    this.toolbarLane,
    this.actionsLane,
    this.onLaneEdge,
    this.horizontalEdge = DpadEdgeBehavior.stop,
  });

  double get _coverH => Dimens.detailPosterH;

  double get _bannerH => 196.0;

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
      old.onShareCard != onShareCard ||
      (old.onFavourite == null) != (onFavourite == null) ||
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
    final collapsed = t > 0.75;

    return Watch(() {
      final m = host.media.value;
      return DetailHeaderScope(
        child: ClipRect(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: glass
                    ? _glassBar(
                        context,
                        scheme,
                        ((t - 0.85) * 6.7).clamp(0.0, 1.0),
                      )
                    : ColoredBox(color: scheme.surface.withValues(alpha: t)),
              ),
              if (!glass)
                PositionedDirectional(
                  start: 0,
                  end: 0,
                  top: 0,
                  bottom: _below * (1 - t),
                  child: Opacity(
                    opacity: 1 - t,
                    child: Builder(
                      builder: (c) => GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onLongPress: () => showImageSheet(
                          c,
                          url: m.banner ?? m.cover,
                          name: '${m.mainName} banner',
                          title: getString.imageTitleBanner,
                        ),
                        child: _banner(m, scheme),
                      ),
                    ),
                  ),
                ),
              PositionedDirectional(
                start: 0,
                end: 0,
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
                          horizontal: Dimens.pagePad + _sideExtra,
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
                                  child: SizedBox(
                                    height: _coverH,
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      child: _title(context, m),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: _actionsHeight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: _actionsGap,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional.topStart,
                                  child: DpadLane(
                                    laneKey: actionsLane,
                                    verticalEdge: DpadEdgeBehavior.stop,
                                    horizontalEdge: horizontalEdge,
                                    onEdge: (d) => onLaneEdge?.call(1, d),
                                    child: _actions(context, m),
                                  ),
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
                start: 56,
                end: collapsed ? 56 : 140,
                top: top,
                height: _toolbarHeight,
                child: IgnorePointer(
                  child: Opacity(
                    opacity: labelP,
                    child: Transform.translate(
                      offset: Offset(48 * (1 - labelP), 0),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: MarqueeText(
                          m.mainName,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
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
                      AnimatedSize(
                        duration: animDuration(180),
                        child: collapsed
                            ? const SizedBox.shrink()
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _reloadButton(context),
                                  const SizedBox(width: 6),
                                  if (onFavourite != null) ...[
                                    _iconButton(
                                      context,
                                      m.isFav
                                          ? Icons.favorite_rounded
                                          : Icons.favorite_border_rounded,
                                      favouriteBusy?.value == true
                                          ? null
                                          : onFavourite,
                                      loading: favouriteBusy?.value == true,
                                      color: m.isFav
                                          ? context.colorScheme.error
                                          : null,
                                    ),
                                    const SizedBox(width: 6),
                                  ],
                                  _iconButton(
                                    context,
                                    Icons.share_rounded,
                                    () => shareLink(m.shareLink),
                                  ),
                                  const SizedBox(width: 6),
                                ],
                              ),
                      ),
                      _menuButton(context, m, collapsed),
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

  Widget _glassBar(BuildContext context, ColorScheme scheme, double p) {
    if (p <= 0) return const SizedBox.shrink();
    return Opacity(
      opacity: p,
      child: ClipRect(
        child: GlassBlur(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: scheme.surface.withValues(alpha: 0.4),
              border: Border(
                bottom: BorderSide(
                  color: scheme.onSurface.withValues(alpha: 0.08),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  int _titleLines(Media m) {
    final romaji = m.nameRomaji != null && m.nameRomaji != m.mainName;
    final used = (romaji ? 24 : 0) + (m.status != null ? 44 : 0);
    return ((_coverH - used) / 22).floor().clamp(2, 4);
  }

  Widget _title(BuildContext context, Media m) {
    final scheme = context.colorScheme;
    return Clickable(
      press: false,
      behavior: HitTestBehavior.translucent,
      onLongPress: () {
        HapticFeedback.mediumImpact();
        copyToClipboard(m.mainName);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            m.mainName,
            maxLines: _titleLines(m),
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.titleLarge?.copyWith(
              fontSize: 19,
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
    final tappable = Clickable(
      onTap: () => showImageSheet(
        context,
        url: m.cover,
        name: '${m.mainName} cover',
        title: getString.imageTitleCover,
      ),
      child: image,
    );
    if (tag == null) return tappable;
    return Hero(
      tag: tag,
      flightShuttleBuilder: (_, _, _, _, toContext) =>
          (toContext.widget as Hero).child,
      child: tappable,
    );
  }

  Widget _actions(BuildContext context, Media m) {
    final onList = m.userStatus != null;
    return Watch(
      () => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (onEditList != null)
            FilledButton.icon(
              style: ButtonStyle(
                minimumSize: const WidgetStatePropertyAll(Size(0, 50)),
                textStyle: WidgetStatePropertyAll(
                  context.textTheme.labelLarge?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 22),
                ),
                visualDensity: VisualDensity.compact,
              ),
              focusNode: actionFocus,
              onPressed: host.loading.value ? null : onEditList,
              onLongPress: () {
                HapticFeedback.mediumImpact();
                (m.isAnime ? trackAnimePref : trackMangaPref).value = 'ask';
                final service =
                    find<MediaServiceController>().currentService.value;
                MediaRecords.of(service, m).trackChoice = null;
                MediaRecords.save(service, m);
                snackString(getString.trackProgressReset);
              },
              icon: Icon(
                onList ? Icons.edit_rounded : Icons.add_rounded,
                size: 20,
              ),
              label: Text(listLabel?.call(m) ?? getString.addToList),
            ),
          if (onEditList != null && m.trailer != null)
            SizedBox(width: Dimens.gapSm),
          if (m.trailer != null)
            OutlinedButton.icon(
              style: const ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(0, 44)),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16),
                ),
                visualDensity: VisualDensity.compact,
              ),
              onPressed: () => openLinkInBrowser(m.trailer!),
              icon: const Icon(Icons.play_arrow_rounded, size: 18),
              label: Text(getString.trailer),
            ),
        ],
      ),
    );
  }

  Widget _reloadButton(BuildContext context) => Watch(
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
    Color? color,
  }) => IconButton.filledTonal(
    icon: loading ? const AppSpinner() : Icon(icon, size: 20, color: color),
    onPressed: onTap,
    visualDensity: VisualDensity.compact,
  );

  Widget _menuButton(BuildContext context, Media m, bool collapsed) =>
      PopupMenuButton<String>(
        style: IconButton.styleFrom(
          backgroundColor: context.colorScheme.secondaryContainer,
          foregroundColor: context.colorScheme.onSecondaryContainer,
          visualDensity: VisualDensity.compact,
        ),
        icon: const Icon(Icons.more_vert_rounded, size: 20),
        onSelected: (v) {
          if (v == 'reload') host.refresh();
          if (v == 'favourite') onFavourite?.call();
          if (v == 'share') shareLink(m.shareLink);
          if (v == 'browser') openLinkInBrowser(m.shareLink);
          if (v == 'copyTitle') {
            copyToClipboard(m.mainName, message: getString.titleCopied);
          }
          if (v == 'copyLink') {
            copyToClipboard(m.shareLink, message: getString.linkCopied);
          }
          if (v == 'trailer' && m.trailer != null) {
            openLinkInBrowser(m.trailer!);
          }
          if (v == 'shareCard') onShareCard?.call();
        },
        itemBuilder: (_) => [
          if (collapsed) ...[
            PopupMenuItem(
              value: 'reload',
              enabled: !host.loading.value,
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.refresh_rounded),
                title: Text(getString.refresh),
              ),
            ),
            if (onFavourite != null)
              PopupMenuItem(
                value: 'favourite',
                enabled: favouriteBusy?.value != true,
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    m.isFav
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    color: m.isFav ? context.colorScheme.error : null,
                  ),
                  title: Text(getString.favourite),
                ),
              ),
            PopupMenuItem(
              value: 'share',
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.share_rounded),
                title: Text(getString.share),
              ),
            ),
          ],
          if (m.trailer != null)
            PopupMenuItem(
              value: 'trailer',
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.play_circle_outline_rounded),
                title: Text(getString.watchTrailer),
              ),
            ),
          if (onShareCard != null)
            PopupMenuItem(
              value: 'shareCard',
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.ios_share_rounded),
                title: Text(getString.shareCard),
              ),
            ),
          PopupMenuItem(
            value: 'copyTitle',
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.title_rounded),
              title: Text(getString.copyTitle),
            ),
          ),
          PopupMenuItem(
            value: 'copyLink',
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.link_rounded),
              title: Text(getString.copyLink),
            ),
          ),
          PopupMenuItem(
            value: 'browser',
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.open_in_new_rounded),
              title: Text(
                sourceName == null
                    ? getString.openInBrowser
                    : getString.viewOnSource(sourceName!),
              ),
            ),
          ),
        ],
      );
}
