import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Api/Mutations.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';

const _statuses = {
  'CURRENT': 'Watching / Reading',
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

  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      title: media.mainName,
      viewList: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text('Status', style: context.textTheme.labelMedium),
              Obx(
                () => Wrap(
                  spacing: 8,
                  children: [
                    for (final e in _statuses.entries)
                      ChoiceChip(
                        label: Text(e.value),
                        selected: status.value == e.key,
                        onSelected: (_) => status.value = e.key,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Obx(
                () => Row(
                  children: [
                    Text('Progress', style: context.textTheme.labelMedium),
                    const Spacer(),
                    IconButton(
                      onPressed: progress.value > 0
                          ? () => progress.value--
                          : null,
                      icon: const Icon(Icons.remove_circle_outline),
                    ),
                    Text(
                      total == null
                          ? '${progress.value}'
                          : '${progress.value} / $total',
                      style: context.textTheme.titleMedium,
                    ),
                    IconButton(
                      onPressed: (total == null || progress.value < total)
                          ? () => progress.value++
                          : null,
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text('Score', style: context.textTheme.labelMedium),
              Obx(
                () => Slider(
                  value: score.value.clamp(0, 100),
                  max: 100,
                  divisions: 20,
                  label: (score.value / 10).toStringAsFixed(1),
                  onChanged: (v) => score.value = v,
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => Row(
                  children: [
                    if (media.userListId != null)
                      TextButton.icon(
                        onPressed: busy.value ? null : remove,
                        icon: const Icon(Icons.delete_outline),
                        label: const Text('Remove'),
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
