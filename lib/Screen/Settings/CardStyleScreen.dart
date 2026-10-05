import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/PosterCard.dart';

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
  Widget buildContent(BuildContext context) {
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 4,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: scheme.primary,
          ),
          onPressed: () => popPage(context),
        ),
        title: Text(
          'Card style',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: scheme.primary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => _set(const CardStyle()),
            child: const Text('Reset'),
          ),
        ],
      ),
      body: CustomScrollConfig(
        context,
        children: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              Dimens.gapSm,
              Dimens.pagePad,
              Dimens.gapXl,
            ),
            sliver: SliverToBoxAdapter(
              child: Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _bodyChildren(_draft.value),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _bodyChildren(CardStyle s) {
    final grid = s.isGrid;
    return [
      _preview(s),
      SizedBox(height: Dimens.gap),
      _layoutType(s),
      if (grid) ...[SizedBox(height: Dimens.gap), _presets(s)],
      SizedBox(height: Dimens.gap),
      _layout(s),
      SizedBox(height: Dimens.gap),
      _shape(s),
      if (!s.compact) ...[SizedBox(height: Dimens.gap), _overlays(s)],
    ];
  }

  Widget _layoutType(CardStyle s) {
    return SectionCard(
      title: 'Layout',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSegmented<CardLayout>(
            value: s.layout,
            onChanged: (v) => _edit((c) => c.copyWith(layout: v)),
            segments: const [
              AppSegment(
                CardLayout.grid,
                label: 'Card',
                icon: Icons.grid_view_rounded,
              ),
              AppSegment(
                CardLayout.list,
                label: 'List',
                icon: Icons.view_list_rounded,
              ),
              AppSegment(
                CardLayout.banner,
                label: 'Banner',
                icon: Icons.view_agenda_rounded,
              ),
            ],
          ),
          SizedBox(height: Dimens.gapXs),
          Text(
            switch (s.layout) {
              CardLayout.grid => 'A horizontal shelf of poster cards.',
              CardLayout.list =>
                'A compact, top-to-bottom list — thumbnail and title in a row.',
              CardLayout.banner =>
                'A wide, top-to-bottom list with a blurred banner behind each row.',
            },
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _previewCards(CardStyle s) => [
    PosterCard(
      style: s,
      demo: true,
      title: 'Solo Leveling Season 2 – Arise from the Shadow',
      subtitle: '1  |  3 / 12',
      score: 8.6,
      airing: true,
      progress: 0.34,
      progressText: '1 · 12',
    ),
    PosterCard(
      style: s,
      demo: true,
      title: 'BLEACH: Thousand-Year Blood War',
      subtitle: '~  |  14',
      score: 8.7,
      scoreHighlight: true,
      progressText: '0 · 14',
    ),
  ];

  Widget _preview(CardStyle s) {
    final cards = _previewCards(s);
    if (!s.isGrid) {
      return SectionCard(
        title: 'Preview',
        child: Column(
          children: [
            for (final (i, c) in cards.indexed) ...[
              c,
              if (i != cards.length - 1) SizedBox(height: Dimens.cardGap),
            ],
          ],
        ),
      );
    }
    return SectionCard(
      title: 'Preview',
      child: SizedBox(
        height: s.itemHeight + 8,
        child: ScrollConfig(
          context,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (final c in cards) ...[c, SizedBox(width: Dimens.cardGap)],
            ],
          ),
        ),
      ),
    );
  }

  Widget _presets(CardStyle s) {
    const names = {
      'poster': 'Poster',
      'card': 'Card',
      'cozy': 'Cozy',
      'compact': 'Compact',
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

  Widget _layout(CardStyle s) {
    return SectionCard(
      title: 'Style',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (s.isGrid) ...[
            LabeledField(
              label: 'Mode',
              child: AppSegmented<CardMode>(
                value: s.mode,
                onChanged: (v) => _edit((c) => c.copyWith(mode: v)),
                segments: const [
                  AppSegment(
                    CardMode.normal,
                    label: 'Normal',
                    icon: Icons.crop_portrait_rounded,
                  ),
                  AppSegment(
                    CardMode.onCard,
                    label: 'On card',
                    icon: Icons.vertical_align_bottom_rounded,
                  ),
                  AppSegment(
                    CardMode.inCard,
                    label: 'In card',
                    icon: Icons.dashboard_rounded,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimens.gap),
          ],
          LabeledField(
            label: 'Size',
            child: AppSegmented<CardSize>(
              value: s.size,
              onChanged: (v) => _edit((c) => c.copyWith(size: v)),
              segments: const [
                AppSegment(CardSize.small, label: 'S'),
                AppSegment(CardSize.medium, label: 'M'),
                AppSegment(CardSize.large, label: 'L'),
                AppSegment(CardSize.custom, label: 'Custom'),
              ],
            ),
          ),
          if (s.size == CardSize.custom) ...[
            const SizedBox(height: 4),
            LabeledSlider(
              label: 'Card width',
              value: s.customScale,
              min: 0.7,
              max: 1.5,
              valueLabel: '${(s.customScale * 100).round()}%',
              onChanged: (v) => _edit((c) => c.copyWith(customScale: v)),
            ),
          ],
          SizedBox(height: Dimens.gapSm),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Compact'),
            subtitle: const Text('Cover and title only'),
            value: s.compact,
            onChanged: (v) => _edit((c) => c.copyWith(compact: v)),
          ),
          if (!s.compact)
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Title lines',
                    style: context.textTheme.bodyMedium,
                  ),
                ),
                AppSegmented<int>(
                  expand: false,
                  value: s.titleLines,
                  onChanged: (v) => _edit((c) => c.copyWith(titleLines: v)),
                  segments: const [
                    AppSegment(1, label: '1'),
                    AppSegment(2, label: '2'),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _shape(CardStyle s) {
    return SectionCard(
      title: 'Shape',
      child: Column(
        children: [
          LabeledSlider(
            label: 'Poster shape',
            value: s.aspect,
            min: 1.2,
            max: 1.62,
            valueLabel: s.aspect.toStringAsFixed(2),
            onChanged: (v) => _edit((c) => c.copyWith(aspect: v)),
          ),
          LabeledSlider(
            label: 'Corner radius',
            value: s.radius,
            min: 2,
            max: 28,
            valueLabel: '${s.radius.round()}',
            onChanged: (v) => _edit((c) => c.copyWith(radius: v)),
          ),
        ],
      ),
    );
  }

  Widget _overlays(CardStyle s) {
    final cornerOptions = [
      const AppSegment(CardCorner.none, label: 'Off'),
      const AppSegment(CardCorner.topLeft, label: 'Top left'),
      const AppSegment(CardCorner.topRight, label: 'Top right'),
      if (s.bottomCornersUsable) ...[
        const AppSegment(CardCorner.bottomLeft, label: 'Bottom left'),
        const AppSegment(CardCorner.bottomRight, label: 'Bottom right'),
      ],
    ];
    return SectionCard(
      title: 'Overlays',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabeledField(
            label: 'Progress / count',
            child: AppSegmented<CardProgressStyle>(
              value: s.progress,
              onChanged: (v) => _edit((c) => c.copyWith(progress: v)),
              segments: const [
                AppSegment(CardProgressStyle.pill, label: 'Pill'),
                AppSegment(CardProgressStyle.bar, label: 'Bar'),
                AppSegment(CardProgressStyle.outside, label: 'Outside'),
                AppSegment(CardProgressStyle.none, label: 'Off'),
              ],
            ),
          ),
          SizedBox(height: Dimens.gapXs),
          Text(
            'Pill and bar overlay the poster; outside shows the same count '
            'as plain text instead — pick one.',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gap),
          LabeledField(
            label: 'Score badge',
            child: AppChoiceChips<CardCorner>(
              value: s.bottomCornersUsable
                  ? s.scoreCorner
                  : switch (s.scoreCorner) {
                      CardCorner.bottomLeft => CardCorner.topLeft,
                      CardCorner.bottomRight => CardCorner.topRight,
                      final c => c,
                    },
              onChanged: (v) => _edit((c) => c.copyWith(scoreCorner: v)),
              options: cornerOptions,
            ),
          ),
          SizedBox(height: Dimens.gapSm),
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
}
