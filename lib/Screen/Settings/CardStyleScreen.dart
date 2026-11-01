import 'package:flutter/material.dart';

import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'CardStyleState.dart';

class CardStyleScreen extends StatefulWidget {
  const CardStyleScreen({super.key});

  @override
  State<CardStyleScreen> createState() => _CardStyleScreenState();
}

class _CardStyleScreenState extends BaseScreen<CardStyleScreen>
    with ScreenStateHost<CardStyleScreen, CardStyleState> {
  @override
  CardStyleState buildState() => CardStyleState();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.cardStyle,
        actions: [
          TextButton(onPressed: state.reset, child: Text(getString.reset)),
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
              child: Watch(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _bodyChildren(state.draft.value),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _bodyChildren(CardStyle s) {
    return [
      _preview(s),
      SizedBox(height: Dimens.gap),
      _presets(s),
      SizedBox(height: Dimens.gap),
      _layout(s),
      SizedBox(height: Dimens.gap),
      _shape(s),
      if (!s.compact) ...[SizedBox(height: Dimens.gap), _overlays(s)],
    ];
  }

  List<Widget> _previewCards(CardStyle s) => [
    PosterCard(
      style: s,
      demo: true,
      title: 'Solo Leveling Season 2 – Arise from the Shadow',
      subtitle: '1 | 3 | 12',
      score: 8.6,
      airing: true,
      progress: 0.34,
      progressText: '1 · 12',
      unread: 7,
    ),
    PosterCard(
      style: s,
      demo: true,
      title: 'BLEACH: Thousand-Year Blood War',
      subtitle: '~ | 14',
      score: 8.7,
      scoreHighlight: true,
      progressText: '0 · 14',
      unread: 14,
      estimate: '14',
    ),
  ];

  Widget _preview(CardStyle s) {
    final cards = _previewCards(s);
    return SectionCard(
      title: getString.preview,
      child: SizedBox(
        height: s.itemHeightFor(context) + 8,
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
    final names = {
      'poster': getString.cardPresetPoster,
      'card': getString.cardPresetCard,
      'cozy': getString.cardPresetCozy,
      'compact': getString.compact,
    };
    return SectionCard(
      title: getString.preset,
      child: AppChoiceChips<String>(
        value: s.preset,
        onChanged: (id) {
          if (id != 'custom') state.set(CardStyle.presetById(id));
        },
        options: [
          for (final id in CardStyle.presetIds)
            AppSegment(id, label: names[id]!),
          if (s.preset == 'custom')
            AppSegment('custom', label: getString.colorPickerCustom),
        ],
      ),
    );
  }

  Widget _layout(CardStyle s) {
    return SectionCard(
      title: getString.sectionStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...[
            LabeledField(
              label: getString.mode,
              child: AppSegmented<CardMode>(
                value: s.mode,
                onChanged: (v) => state.edit((c) => c.copyWith(mode: v)),
                segments: [
                  AppSegment(
                    CardMode.normal,
                    label: getString.cardNormal,
                    icon: Icons.crop_portrait_rounded,
                  ),
                  AppSegment(
                    CardMode.onCard,
                    label: getString.cardOnCard,
                    icon: Icons.vertical_align_bottom_rounded,
                  ),
                  AppSegment(
                    CardMode.inCard,
                    label: getString.cardInCard,
                    icon: Icons.dashboard_rounded,
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimens.gap),
          ],
          LabeledField(
            label: getString.size,
            child: AppSegmented<CardSize>(
              value: s.size,
              onChanged: (v) => state.edit((c) => c.copyWith(size: v)),
              segments: [
                const AppSegment(CardSize.small, label: 'S'),
                const AppSegment(CardSize.medium, label: 'M'),
                const AppSegment(CardSize.large, label: 'L'),
                AppSegment(CardSize.custom, label: getString.colorPickerCustom),
              ],
            ),
          ),
          if (s.size == CardSize.custom) ...[
            const SizedBox(height: 4),
            LabeledSlider(
              label: getString.cardWidth,
              value: s.customScale,
              min: 0.7,
              max: 1.5,
              valueLabel: '${(s.customScale * 100).round()}%',
              onChanged: (v) => state.edit((c) => c.copyWith(customScale: v)),
            ),
          ],
          SizedBox(height: Dimens.gapSm),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(getString.compact),
            subtitle: Text(getString.coverAndTitleOnly),
            value: s.compact,
            onChanged: (v) => state.edit((c) => c.copyWith(compact: v)),
          ),
          if (!s.compact)
            Row(
              children: [
                Expanded(
                  child: Text(
                    getString.titleLines,
                    style: context.textTheme.bodyMedium,
                  ),
                ),
                AppSegmented<int>(
                  expand: false,
                  value: s.titleLines,
                  onChanged: (v) =>
                      state.edit((c) => c.copyWith(titleLines: v)),
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
      title: getString.shape,
      child: Column(
        children: [
          LabeledSlider(
            label: getString.posterShape,
            value: s.aspect,
            min: 1.2,
            max: 1.62,
            valueLabel: s.aspect.toStringAsFixed(2),
            onChanged: (v) => state.edit((c) => c.copyWith(aspect: v)),
          ),
          LabeledSlider(
            label: getString.cornerRadius,
            value: s.radius,
            min: 2,
            max: 28,
            valueLabel: '${s.radius.round()}',
            onChanged: (v) => state.edit((c) => c.copyWith(radius: v)),
          ),
        ],
      ),
    );
  }

  Widget _overlays(CardStyle s) {
    final cornerOptions = [
      AppSegment(CardCorner.none, label: getString.off),
      AppSegment(CardCorner.topLeft, label: getString.topLeft),
      AppSegment(CardCorner.topRight, label: getString.topRight),
      if (s.bottomCornersUsable) ...[
        AppSegment(CardCorner.bottomLeft, label: getString.bottomLeft),
        AppSegment(CardCorner.bottomRight, label: getString.bottomRight),
      ],
    ];
    return SectionCard(
      title: getString.overlays,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabeledField(
            label: getString.progressCount,
            child: AppSegmented<CardProgressStyle>(
              value: s.effectiveProgress,
              onChanged: (v) => state.edit((c) => c.copyWith(progress: v)),
              segments: [
                AppSegment(CardProgressStyle.pill, label: getString.pill),
                AppSegment(CardProgressStyle.bar, label: getString.bar),
                AppSegment(
                  CardProgressStyle.outside,
                  label: s.mode == CardMode.onCard
                      ? getString.count
                      : getString.outside,
                ),
                if (s.mode != CardMode.onCard)
                  AppSegment(CardProgressStyle.none, label: getString.off),
              ],
            ),
          ),
          SizedBox(height: Dimens.gapXs),
          Text(
            getString.progressStyleHint,
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gap),
          LabeledField(
            label: getString.scoreBadge,
            child: AppChoiceChips<CardCorner>(
              value: s.bottomCornersUsable
                  ? s.scoreCorner
                  : switch (s.scoreCorner) {
                      CardCorner.bottomLeft => CardCorner.topLeft,
                      CardCorner.bottomRight => CardCorner.topRight,
                      final c => c,
                    },
              onChanged: (v) => state.edit((c) => c.copyWith(scoreCorner: v)),
              options: cornerOptions,
            ),
          ),
          SizedBox(height: Dimens.gapSm),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(getString.airingDot),
            subtitle: Text(getString.forReleasingTitles),
            value: s.airingDot,
            onChanged: (v) => state.edit((c) => c.copyWith(airingDot: v)),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(getString.unreadCounter),
            subtitle: Text(getString.unreadCounterDesc),
            value: s.unreadCounter,
            onChanged: (v) => state.edit((c) => c.copyWith(unreadCounter: v)),
          ),
          SizedBox(height: Dimens.gapSm),
          LabeledField(
            label: getString.statusBadgePosition,
            child: AppChoiceChips<CardCorner>(
              value: switch (s.statusCorner) {
                CardCorner.none => CardCorner.auto,
                CardCorner.bottomLeft when !s.bottomCornersUsable =>
                  CardCorner.topLeft,
                CardCorner.bottomRight when !s.bottomCornersUsable =>
                  CardCorner.topRight,
                final c => c,
              },
              onChanged: (v) => state.edit((c) => c.copyWith(statusCorner: v)),
              options: [
                AppSegment(CardCorner.auto, label: getString.statusAuto),
                ...cornerOptions.where((o) => o.value != CardCorner.none),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
