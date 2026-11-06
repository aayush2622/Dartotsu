import 'package:flutter/material.dart';

import '../../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'SourceSubTile.dart';

Future<void> showSourceSubsSheet(BuildContext context) =>
    showCustomBottomDialog<void>(context, const SourceSubsSheet());

class SourceSubsSheet extends StatefulWidget {
  const SourceSubsSheet({super.key});

  @override
  State<SourceSubsSheet> createState() => _SourceSubsSheetState();
}

class _SourceSubsSheetState extends State<SourceSubsSheet> {
  final manager = Live<String?>(null);
  final kind = Live<String?>(null);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final all = find<SourceSubscriptions>().subs.toList();
    final names = <String, String>{
      for (final s in all) s.managerId: s.managerName,
    };
    final picked = names.containsKey(manager.value) ? manager.value : null;
    final kinds = {for (final s in all) s.type};
    final pickedKind = kinds.contains(kind.value) ? kind.value : null;
    final shown = [
      for (final s in all)
        if ((picked == null || s.managerId == picked) &&
            (pickedKind == null || s.type == pickedKind))
          s,
    ];
    return AppSheet(
      title: getString.sourceManage,
      heightFactor: 0.8,
      child: all.isEmpty
          ? EmptyState(
              icon: Icons.notifications_none_rounded,
              title: getString.sourceEmpty,
              message: getString.sourceEmptyMessage,
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    Dimens.gap,
                    Dimens.gapXs,
                    Dimens.gap,
                    Dimens.gapSm,
                  ),
                  child: AppChoiceChips<String?>(
                    scrollable: true,
                    value: pickedKind,
                    onChanged: (v) => kind.value = v,
                    options: [
                      AppSegment<String?>(null, label: getString.sourceAll),
                      AppSegment<String?>(
                        'anime',
                        label: getString.anime,
                        icon: Icons.movie_outlined,
                      ),
                      AppSegment<String?>(
                        'manga',
                        label: getString.manga,
                        icon: Icons.menu_book_outlined,
                      ),
                      if (kinds.contains('novel'))
                        AppSegment<String?>(
                          'novel',
                          label: getString.novel,
                          icon: Icons.auto_stories_outlined,
                        ),
                    ],
                  ),
                ),
                if (names.length > 1)
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      Dimens.gap,
                      Dimens.gapXs,
                      Dimens.gap,
                      Dimens.gapSm,
                    ),
                    child: AppChoiceChips<String?>(
                      scrollable: true,
                      value: picked,
                      onChanged: (v) => manager.value = v,
                      options: [
                        AppSegment<String?>(null, label: getString.sourceAll),
                        for (final e in names.entries)
                          AppSegment<String?>(e.key, label: e.value),
                      ],
                    ),
                  ),
                Expanded(
                  child: ScrollConfig(
                    context,
                    child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(
                        Dimens.gap,
                        Dimens.gapXs,
                        Dimens.gap,
                        Dimens.gapXl,
                      ),
                      itemCount: shown.length,
                      itemBuilder: (_, i) {
                        final s = shown[i];
                        return SourceSubTile(
                          key: ValueKey(s.key),
                          sub: s,
                          dimmed: !isManagerActive(s),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
