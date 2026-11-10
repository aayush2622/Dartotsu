import '../../Widgets/Components/ScrollConfig.dart';

import 'dart:convert';

import 'package:dartotsu_extension_bridge/Models/SourceFilter.dart';
import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';

List<SourceFilter> copyFilters(List<SourceFilter> list) => [
  for (final f in list)
    SourceFilter.fromJson(
      Map<String, dynamic>.from(jsonDecode(jsonEncode(f.toJson())) as Map),
    ),
];

Future<List<SourceFilter>?> showSourceFilters(
  BuildContext context,
  List<SourceFilter> initial, {
  required VoidCallback onReset,
}) => showCustomBottomDialog<List<SourceFilter>>(
  context,
  SourceFilterSheet(initial: initial, onReset: onReset),
);

class SourceFilterSheet extends StatefulWidget {
  final List<SourceFilter> initial;
  final VoidCallback onReset;

  const SourceFilterSheet({
    super.key,
    required this.initial,
    required this.onReset,
  });

  @override
  State<SourceFilterSheet> createState() => _SourceFilterSheetState();
}

class _SourceFilterSheetState extends State<SourceFilterSheet> {
  late final List<SourceFilter> _working = copyFilters(widget.initial);
  final _tick = Trigger();

  void _change(VoidCallback edit) {
    edit();
    _tick.fire();
  }

  Widget _filter(BuildContext context, SourceFilter f) {
    final scheme = context.colorScheme;
    switch (f.type) {
      case 'header':
        return Padding(
          padding: EdgeInsets.only(top: Dimens.gap, bottom: Dimens.gapXs),
          child: Text(
            f.name,
            style: context.textTheme.titleSmall?.copyWith(
              color: scheme.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      case 'separator':
        return const Divider();
      case 'text':
        return Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
          child: TextFormField(
            initialValue: f.textValue,
            decoration: InputDecoration(labelText: f.name),
            onChanged: (v) => f.textValue = v,
          ),
        );
      case 'checkbox':
        return CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(f.name),
          value: f.checkBoxValue ?? false,
          onChanged: (v) => _change(() => f.checkBoxValue = v ?? false),
        );
      case 'tri_state':
        final state = f.triState ?? 0;
        return ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(f.name),
          leading: Icon(switch (state) {
            1 => Icons.check_box_rounded,
            2 => Icons.indeterminate_check_box_rounded,
            _ => Icons.check_box_outline_blank_rounded,
          }, color: state == 0 ? scheme.outline : scheme.primary),
          onTap: () => _change(() => f.triState = (state + 1) % 3),
        );
      case 'select':
        final options = f.selectOptions ?? const <String>[];
        if (options.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
          child: DropdownButtonFormField<int>(
            initialValue: (f.selectIndex ?? 0).clamp(0, options.length - 1),
            isExpanded: true,
            decoration: InputDecoration(labelText: f.name),
            items: [
              for (final (i, o) in options.indexed)
                DropdownMenuItem(value: i, child: Text(o)),
            ],
            onChanged: (v) => _change(() => f.selectIndex = v ?? 0),
          ),
        );
      case 'sort':
        final options = f.sortOptions ?? const <String>[];
        if (options.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
          child: Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<int>(
                  initialValue: (f.sortIndex ?? 0).clamp(0, options.length - 1),
                  isExpanded: true,
                  decoration: InputDecoration(labelText: f.name),
                  items: [
                    for (final (i, o) in options.indexed)
                      DropdownMenuItem(value: i, child: Text(o)),
                  ],
                  onChanged: (v) => _change(() => f.sortIndex = v ?? 0),
                ),
              ),
              IconButton(
                onPressed: () => _change(
                  () => f.sortAscending = !(f.sortAscending ?? false),
                ),
                icon: Icon(
                  (f.sortAscending ?? false)
                      ? Icons.arrow_upward_rounded
                      : Icons.arrow_downward_rounded,
                ),
              ),
            ],
          ),
        );
      case 'group':
        return ExpansionTile(
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          shape: const Border(),
          collapsedShape: const Border(),
          title: Text(
            f.name,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          children: [for (final c in f.group ?? const []) _filter(context, c)],
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) => AppSheet(
    title: getString.filters,
    heightFactor: 0.85,
    child: Column(
      children: [
        Expanded(
          child: ScrollConfig(
            context,
            child: ScrollConfig(context, child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
              child: Watch(() {
                _tick.track();
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [for (final f in _working) _filter(context, f)],
                );
              }),
            )),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gap,
            Dimens.pagePad,
            Dimens.gapLg,
          ),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    widget.onReset();
                    popPage(context);
                  },
                  child: Text(getString.reset),
                ),
              ),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: FilledButton(
                  onPressed: () => popPage(context, _working),
                  child: Text(getString.apply),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
