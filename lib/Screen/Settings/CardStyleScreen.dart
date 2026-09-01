import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/RefreshController.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Sections/RailCard.dart';

class CardStyleScreen extends StatefulWidget {
  const CardStyleScreen({super.key});

  @override
  State<CardStyleScreen> createState() => _CardStyleScreenState();
}

class _CardStyleScreenState extends BaseScreen<CardStyleScreen> {
  CardStyleController get _c => find();
  late final _draft = _c.current.obs;

  void _set(CardStyle next) {
    _draft.value = next;
    _c.apply(next);
  }

  void _edit(CardStyle Function(CardStyle) f) => _set(f(_draft.value).asCustom);

  @override
  void dispose() {
    // feeds read the style non-reactively — nudge them to rebuild.
    tryFind<RefreshController>()?.all();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Card style'),
        actions: [
          TextButton(
            onPressed: () => _set(const CardStyle()),
            child: const Text('Reset'),
          ),
        ],
      ),
      body: ScrollConfig(
        context,
        child: Obx(() {
          final s = _draft.value;
          return ListView(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              Dimens.gapSm,
              Dimens.pagePad,
              Dimens.gapXl,
            ),
            children: [
              _preview(s),
              SizedBox(height: Dimens.gap),
              _presets(s),
              SizedBox(height: Dimens.gap),
              _layout(s),
              SizedBox(height: Dimens.gap),
              _sizeShape(s),
              SizedBox(height: Dimens.gap),
              _overlays(s),
            ],
          );
        }),
      ),
    );
  }

  // --- preview --------------------------------------------------------

  Widget _preview(CardStyle s) {
    return SectionCard(
      title: 'Preview',
      child: SizedBox(
        height: s.itemHeight + 8,
        child: ScrollConfig(
          context,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              RailCard(
                style: s,
                demo: true,
                title: 'Solo Leveling Season 2 – Arise from the Shadow',
                subtitle: '1  |  3 / 12',
                score: 8.6,
                airing: true,
                progress: 0.34,
                progressText: '1 · 12',
              ),
              SizedBox(width: Dimens.railGap),
              RailCard(
                style: s,
                demo: true,
                title: 'BLEACH: Thousand-Year Blood War',
                subtitle: '~  |  14',
                score: 8.7,
                scoreHighlight: true,
                progressText: '0 · 14',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- presets -------------------------------------------------------

  Widget _presets(CardStyle s) {
    const names = {
      'poster': 'Poster',
      'cozy': 'Cozy',
      'compact': 'Compact',
      'detailed': 'Detailed',
    };
    return SectionCard(
      title: 'Preset',
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final id in CardStyle.presetIds)
            ChoiceChip(
              label: Text(names[id]!),
              selected: s.preset == id,
              showCheckmark: false,
              onSelected: (_) => _set(CardStyle.presetById(id)),
            ),
          if (s.preset == 'custom')
            const ChoiceChip(
              label: Text('Custom'),
              selected: true,
              showCheckmark: false,
              onSelected: null,
            ),
        ],
      ),
    );
  }

  // --- layout -------------------------------------------------------

  Widget _layout(CardStyle s) {
    return SectionCard(
      title: 'Title',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _label('Position'),
          SizedBox(
            width: double.infinity,
            child: SegmentedButton<CardTitle>(
              showSelectedIcon: false,
              segments: const [
                ButtonSegment(
                  value: CardTitle.overlay,
                  label: Text('On card'),
                  icon: Icon(Icons.vertical_align_bottom_rounded),
                ),
                ButtonSegment(
                  value: CardTitle.below,
                  label: Text('Below'),
                  icon: Icon(Icons.notes_rounded),
                ),
                ButtonSegment(
                  value: CardTitle.hidden,
                  label: Text('Hidden'),
                  icon: Icon(Icons.visibility_off_rounded),
                ),
              ],
              selected: {s.title},
              onSelectionChanged: (v) =>
                  _edit((c) => c.copyWith(title: v.first)),
            ),
          ),
          if (s.title != CardTitle.hidden) ...[
            SizedBox(height: Dimens.gap),
            Row(
              children: [
                _label('Lines'),
                const Spacer(),
                SegmentedButton<int>(
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment(value: 1, label: Text('1')),
                    ButtonSegment(value: 2, label: Text('2')),
                  ],
                  selected: {s.titleLines},
                  onSelectionChanged: (v) =>
                      _edit((c) => c.copyWith(titleLines: v.first)),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  // --- size & shape ------------------------------------------------

  Widget _sizeShape(CardStyle s) {
    return SectionCard(
      title: 'Size & shape',
      child: Column(
        children: [
          _slider(
            'Card size',
            s.widthScale,
            0.75,
            1.35,
            (v) => _edit((c) => c.copyWith(widthScale: v)),
            display: '${(s.widthScale * 100).round()}%',
          ),
          _slider(
            'Poster shape',
            s.aspect,
            1.2,
            1.62,
            (v) => _edit((c) => c.copyWith(aspect: v)),
            display: s.aspect.toStringAsFixed(2),
          ),
          _slider(
            'Corner radius',
            s.radius,
            2,
            28,
            (v) => _edit((c) => c.copyWith(radius: v)),
            display: '${s.radius.round()}',
          ),
        ],
      ),
    );
  }

  // --- overlays --------------------------------------------------

  Widget _overlays(CardStyle s) {
    return SectionCard(
      title: 'Overlays',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _label('Progress'),
          SizedBox(
            width: double.infinity,
            child: SegmentedButton<CardProgressStyle>(
              showSelectedIcon: false,
              segments: const [
                ButtonSegment(
                  value: CardProgressStyle.pill,
                  label: Text('Pill'),
                ),
                ButtonSegment(value: CardProgressStyle.bar, label: Text('Bar')),
                ButtonSegment(
                  value: CardProgressStyle.none,
                  label: Text('Off'),
                ),
              ],
              selected: {s.progress},
              onSelectionChanged: (v) =>
                  _edit((c) => c.copyWith(progress: v.first)),
            ),
          ),
          SizedBox(height: Dimens.gap),
          _label('Score badge'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final entry in const {
                CardCorner.none: 'Off',
                CardCorner.topLeft: 'Top left',
                CardCorner.topRight: 'Top right',
                CardCorner.bottomLeft: 'Bottom left',
                CardCorner.bottomRight: 'Bottom right',
              }.entries)
                ChoiceChip(
                  label: Text(entry.value),
                  selected: s.scoreCorner == entry.key,
                  showCheckmark: false,
                  onSelected: (_) =>
                      _edit((c) => c.copyWith(scoreCorner: entry.key)),
                ),
            ],
          ),
          const SizedBox(height: 4),
          if (s.title == CardTitle.below)
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Info line under title'),
              subtitle: const Text('progress | total'),
              value: s.infoLine,
              onChanged: (v) => _edit((c) => c.copyWith(infoLine: v)),
            ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Airing dot'),
            subtitle: const Text('for currently releasing titles'),
            value: s.airingDot,
            onChanged: (v) => _edit((c) => c.copyWith(airingDot: v)),
          ),
        ],
      ),
    );
  }

  // --- bits --------------------------------------------------------

  Widget _label(String t) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(
      t,
      style: context.textTheme.labelLarge?.copyWith(
        color: context.colorScheme.onSurfaceVariant,
      ),
    ),
  );

  Widget _slider(
    String name,
    double value,
    double min,
    double max,
    ValueChanged<double> onChanged, {
    required String display,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(name, style: context.textTheme.bodyMedium)),
            Text(
              display,
              style: context.textTheme.labelLarge?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
        Slider(
          value: value.clamp(min, max),
          min: min,
          max: max,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
