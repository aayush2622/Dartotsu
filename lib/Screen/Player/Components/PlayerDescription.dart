import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../Detail/Watch/Components/UnitTile.dart';
import '../PlayerState.dart';

class PlayerDescription {
  final String? text;
  final String meta;
  final bool filler;
  final bool recap;

  const PlayerDescription._(this.text, this.meta, this.filler, this.recap);

  static PlayerDescription of(PlayerState state) {
    final item = state.item;
    final unit = item.unit;
    final text = (unit?.description ?? item.episode?.description)?.trim();
    final date = unit?.date;
    final rating = unit?.rating;
    final meta = [
      if (date != null) formatUnitDate(date),
      if (unit?.runtime != null) '${unit!.runtime} min',
      if (rating != null && rating > 0) rating.toStringAsFixed(1),
      if (unit?.scanlator != null) unit!.scanlator!,
    ].join(' · ');
    return PlayerDescription._(
      text == null || text.isEmpty ? null : text,
      meta,
      unit?.filler ?? false,
      unit?.recap ?? false,
    );
  }

  bool get isEmpty => text == null && meta.isEmpty && !filler && !recap;
}

class PlayerDescriptionBox extends StatelessWidget {
  final PlayerDescription description;
  final bool open;

  const PlayerDescriptionBox({
    super.key,
    required this.description,
    required this.open,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return AnimatedSize(
      duration: animDuration(220),
      curve: Curves.easeOutCubic,
      alignment: Alignment.topCenter,
      child: !open || description.isEmpty
          ? const SizedBox(width: double.infinity)
          : Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: Dimens.gapSm),
              padding: EdgeInsets.all(Dimens.gap),
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHigh,
                borderRadius: Dimens.borderSm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (description.meta.isNotEmpty)
                    Text(
                      description.meta,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  if (description.filler || description.recap)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Wrap(
                        spacing: 8,
                        children: [
                          if (description.filler)
                            Chip(
                              label: Text(getString.watchFiller),
                              backgroundColor: scheme.tertiaryContainer,
                            ),
                          if (description.recap)
                            Chip(
                              label: Text(getString.watchRecap),
                              backgroundColor: scheme.secondaryContainer,
                            ),
                        ],
                      ),
                    ),
                  if (description.text != null)
                    Padding(
                      padding: EdgeInsets.only(
                        top: description.meta.isEmpty ? 0 : Dimens.gapSm,
                      ),
                      child: SelectableText(
                        description.text!,
                        style: context.textTheme.bodyMedium?.copyWith(
                          height: 1.35,
                        ),
                      ),
                    ),
                ],
              ),
            ),
    );
  }
}
