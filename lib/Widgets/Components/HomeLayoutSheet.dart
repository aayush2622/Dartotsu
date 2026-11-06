import 'package:flutter/material.dart';

import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import 'CustomBottomDialog.dart';
import 'ThemedContainer.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/SectionTitles.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import 'ScreenState.dart';
import 'HomeLayoutState.dart';

class HomeLayoutSheet extends StatefulWidget {
  final String? title;
  final Pref<Map<String, bool>> pref;

  const HomeLayoutSheet({super.key, this.title, required this.pref});

  @override
  State<HomeLayoutSheet> createState() => _HomeLayoutSheetState();
}

class _HomeLayoutSheetState extends State<HomeLayoutSheet>
    with ScreenStateHost<HomeLayoutSheet, HomeLayoutState> {
  @override
  HomeLayoutState buildState() => HomeLayoutState(widget.pref);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
        blur: true,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24, top: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: scheme.onSurface.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 4),
                child: Text(
                  widget.title ?? getString.homeSections,
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: Text(
                  getString.homeSectionsHint,
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
              Flexible(
                child: Watch(() {
                  final glass = find<ThemeController>().useGlassMode.value;
                  final fill = glass
                      ? scheme.surface.withValues(alpha: 0.28)
                      : scheme.surfaceContainerLow;
                  return ReorderableListView.builder(
                    shrinkWrap: true,
                    buildDefaultDragHandles: false,
                    padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
                    itemCount: state.entries.length,
                    onReorder: state.reorder,
                    itemBuilder: (context, i) {
                      final entry = state.entries[i];
                      final first = i == 0;
                      final last = i == state.entries.length - 1;
                      return ClipRRect(
                        key: ValueKey(entry.key),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(first ? Dimens.radius : 0),
                          bottom: Radius.circular(last ? Dimens.radius : 0),
                        ),
                        child: Material(
                          color: fill,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!first)
                                Divider(
                                  height: 1,
                                  indent: 56,
                                  color: scheme.outlineVariant.withValues(
                                    alpha: 0.5,
                                  ),
                                ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 2,
                                ),
                                leading: MouseRegion(
                                  cursor: SystemMouseCursors.grab,
                                  child: ReorderableDragStartListener(
                                    index: i,
                                    child: Icon(
                                      Icons.drag_indicator_rounded,
                                      color: scheme.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  sectionLabel(entry.key),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: Switch(
                                  value: entry.value,
                                  onChanged: (v) => state.toggle(i, v),
                                ),
                                onTap: () => state.toggle(i, !entry.value),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> showHomeLayoutSheet(
  BuildContext context, {
  String? title,
  required Pref<Map<String, bool>> pref,
}) => showCustomBottomDialog<void>(
  context,
  FractionallySizedBox(
    heightFactor: 0.8,
    child: HomeLayoutSheet(title: title, pref: pref),
  ),
);
