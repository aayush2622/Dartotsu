import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Api/Mutations.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';

const _statuses = {
  'CURRENT': 'Watching',
  'PLANNING': 'Planning',
  'COMPLETED': 'Completed',
  'PAUSED': 'Paused',
  'DROPPED': 'Dropped',
  'REPEATING': 'Repeating',
};

void showListEditor(
  BuildContext context, {
  required Media media,
  required Mutations mutations,
  required Future<void> Function() onSaved,
}) {
  final status = (media.userStatus ?? 'PLANNING').obs;
  final progress = (media.userProgress ?? 0).obs;
  final score = (media.userScore ?? 0).toDouble().obs;
  final total = media.totalUnits;
  final busy = false.obs;

  Future<void> save() async {
    busy.value = true;
    try {
      media
        ..userStatus = status.value
        ..userProgress = progress.value
        ..userScore = score.value.round();
      await mutations.editList(media);
      await onSaved();
      if (context.mounted) Navigator.pop(context);
      snackString('Saved to your list');
    } catch (e) {
      snackString('$e');
    } finally {
      busy.value = false;
    }
  }

  Future<void> remove() async {
    busy.value = true;
    try {
      await mutations.deleteFromList(media);
      await onSaved();
      if (context.mounted) Navigator.pop(context);
      snackString('Removed from your list');
    } catch (e) {
      snackString('$e');
    } finally {
      busy.value = false;
    }
  }

  Widget label(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: context.textTheme.labelLarge?.copyWith(
        color: context.colorScheme.onSurfaceVariant,
      ),
    ),
  );

  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      title: media.mainName,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              label('Status'),
              Obx(
                () => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final e in _statuses.entries)
                      ChoiceChip(
                        label: Text(e.value),
                        selected: status.value == e.key,
                        showCheckmark: false,
                        onSelected: (_) => status.value = e.key,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              label('Progress'),
              Obx(
                () => Row(
                  children: [
                    IconButton.filledTonal(
                      onPressed: progress.value > 0
                          ? () => progress.value--
                          : null,
                      icon: const Icon(Icons.remove_rounded),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          total == null
                              ? '${progress.value}'
                              : '${progress.value} / $total',
                          style: context.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    IconButton.filledTonal(
                      onPressed: (total == null || progress.value < total)
                          ? () => progress.value++
                          : null,
                      icon: const Icon(Icons.add_rounded),
                    ),
                    if (total != null) ...[
                      const SizedBox(width: 4),
                      TextButton(
                        onPressed: progress.value == total
                            ? null
                            : () => progress.value = total,
                        child: const Text('Max'),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Obx(
                () => LabeledSlider(
                  label: 'Score',
                  value: score.value,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  valueLabel: score.value == 0
                      ? '–'
                      : (score.value / 10).toStringAsFixed(1),
                  onChanged: (v) => score.value = v,
                ),
              ),
              const SizedBox(height: 12),
              Obx(
                () => Row(
                  children: [
                    if (media.userListId != null)
                      TextButton.icon(
                        onPressed: busy.value ? null : remove,
                        icon: const Icon(Icons.delete_outline_rounded),
                        label: const Text('Remove'),
                        style: TextButton.styleFrom(
                          foregroundColor: context.colorScheme.error,
                        ),
                      ),
                    const Spacer(),
                    FilledButton(
                      onPressed: busy.value ? null : save,
                      child: busy.value
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('Save'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    ),
  );
}
