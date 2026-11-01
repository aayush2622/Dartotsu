import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/SauceNao.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import 'ReverseSearchSheet.dart';

Future<SauceHit?> showSauceSearch(BuildContext context) =>
    showCustomBottomDialog<SauceHit>(
      context,
      ReverseSearchSheet<SauceHit>(
        title: getString.sauceTitle,
        intro: getString.sauceIntro,
        empty: getString.sauceEmpty,
        credit: getString.sauceCredit,
        trailing: Builder(
          builder: (context) => IconButton(
            tooltip: getString.sauceKeyTitle,
            onPressed: () => _editKey(context),
            icon: const Icon(Icons.key_rounded),
          ),
        ),
        byBytes: (data, name) => SauceNao.byBytes(data, name: name),
        byUrl: SauceNao.byUrl,
        placeholder: _placeholder,
        tile: (hit) => _HitTile(hit: hit),
      ),
    );

void _editKey(BuildContext context) {
  final field = TextEditingController(text: PrefName.sauceNaoKey.value);
  AlertDialogBuilder(context)
      .setTitle(getString.sauceKeyTitle)
      .setCustomView(
        TextField(
          controller: field,
          decoration: InputDecoration(
            hintText: getString.sauceKeyHint,
            helperText: getString.sauceKeyDesc,
            prefixIcon: const Icon(Icons.key_rounded),
          ),
        ),
      )
      .setNegativeButton(getString.cancel, null)
      .setPositiveButton(getString.ok, () {
        PrefName.sauceNaoKey.value = field.text.trim();
      })
      .show();
}

const _placeholder = SauceHit(
  similarity: 90,
  title: 'Loading the title of the match',
  creator: 'Creator',
  site: 'MangaDex',
);

class _HitTile extends StatelessWidget {
  final SauceHit hit;

  const _HitTile({required this.hit});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final detail = [
      if (hit.creator != null) hit.creator!,
      if (hit.part != null) hit.part!,
      if (hit.site != null) hit.site!,
    ].join(' · ');
    return Clickable(
      onTap: () => popPage(context, hit),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: EdgeInsets.all(Dimens.gap),
          child: Row(
            children: [
              if (hit.thumbnail != null) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: 64,
                    height: 88,
                    child: cachedNetworkImage(
                      imageUrl: hit.thumbnail,
                      fit: BoxFit.cover,
                      width: 64,
                      height: 88,
                    ),
                  ),
                ),
                SizedBox(width: Dimens.gap),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hit.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: text.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (detail.isNotEmpty)
                      Text(
                        detail,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: text.labelMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    SizedBox(height: Dimens.gapSm),
                    Wrap(
                      spacing: 6,
                      children: [
                        _chip(
                          context,
                          getString.sauceSimilarity(
                            hit.similarity.round().toString(),
                          ),
                          hit.low
                              ? scheme.errorContainer
                              : scheme.primaryContainer,
                          hit.low
                              ? scheme.onErrorContainer
                              : scheme.onPrimaryContainer,
                        ),
                        if (hit.adult)
                          _chip(
                            context,
                            getString.imageSearchAdult,
                            scheme.tertiaryContainer,
                            scheme.onTertiaryContainer,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              if (hit.link != null)
                IconButton(
                  tooltip: getString.sauceOpen,
                  icon: const Icon(Icons.open_in_new_rounded),
                  onPressed: () => unawaited(openLinkInBrowser(hit.link!)),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chip(BuildContext context, String label, Color bg, Color fg) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: context.textTheme.labelSmall?.copyWith(color: fg),
        ),
      );
}
