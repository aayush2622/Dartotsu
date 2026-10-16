import 'package:flutter/material.dart';

import '../../../../Utils/Animation/WidgetAnimations.dart';

import '../Data/EpisodeUnits.dart';
import '../../../../Utils/Extensions/Responsive.dart';

class UnitLayout extends StatelessWidget {
  final List<WatchUnit> units;
  final int view;
  final Widget Function(WatchUnit unit) builder;

  const UnitLayout({
    super.key,
    required this.units,
    required this.view,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    if (view == 0) {
      return Column(
        children: [
          for (final u in units)
            Padding(
              padding: EdgeInsets.only(bottom: Dimens.gapSm),
              child: builder(u),
            ),
        ],
      );
    }
    return LayoutBuilder(
      builder: (context, box) {
        final gap = Dimens.gapSm;
        final target = view == 1 ? 190.0 : 64.0;
        final columns = (box.maxWidth / target).floor().clamp(
          view == 1 ? 2 : 4,
          16,
        );
        final width = (box.maxWidth - gap * (columns - 1)) / columns;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final u in units)
              SizedBox(
                width: width,
                height: view == 2 ? 48 : null,
                child: builder(u),
              ),
          ],
        );
      },
    );
  }
}

class UnitSliver extends StatelessWidget {
  final List<WatchUnit> units;
  final int view;
  final Widget Function(WatchUnit unit) builder;

  const UnitSliver({
    super.key,
    required this.units,
    required this.view,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    if (view != 0) {
      return SliverToBoxAdapter(
        child: UnitLayout(units: units, view: view, builder: builder),
      );
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) => Padding(
          padding: EdgeInsets.only(bottom: Dimens.gapSm),
          child: builder(units[i]).animateVerticalEntrance(),
        ),
        childCount: units.length,
      ),
    );
  }
}
