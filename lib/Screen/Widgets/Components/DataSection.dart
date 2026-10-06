import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../Detail/Components/StatusChip.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Core/Services/MediaServiceController.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../Social/Components/AniMediaCard.dart';
import '../../Social/SocialNavigation.dart';
import 'ExpandableText.dart';

const kStatusRowLabel = 'Status';

class DataSection extends StatelessWidget {
  final String? title;
  final ScreenData data;
  final _expanded = false.obs;

  DataSection({super.key, this.title, required this.data});

  MediaService get _service =>
      find<MediaServiceController>().currentService.value;

  @override
  Widget build(BuildContext context) {
    final text = data.text?.trim() ?? '';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
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
        if (label == kStatusRowLabel)
          StatusChip(status: value)
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

  Widget _chips(BuildContext context) {
    final chips = data.chips;
    final limit = data.chipLimit;
    return Obx(() {
      final shown = _expanded.value ? chips : chips.take(limit).toList();
      return Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final chip in shown)
            ActionChip(
              mouseCursor: kClickCursor,
              label: Text(chip),
              labelStyle: context.textTheme.labelLarge,
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: data.onChipTap == null
                  ? null
                  : () => data.onChipTap!(chip),
            ),
          if (chips.length > limit)
            TextButton(
              style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
              onPressed: () => _expanded.value = !_expanded.value,
              child: Text(
                _expanded.value ? 'Show less' : '+${chips.length - limit} more',
              ),
            ),
        ],
      );
    });
  }
}
