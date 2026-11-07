import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Api/Services/Extension/Services.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Shelf/ShelfFrame.dart';
import '../SourceBrowseScreen.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

class ExtensionSourcesRail extends StatelessWidget {
  const ExtensionSourcesRail({super.key});

  String _title(ItemType type) => switch (type) {
    ItemType.anime => getString.animeExtensions,
    ItemType.manga => getString.mangaExtensions,
    ItemType.novel => getString.novelExtensions,
  };

  @override
  Widget build(BuildContext context) => Watch(() {
    final types = [for (final t in extensionTabTypes()) itemTypeOf(t)];
    for (final type in types) {
      ensureSourcesReady(type);
    }
    return Column(
      children: [for (final type in types) _rail(context, type, _title(type))],
    );
  });

  Widget _rail(BuildContext context, ItemType type, String title) {
    return Watch(() {
      final sources = loadedSources(type);
      if (sources.isEmpty) return const SizedBox.shrink();

      return ShelfFrame(
        title: title,
        child: SizedBox(
          height: 92,
          child: ScrollConfig(
            context,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sources.length,
              itemBuilder: (context, i) => Padding(
                padding: _tilePadding(i),
                child: _tile(context, type, sources[i]),
              ),
            ),
          ),
        ),
      );
    });
  }

  EdgeInsetsDirectional _tilePadding(int index) => EdgeInsetsDirectional.only(
    start: index == 0 ? Dimens.cardPad + 8 : Dimens.cardGap,
    end: Dimens.cardGap,
  );

  Widget _tile(BuildContext context, ItemType type, Source source) {
    final scheme = context.colorScheme;
    void open() =>
        navigateToPage(context, SourceBrowseScreen(source: source, type: type));

    return DpadTap(
      onTap: open,
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 76,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: 48,
                height: 48,
                color: scheme.surfaceContainerHighest,
                child: cachedNetworkImage(
                  imageUrl: source.iconUrl ?? '',
                  fit: BoxFit.cover,
                  errorWidget: (_, _, _) => Icon(
                    Icons.extension_rounded,
                    color: scheme.onSurfaceVariant,
                    size: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              source.name ?? '',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
