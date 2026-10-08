import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Services/Model/Date.dart';
import '../../Core/Services/ScoreFormat.dart';
import '../../Core/Services/Screens/ListEditorDraft.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadNav.dart';
import 'AppControls.dart';
import 'SectionCard.dart';
import '../../Core/State/State.dart';

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
      child: Watch(
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
  Disposer? _sub;

  @override
  void initState() {
    super.initState();
    _sub = onChange(widget.draft.progress, (v) {
      if (_controller.text != '$v') _controller.text = '$v';
    });
  }

  @override
  void dispose() {
    _sub?.dispose();
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
    text: ScoreFormat.current.input(widget.draft.score.value),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  RegExp _allowed(ScoreFormat format) => switch (format) {
    ScoreFormat.point100 => RegExp(r'^(100|\d{0,2})$'),
    ScoreFormat.point10Decimal => RegExp(r'^(10(\.0?)?|\d(\.\d?)?)?$'),
    ScoreFormat.point10 => RegExp(r'^(10|\d?)$'),
    _ => RegExp(r'^[0-5]?$'),
  };

  @override
  Widget build(BuildContext context) {
    final format = ScoreFormat.current;
    if (!format.typed) {
      return ListEditorPad(
        child: Watch(
          () => LabeledField(
            label: 'Score',
            child: AppSegmented<int>(
              value: ScoreFormat.smileyStep(widget.draft.score.value),
              onChanged: (v) =>
                  widget.draft.score.value = ScoreFormat.smileyRaw(v),
              segments: const [
                AppSegment(0, label: '-'),
                AppSegment(1, label: ':('),
                AppSegment(2, label: ':|'),
                AppSegment(3, label: ':)'),
              ],
            ),
          ),
        ),
      );
    }
    return ListEditorPad(
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.numberWithOptions(decimal: format.decimal),
        inputFormatters: [FilteringTextInputFormatter.allow(_allowed(format))],
        decoration: InputDecoration(
          labelText: 'Score',
          prefixIcon: const Icon(Icons.star_rounded),
          suffixText: '/ ${format.max}',
        ),
        onChanged: (v) => widget.draft.score.value = format.toRaw(v),
      ),
    );
  }
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
  final Live<Date?> date;

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
  Widget build(BuildContext context) => Watch(() {
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
    child: Watch(
      () => Column(
        children: [
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.lock_outline_rounded),
            title: const Text('Private'),
            value: draft.isPrivate.value,
            onChanged: (v) => draft.isPrivate.value = v,
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            secondary: const Icon(Icons.visibility_off_outlined),
            title: const Text('Hide from status lists'),
            value: draft.hiddenFromStatusLists.value,
            onChanged: (v) => draft.hiddenFromStatusLists.value = v,
          ),
        ],
      ),
    ),
  );
}

class ListRepeatField extends StatelessWidget {
  final ListEditorDraft draft;
  final String label;

  const ListRepeatField({
    super.key,
    required this.draft,
    this.label = 'Total repeats',
  });

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: TextFormField(
      initialValue: draft.repeat.value.toString(),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: const Icon(Icons.redo_rounded),
      ),
      onChanged: (v) => draft.repeat.value = int.tryParse(v) ?? 0,
    ),
  );
}

class ListNotesField extends StatelessWidget {
  final ListEditorDraft draft;
  final String label;

  const ListNotesField({super.key, required this.draft, this.label = 'Notes'});

  @override
  Widget build(BuildContext context) => ListEditorPad(
    child: TextFormField(
      initialValue: draft.notes.value,
      minLines: 2,
      maxLines: null,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: const Icon(Icons.edit_note_rounded),
      ),
      onChanged: (v) => draft.notes.value = v,
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
          Watch(() {
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
