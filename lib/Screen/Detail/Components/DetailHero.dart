import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Screens/DetailHost.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import 'MetaPill.dart';

class DetailHero extends StatelessWidget {
  final DetailHost host;

  const DetailHero(this.host, {super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
    final m = host.media.value;
    final scheme = context.colorScheme;
    final glass = find<ThemeController>().useGlassMode.value;
    final top = MediaQuery.paddingOf(context).top;
    final coverW = Dimens.detailPosterW;
    final coverH = Dimens.detailPosterH;
    final bannerH = glass ? coverH * 0.66 : 196.0;
    final overhang = coverH * 0.42;

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: bannerH + top,
              width: double.infinity,
              child: glass ? const SizedBox.shrink() : _banner(m, scheme),
            ),
            Positioned(
              top: top + 4,
              left: 6,
              right: 6,
              child: Row(
                children: [
                  _circleButton(context, Icons.arrow_back_rounded, guardedBack),
                  const Spacer(),
                  _circleButton(
                    context,
                    Icons.share_rounded,
                    () => shareLink(m.shareLink),
                  ),
                  const SizedBox(width: 6),
                  _menuButton(context, m),
                ],
              ),
            ),
            Positioned(
              top: top,
              left: 0,
              right: 0,
              child: Obx(
                () => host.loading.value
                    ? const LinearProgressIndicator(minHeight: 2)
                    : const SizedBox.shrink(),
              ),
            ),
            Positioned(
              left: Dimens.gap,
              right: Dimens.gap,
              bottom: -overhang,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _cover(context, m, coverW, coverH),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: overhang),
                      child: _title(context, m),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: overhang + Dimens.gapSm),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.gap),
          child: Align(alignment: Alignment.centerLeft, child: _pills(m)),
        ),
        if (m.trailer != null)
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.gap,
              Dimens.gapSm,
              Dimens.gap,
              0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                onPressed: () => openLinkInBrowser(m.trailer!),
                icon: const Icon(Icons.play_arrow_rounded, size: 18),
                label: const Text('Trailer'),
                style: OutlinedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ),
          ),
        SizedBox(height: Dimens.gapSm),
      ],
    );
  });

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
              stops: const [0.0, 0.5, 1.0],
              colors: [
                scheme.surface.withValues(alpha: 0.15),
                scheme.surface.withValues(alpha: 0.45),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          m.mainName,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        if (m.nameRomaji != null && m.nameRomaji != m.mainName) ...[
          const SizedBox(height: 2),
          Text(
            m.nameRomaji!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodySmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
        if (m.status != null) ...[
          const SizedBox(height: 6),
          Text(
            m.status!.titleCase,
            style: context.textTheme.labelLarge?.copyWith(
              color: scheme.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ],
    );
  }

  Widget _cover(BuildContext context, Media m, double w, double h) {
    final image = ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radiusSm),
      child: Container(
        width: w,
        height: h,
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

  Widget _circleButton(
    BuildContext context,
    IconData icon,
    VoidCallback onTap,
  ) => Material(
    color: context.colorScheme.surface.withValues(alpha: 0.7),
    shape: const CircleBorder(),
    clipBehavior: Clip.antiAlias,
    child: IconButton(
      icon: Icon(icon, size: 20),
      onPressed: onTap,
      visualDensity: VisualDensity.compact,
    ),
  );

  Widget _menuButton(BuildContext context, Media m) => Material(
    color: context.colorScheme.surface.withValues(alpha: 0.7),
    shape: const CircleBorder(),
    clipBehavior: Clip.antiAlias,
    child: PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded, size: 20),
      onSelected: (v) {
        if (v == 'browser') openLinkInBrowser(m.shareLink);
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
          value: 'browser',
          child: ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.open_in_new_rounded),
            title: Text('Open in browser'),
          ),
        ),
      ],
    ),
  );

  Widget _pills(Media m) {
    final anime = m.anime != null;
    final pills = <Widget>[
      if (m.format != null) MetaPill(text: m.format!.titleCase),
      if (anime && m.anime?.totalEpisodes != null)
        MetaPill(icon: Icons.tv_rounded, text: '${m.anime!.totalEpisodes} ep'),
      if (!anime && m.manga?.totalChapters != null)
        MetaPill(
          icon: Icons.menu_book_rounded,
          text: '${m.manga!.totalChapters} ch',
        ),
      if (m.anime?.seasonYear != null)
        MetaPill(
          text: [
            if (m.anime?.season != null) m.anime!.season!.titleCase,
            m.anime!.seasonYear,
          ].join(' '),
        ),
    ];
    if (pills.isEmpty) return const SizedBox.shrink();
    return Wrap(spacing: 8, runSpacing: 8, children: pills);
  }
}
