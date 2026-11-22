import 'package:flutter/material.dart';

import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Screens/DetailHost.dart';
import '../../../Core/Services/Screens/ScreenWidget.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Utils/Extensions/ClickCursor.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../WatchOrder/WatchOrderScreen.dart';

List<ScreenWidget> prequelSequelWidgets(DetailHost host, Media m) {
  Media? find(String label) {
    for (final r in m.relations ?? const <Media>[]) {
      if (r.relation?.toLowerCase() == label) return r;
    }
    return null;
  }

  final prequel = m.prequel ?? find('prequel');
  final sequel = m.sequel ?? find('sequel');
  if (prequel == null && sequel == null) return const [];
  return [
    ScreenWidget.extra(
      DetailRelated(
        host,
        key: ValueKey('related-${m.id}'),
        prequel: prequel,
        sequel: sequel,
      ),
    ),
  ];
}

class DetailRelated extends StatelessWidget {
  final DetailHost host;
  final Media? prequel;
  final Media? sequel;

  const DetailRelated(this.host, {this.prequel, this.sequel, super.key});

  bool get _hasWatchOrder {
    final media = host.media.value;
    const liveAction = ['movies/', 'tv/', 'shows/'];
    return media.isAnime && !liveAction.any(media.id.startsWith);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (prequel != null)
                Expanded(child: _card(context, getString.prequel, prequel!)),
              if (prequel != null && sequel != null)
                SizedBox(width: Dimens.gap),
              if (sequel != null)
                Expanded(child: _card(context, getString.sequel, sequel!)),
            ],
          ),
          if (_hasWatchOrder) ...[
            SizedBox(height: Dimens.gapSm),
            ActionChip(
              mouseCursor: kClickCursor,
              avatar: Icon(
                Icons.account_tree_rounded,
                size: 18,
                color: context.colorScheme.primary,
              ),
              label: Text(getString.watchOrder),
              labelStyle: context.textTheme.labelLarge?.copyWith(
                color: context.colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
              color: WidgetStatePropertyAll(
                context.colorScheme.primary.withValues(alpha: 0.18),
              ),
              side: BorderSide(
                color: context.colorScheme.primary.withValues(alpha: 0.6),
              ),
              onPressed: () => navigateToPage(
                context,
                WatchOrderScreen(
                  service: host.service,
                  media: host.media.value,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _card(BuildContext context, String label, Media media) {
    final scheme = context.colorScheme;
    final image = media.banner ?? media.cover;
    return Clickable(
      onTap: () => host.open(media, null),
      child: ClipRRect(
        borderRadius: Dimens.borderSm,
        child: SizedBox(
          height: 104,
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (image == null)
                ColoredBox(color: scheme.surfaceContainerHigh)
              else
                cachedNetworkImage(
                  imageUrl: image,
                  fit: BoxFit.cover,
                  placeholder: (_, _) =>
                      ColoredBox(color: scheme.surfaceContainerHigh),
                  errorWidget: (_, _, _) =>
                      ColoredBox(color: scheme.surfaceContainerHigh),
                ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.15),
                      Colors.black.withValues(alpha: 0.78),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Dimens.gap),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      media.mainName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
