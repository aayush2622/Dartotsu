import '../../../Utils/Extensions/StringExtensions.dart';
import '../../Reader/Engine/NovelSpeech.dart';
import 'SpeakButton.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Widgets/Components/Clickable.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../Detail/Components/StatusChip.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Core/Services/MediaServiceController.dart';
import '../../Social/Components/AniMediaCard.dart';
import '../../Social/SocialNavigation.dart';
import 'ExpandableText.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

const kStatusRowLabel = 'Status';

class DataSection extends StatefulWidget {
  final String? title;
  final ScreenData data;

  const DataSection({super.key, this.title, required this.data});

  @override
  State<DataSection> createState() => _DataSectionState();
}

class _DataSectionState extends State<DataSection> {
  final _expanded = false.live;

  String? get title => widget.title;
  ScreenData get data => widget.data;

  MediaService get _service =>
      find<MediaServiceController>().currentService.value;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final text = data.text?.trim() ?? '';
    final spoken = data.html != null && data.html!.trim().isNotEmpty
        ? data.html!.stripHtml.trim()
        : text;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Row(
              children: [
                Expanded(
                  child: Text(
                    title!,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                if (NovelSpeech.supported && spoken.isNotEmpty)
                  SpeakButton(text: spoken),
              ],
            ),
            SizedBox(height: Dimens.gapSm),
          ],
          if (data.html != null && data.html!.trim().isNotEmpty)
            AniHtml(
              html: data.html!,
              collapsedHeight: 150,
              onLink: (url) => openAppLink(context, _service, url),
              linkCard: aniLinkCards(_service),
            )
          else if (text.isNotEmpty)
            ExpandableText(text: text),
          if (data.chips.isNotEmpty) _chips(context),
          if (data.rows.isNotEmpty) _grid(context),
        ],
      ),
    );
  }

  Widget _grid(BuildContext context) => LayoutBuilder(
    builder: (context, box) {
      final columns = data.columns ?? (box.maxWidth / 240).floor().clamp(2, 6);
      const gap = 16.0;
      final width = (box.maxWidth - gap * (columns - 1)) / columns;
      return Wrap(
        spacing: gap,
        runSpacing: Dimens.gap,
        children: [
          for (final (label, value) in data.rows)
            SizedBox(width: width, child: _cell(context, label, value)),
        ],
      );
    },
  );

  Widget _cell(BuildContext context, String label, String value) {
    final scheme = context.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.labelMedium?.copyWith(
            color: scheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 4),
        if (label == kStatusRowLabel || label == getString.status)
          StatusChip(status: value)
        else if (data.onRowTap[label] case final tap?)
          Clickable(
            press: false,
            behavior: HitTestBehavior.translucent,
            onTap: () => tap(context),
            child: Text(
              value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: scheme.primary,
              ),
            ),
          )
        else
          SelectionArea(
            child: Text(
              value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: scheme.onSurface,
              ),
            ),
          ),
      ],
    );
  }

  static const _chipGap = 8.0;
  static const _chipOverhead = 34.0;

  int _fitInOneRow(
    List<String> chips,
    double width,
    TextStyle? style,
    String more,
  ) {
    double measure(String text) {
      final painter = TextPainter(
        text: TextSpan(text: text, style: style),
        textDirection: TextDirection.ltr,
        maxLines: 1,
      )..layout();
      return painter.width + _chipOverhead;
    }

    var used = 0.0;
    var count = 0;
    for (final chip in chips) {
      final next = used + (count == 0 ? 0 : _chipGap) + measure(chip);
      final remaining = chips.length - count - 1;
      final reserve = remaining > 0
          ? _chipGap + measure(more.replaceAll('%', '$remaining'))
          : 0;
      if (next + reserve > width) break;
      used = next;
      count++;
    }
    return count < 1 ? 1 : count;
  }

  Widget _chips(BuildContext context) {
    final chips = data.chips;
    final scheme = context.colorScheme;
    final style = context.textTheme.labelLarge;
    return Padding(
      padding: EdgeInsets.only(
        top: data.html != null || data.text != null ? Dimens.gapSm : 0,
      ),
      child: LayoutBuilder(
        builder: (context, box) => Watch(() {
          final fit = _fitInOneRow(chips, box.maxWidth, style, '+% more');
          final collapsible = chips.length > fit;
          final shown = _expanded.value || !collapsible
              ? chips
              : chips.take(fit).toList();
          return Wrap(
            spacing: _chipGap,
            runSpacing: _chipGap,
            children: [
              for (final chip in shown)
                Clickable(
                  press: false,
                  onLongPress: () {
                    HapticFeedback.mediumImpact();
                    copyToClipboard(chip);
                  },
                  child: ActionChip(
                    mouseCursor: kClickCursor,
                    color: WidgetStatePropertyAll(
                      scheme.onSurface.withValues(alpha: 0.1),
                    ),
                    side: BorderSide(color: scheme.outlineVariant),
                    label: Text(chip),
                    labelStyle: style?.copyWith(color: scheme.onSurface),
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: data.onChipTap == null
                        ? null
                        : () => data.onChipTap!(chip),
                  ),
                ),
              if (collapsible)
                ActionChip(
                  mouseCursor: kClickCursor,
                  color: WidgetStatePropertyAll(
                    scheme.primary.withValues(alpha: 0.18),
                  ),
                  side: BorderSide(
                    color: scheme.primary.withValues(alpha: 0.6),
                  ),
                  avatar: Icon(
                    _expanded.value
                        ? Icons.expand_less_rounded
                        : Icons.expand_more_rounded,
                    size: 18,
                    color: scheme.primary,
                  ),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () => _expanded.value = !_expanded.value,
                  label: Text(
                    _expanded.value
                        ? getString.showLess
                        : '+${chips.length - fit} more',
                  ),
                  labelStyle: style?.copyWith(
                    color: scheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }
}
