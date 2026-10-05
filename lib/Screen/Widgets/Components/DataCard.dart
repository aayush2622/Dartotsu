import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/Screens/ScreenWidget.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/SectionCard.dart';
import 'ExpandableText.dart';
import 'InfoRow.dart';

class DataCard extends StatelessWidget {
  final String? title;
  final ScreenData data;
  final _expanded = false.obs;

  DataCard({super.key, this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    final text = data.text?.trim() ?? '';
    return SectionCard(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap,
        vertical: Dimens.gapSm / 2,
      ),
      title: title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (text.isNotEmpty) ExpandableText(text: text),
          if (data.chips.isNotEmpty) _chips(context),
          for (final (label, value) in data.rows) InfoRow(label, value),
        ],
      ),
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
            Chip(
              label: Text(chip),
              labelStyle: context.textTheme.labelMedium,
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              side: BorderSide(color: context.colorScheme.outlineVariant),
              backgroundColor: Colors.transparent,
            ),
          if (chips.length > limit)
            ActionChip(
              label: Text(
                _expanded.value ? 'Show less' : '+${chips.length - limit} more',
              ),
              labelStyle: context.textTheme.labelSmall,
              visualDensity: VisualDensity.compact,
              onPressed: () => _expanded.value = !_expanded.value,
            ),
        ],
      );
    });
  }
}
