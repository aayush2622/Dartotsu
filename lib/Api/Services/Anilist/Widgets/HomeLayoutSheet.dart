import 'package:flutter/material.dart';

import '../../../../Core/ThemeManager/ThemeController.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/State/State.dart';

class HomeLayoutSheet extends StatefulWidget {
  final String title;
  final Pref<Map<String, bool>> pref;

  const HomeLayoutSheet({
    super.key,
    this.title = 'Home sections',
    required this.pref,
  });

  @override
  State<HomeLayoutSheet> createState() => _HomeLayoutSheetState();
}

class _HomeLayoutSheetState extends State<HomeLayoutSheet> {
  late final _entries = widget.pref.value.entries
      .map((e) => MapEntry(e.key, e.value))
      .toList()
      .liveList;

  void _save() {
    widget.pref.rx.value = {for (final e in _entries) e.key: e.value};
  }

  void _toggle(int index, bool value) {
    _entries[index] = MapEntry(_entries[index].key, value);
    _save();
  }

  void _reorder(int from, int to) {
    final target = to > from ? to - 1 : to;
    _entries.insert(target, _entries.removeAt(from));
    _save();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      child: ThemedContainer(
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
                  widget.title,
                  style: context.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: Text(
                  'Drag to reorder. Hidden sections are never fetched.',
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
                    itemCount: _entries.length,
                    onReorder: _reorder,
                    itemBuilder: (context, i) {
                      final entry = _entries[i];
                      final first = i == 0;
                      final last = i == _entries.length - 1;
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
                                  entry.key,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                trailing: Switch(
                                  value: entry.value,
                                  onChanged: (v) => _toggle(i, v),
                                ),
                                onTap: () => _toggle(i, !entry.value),
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
  String title = 'Home sections',
  required Pref<Map<String, bool>> pref,
}) => showCustomBottomDialog<void>(
  context,
  FractionallySizedBox(
    heightFactor: 0.8,
    child: HomeLayoutSheet(title: title, pref: pref),
  ),
);
