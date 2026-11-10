import '../../../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../WatchState.dart';

class WatchOptionsSheet extends StatelessWidget {
  final WatchState state;

  const WatchOptionsSheet({super.key, required this.state});

  @override
  Widget build(BuildContext context) => AppSheet(
    title: getString.watchOptions,
    child: ScrollConfig(
      context,
      child: ScrollConfig(
        context,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            0,
            Dimens.pagePad,
            Dimens.gapLg,
          ),
          child: Watch(() {
            final s = state.settings.value;
            final scanlators = state.scanlators.toList();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                LabeledField(
                  label: getString.watchLayout,
                  child: AppSegmented<int>(
                    value: s.view,
                    onChanged: (v) =>
                        state.updateSettings(s.copy()..viewType = v),
                    segments: [
                      AppSegment(
                        0,
                        icon: Icons.view_list_rounded,
                        label: getString.watchListView,
                      ),
                      AppSegment(
                        1,
                        icon: Icons.grid_view_rounded,
                        label: getString.watchGridView,
                      ),
                      AppSegment(
                        2,
                        icon: Icons.view_comfy_rounded,
                        label: getString.watchCompactView,
                      ),
                    ],
                  ),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(getString.watchReverse),
                  value: s.reverse,
                  onChanged: (v) => state.updateSettings(s.copy()..reverse = v),
                ),
                if (!state.fixedSource) ...[
                  SizedBox(height: Dimens.gapSm),
                  LabeledField(
                    label: getString.watchMatching,
                    child: AppSegmented<String>(
                      value: s.match,
                      onChanged: (v) =>
                          state.updateSettings(s.copy()..matchMode = v),
                      segments: [
                        AppSegment(
                          'closest',
                          label: getString.watchMatchClosest,
                        ),
                        AppSegment('exact', label: getString.watchMatchExact),
                      ],
                    ),
                  ),
                ],
                if (scanlators.length > 1 && state.seasons.isEmpty) ...[
                  SizedBox(height: Dimens.gap),
                  LabeledField(
                    label: getString.watchScanlators,
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final name in scanlators)
                          FilterChip(
                            label: Text(name),
                            selected: !s.hiddenScanlators.contains(name),
                            showCheckmark: false,
                            onSelected: (on) {
                              final next = s.copy();
                              on
                                  ? next.hiddenScanlators.remove(name)
                                  : next.hiddenScanlators.add(name);
                              state.updateSettings(next);
                            },
                          ),
                      ],
                    ),
                  ),
                ],
                SizedBox(height: Dimens.gapLg),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton.icon(
                    onPressed: () {
                      state.resetSettings();
                      popPage(context);
                    },
                    icon: const Icon(Icons.restart_alt_rounded),
                    label: Text(getString.watchResetOptions),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    ),
  );
}
