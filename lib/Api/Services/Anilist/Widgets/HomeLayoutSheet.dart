import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';
import '../AnilistPrefs.dart';

class HomeLayoutSheet extends StatefulWidget {
  const HomeLayoutSheet({super.key});

  @override
  State<HomeLayoutSheet> createState() => _HomeLayoutSheetState();
}

class _HomeLayoutSheetState extends State<HomeLayoutSheet> {
  late final _entries = AnilistPref.homeLayout.value.entries
      .map((e) => MapEntry(e.key, e.value))
      .toList()
      .obs;

  void _save() {
    AnilistPref.homeLayout.rx.value = {
      for (final e in _entries) e.key: e.value,
    };
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
                  'Home sections',
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
                child: Obx(
                  () => ReorderableListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: _entries.length,
                    onReorder: _reorder,
                    itemBuilder: (context, i) {
                      final entry = _entries[i];
                      return Padding(
                        key: ValueKey(entry.key),
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(14),
                          child: SwitchListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            title: Text(
                              entry.key,
                              style: context.textTheme.bodyLarge,
                            ),
                            value: entry.value,
                            onChanged: (v) => _toggle(i, v),
                            secondary: ReorderableDragStartListener(
                              index: i,
                              child: Icon(
                                Icons.drag_handle_rounded,
                                color: scheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> showHomeLayoutSheet(BuildContext context) =>
    showCustomBottomDialog<void>(
      context,
      const FractionallySizedBox(heightFactor: 0.8, child: HomeLayoutSheet()),
    );
