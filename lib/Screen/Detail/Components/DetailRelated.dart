import 'package:flutter/material.dart';

import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Screens/DetailHost.dart';
import '../../../Core/Services/Screens/ScreenWidget.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Row(
        children: [
          if (prequel != null)
            Expanded(child: _card(context, getString.prequel, prequel!)),
          if (prequel != null && sequel != null) SizedBox(width: Dimens.gap),
          if (sequel != null)
            Expanded(child: _card(context, getString.sequel, sequel!)),
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
              ColoredBox(color: scheme.surfaceContainerHigh),
              if (image != null)
                cachedNetworkImage(imageUrl: image, fit: BoxFit.cover),
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
