import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Model/Date.dart';
import '../../Core/Services/Screens/ListEditorDraft.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadNav.dart';
import 'AppControls.dart';
import 'SectionCard.dart';

class ListEditorPad extends StatelessWidget {
  final Widget child;

  const ListEditorPad({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(
      horizontal: Dimens.pagePad,
      vertical: Dimens.gapXs,
    ),
    child: child,
  );
}

class ListStatusField extends StatelessWidget {
  final ListEditorDraft draft;
  final Map<String, String> statuses;

  const ListStatusField({
    super.key,
    required this.draft,
    required this.statuses,
  });

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: LabeledField(
      label: 'Status',
      child: Obx(
        () => AppChoiceChips<String>(
          options: [
            for (final e in statuses.entries) AppSegment(e.key, label: e.value),
          ],
          value: draft.status.value,
          onChanged: (v) => draft.status.value = v,
        ),
      ),
    ),
  );
}

class ListProgressField extends StatefulWidget {
  final ListEditorDraft draft;
  final int? total;

  const ListProgressField({super.key, required this.draft, this.total});

  @override
  State<ListProgressField> createState() => _ListProgressFieldState();
}

class _ListProgressFieldState extends State<ListProgressField> {
  late final _controller = TextEditingController(
    text: widget.draft.progress.value.toString(),
  );
  Worker? _worker;

  @override
  void initState() {
    super.initState();
    _worker = ever(widget.draft.progress, (v) {
      if (_controller.text != '$v') _controller.text = '$v';
    });
  }

  @override
  void dispose() {
    _worker?.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _bump(int by) {
    final next = widget.draft.progress.value + by;
    final max = widget.total;
    widget.draft.progress.value = next.clamp(0, max ?? 1 << 30);
  }

  @override
  Widget build(BuildContext context) {
    final total = widget.total;
    return ListEditorPad(
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: 'Progress',
                prefixIcon: const Icon(Icons.timelapse_rounded),
                suffixText: '/ ${total ?? '??'}',
              ),
              onChanged: (v) =>
                  widget.draft.progress.value = int.tryParse(v) ?? 0,
            ),
          ),
          SizedBox(width: Dimens.gapSm),
          IconButton.filledTonal(
            onPressed: () => _bump(1),
            icon: const Icon(Icons.add_rounded),
          ),
          if (total != null)
            IconButton.filledTonal(
              onPressed: () => widget.draft.progress.value = total,
              icon: const Icon(Icons.last_page_rounded),
            ),
        ],
      ),
    );
  }
}

class ListScoreField extends StatefulWidget {
  final ListEditorDraft draft;

  const ListScoreField({super.key, required this.draft});

  @override
  State<ListScoreField> createState() => _ListScoreFieldState();
}

class _ListScoreFieldState extends State<ListScoreField> {
  late final _controller = TextEditingController(
    text: widget.draft.score.value == 0
        ? ''
        : (widget.draft.score.value / 10).toString(),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: TextField(
      controller: _controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^(10(\.0?)?|\d(\.\d?)?)?$')),
      ],
      decoration: const InputDecoration(
        labelText: 'Score',
        prefixIcon: Icon(Icons.star_rounded),
        suffixText: '/ 10',
      ),
      onChanged: (v) => widget.draft.score.value =
          ((double.tryParse(v) ?? 0) * 10).round().clamp(0, 100),
    ),
  );
}

class ListDatesField extends StatelessWidget {
  final ListEditorDraft draft;

  const ListDatesField({super.key, required this.draft});

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: Row(
      children: [
        Expanded(
          child: _DateTile(label: 'Started', date: draft.startedAt),
        ),
        SizedBox(width: Dimens.gapSm),
        Expanded(
          child: _DateTile(label: 'Completed', date: draft.completedAt),
        ),
      ],
    ),
  );
}

class _DateTile extends StatelessWidget {
  final String label;
  final Rxn<Date> date;

  const _DateTile({required this.label, required this.date});

  Future<void> _pick(BuildContext context) async {
    final current = date.value;
    final picked = await showDatePicker(
      context: context,
      initialDate: current?.year == null
          ? DateTime.now()
          : DateTime(current!.year!, current.month ?? 1, current.day ?? 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      date.value = Date(
        year: picked.year,
        month: picked.month,
        day: picked.day,
      );
    }
  }

  @override
  Widget build(BuildContext context) => Obx(() {
    final text = date.value?.getFormattedDate() ?? '';
    return DpadTap(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _pick(context),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(Icons.event_rounded),
          suffixIcon: text.isEmpty
              ? null
              : IconButton(
                  icon: const Icon(Icons.close_rounded, size: 18),
                  onPressed: () => date.value = null,
                ),
        ),
        isEmpty: text.isEmpty,
        child: Text(text, maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
    );
  });
}

class ListPrivateField extends StatelessWidget {
  final ListEditorDraft draft;

  const ListPrivateField({super.key, required this.draft});

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: Obx(
      () => SwitchListTile(
        contentPadding: EdgeInsets.zero,
        secondary: const Icon(Icons.lock_outline_rounded),
        title: const Text('Private'),
        value: draft.isPrivate.value,
        onChanged: (v) => draft.isPrivate.value = v,
      ),
    ),
  );
}

class ListOtherSection extends StatelessWidget {
  final ListEditorDraft draft;

  const ListOtherSection({super.key, required this.draft});

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: SectionCard(
      title: 'Other',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            initialValue: draft.repeat.value.toString(),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(
              labelText: 'Total repeats',
              prefixIcon: Icon(Icons.redo_rounded),
            ),
            onChanged: (v) => draft.repeat.value = int.tryParse(v) ?? 0,
          ),
          SizedBox(height: Dimens.gapSm),
          TextFormField(
            initialValue: draft.notes.value,
            minLines: 2,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
              labelText: 'Notes',
              prefixIcon: Icon(Icons.edit_note_rounded),
            ),
            onChanged: (v) => draft.notes.value = v,
          ),
          Obx(() {
            if (draft.customLists.isEmpty) return const SizedBox.shrink();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Dimens.gap),
                Text(
                  'Custom lists',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                for (final e in draft.customLists.entries)
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(e.key),
                    value: e.value,
                    onChanged: (v) => draft.customLists[e.key] = v,
                  ),
              ],
            );
          }),
        ],
      ),
    ),
  );
}
