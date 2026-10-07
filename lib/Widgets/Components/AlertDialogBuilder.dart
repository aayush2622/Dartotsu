import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import 'ThemedContainer.dart';

class AlertDialogBuilder {
  final BuildContext context;
  String? _title;
  Widget? _titleWidget;
  String? _message;
  String? _positiveButtonTitle;
  String? _negativeButtonTitle;
  String? _neutralButtonTitle;
  VoidCallback? _onPositiveButtonClick;
  VoidCallback? _onNegativeButtonClick;
  VoidCallback? _onNeutralButtonClick;
  List<String>? _items;
  LiveList<bool>? _checkedItems;
  ValueChanged<List<bool>>? _onItemsSelected;
  final _selectedItemIndex = (-1).live;
  ValueChanged<int>? _onItemSelected;
  LiveList<String>? _reorderableItems;
  ValueChanged<List<String>>? _onReorderedItems;
  bool _isReorderableMultiSelectable = false;
  Widget? _customView;
  VoidCallback? _onShow;
  VoidCallback? _onAttach;
  VoidCallback? _onDismiss;
  bool _cancelable = true;
  bool _popOnFinish = true;

  AlertDialogBuilder(this.context);

  AlertDialogBuilder popOnFinish(bool popOnFinish) =>
      _with(() => _popOnFinish = popOnFinish);

  AlertDialogBuilder setCancelable(bool cancelable) =>
      _with(() => _cancelable = cancelable);

  AlertDialogBuilder setOnShowListener(VoidCallback onShow) =>
      _with(() => _onShow = onShow);

  AlertDialogBuilder setOnAttachListener(VoidCallback attach) =>
      _with(() => _onAttach = attach);

  AlertDialogBuilder setOnDismissListener(VoidCallback onDismiss) =>
      _with(() => _onDismiss = onDismiss);

  AlertDialogBuilder setTitle(String? title) => _with(() => _title = title);

  AlertDialogBuilder setTitleWidget(Widget? w) => _with(() => _titleWidget = w);

  AlertDialogBuilder setMessage(String? message) =>
      _with(() => _message = message);

  AlertDialogBuilder setCustomView(Widget customView) =>
      _with(() => _customView = customView);

  AlertDialogBuilder setPositiveButton(String? title, VoidCallback? onClick) =>
      _with(() {
        _positiveButtonTitle = title;
        _onPositiveButtonClick = onClick;
      });

  AlertDialogBuilder setNegativeButton(String? title, VoidCallback? onClick) =>
      _with(() {
        _negativeButtonTitle = title;
        _onNegativeButtonClick = onClick;
      });

  AlertDialogBuilder setNeutralButton(String? title, VoidCallback? onClick) =>
      _with(() {
        _neutralButtonTitle = title;
        _onNeutralButtonClick = onClick;
      });

  AlertDialogBuilder singleChoiceItems(
    List<String> items,
    int selectedItemIndex,
    ValueChanged<int> onItemSelected,
  ) => _with(() {
    _items = items;
    _selectedItemIndex.value = selectedItemIndex;
    _onItemSelected = onItemSelected;
  });

  AlertDialogBuilder multiChoiceItems(
    List<String> items,
    List<bool>? checkedItems,
    ValueChanged<List<bool>> onItemsSelected,
  ) => _with(() {
    _items = items;
    _checkedItems = LiveList<bool>(
      checkedItems ?? List<bool>.filled(items.length, false),
    );
    _onItemsSelected = onItemsSelected;
  });

  AlertDialogBuilder reorderableItems(
    List<String> items,
    ValueChanged<List<String>> onReorderedItems,
  ) => _with(() {
    _reorderableItems = LiveList<String>(items);
    _onReorderedItems = onReorderedItems;
  });

  AlertDialogBuilder reorderableMultiSelectableItems(
    List<String> items,
    List<bool>? checkedItems,
    ValueChanged<List<String>> onReorderedItems,
    ValueChanged<List<bool>> onReorderedItemsSelected,
  ) => _with(() {
    _reorderableItems = LiveList<String>(items);
    _checkedItems = LiveList<bool>(
      checkedItems ?? List<bool>.filled(items.length, false),
    );
    _onReorderedItems = onReorderedItems;
    _onItemsSelected = onReorderedItemsSelected;
    _isReorderableMultiSelectable = true;
  });

  Future<T?> show<T>() {
    final theme = Theme.of(context).colorScheme;

    _onAttach?.call();

    return showGeneralDialog<T>(
      context: context,
      barrierDismissible: _cancelable,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: Duration(
        milliseconds: (300 * kAnimationSpeed).round(),
      ),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
          reverseCurve: Curves.easeIn,
        );
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(scale: curved, child: child),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        _onShow?.call();
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: IntrinsicWidth(
              child: ThemedContainer(
                padding: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(32),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_titleWidget != null || _title != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child:
                              _titleWidget ??
                              Text(
                                _title ?? '',
                                style: context.textTheme.titleLarge?.copyWith(
                                  color: theme.primary,
                                ),
                              ),
                        ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height * 0.6,
                          ),
                          child: Watch(_buildContent),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: _buildActions(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ).then((value) {
      _onDismiss?.call();
      return value;
    });
  }

  Widget _buildContent() {
    if (_reorderableItems != null) {
      return _isReorderableMultiSelectable
          ? _buildReorderableSelectableContent()
          : _buildReorderableContent();
    } else if (_items != null) {
      return _onItemSelected != null
          ? _buildRadioListContent()
          : _buildCheckboxListContent();
    }
    return _buildDefaultContent();
  }

  Widget _buildReorderableContent() =>
      _buildReorderableWidget((oldIndex, newIndex) {
        if (newIndex > oldIndex) newIndex -= 1;
        final items = List<String>.from(_reorderableItems!);
        final item = items.removeAt(oldIndex);
        items.insert(newIndex, item);
        _reorderableItems!.assignAll(items);
        _onReorderedItems?.call(items);
      });

  Widget _buildReorderableSelectableContent() =>
      _buildReorderableWithCheckBoxWidget((oldIndex, newIndex) {
        if (newIndex > oldIndex) newIndex -= 1;
        final items = List<String>.from(_reorderableItems!);
        final checkedStates = List<bool>.from(_checkedItems!);
        final item = items.removeAt(oldIndex);
        final state = checkedStates.removeAt(oldIndex);
        items.insert(newIndex, item);
        checkedStates.insert(newIndex, state);
        _reorderableItems!.assignAll(items);
        _checkedItems!.assignAll(checkedStates);
        _onReorderedItems?.call(items);
        _onItemsSelected?.call(checkedStates);
      });

  Widget _buildReorderableWithCheckBoxWidget(
    void Function(int, int) onReorder,
  ) => SizedBox(
    width: MediaQuery.of(context).size.width * 0.7,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ReorderableListView(
            onReorder: onReorder,
            children: _reorderableItems!.asMap().entries.map((entry) {
              int index = entry.key;
              String item = entry.value;
              return CheckboxListTile(
                key: ValueKey(item),
                title: Text(
                  item,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: _checkedItems![index],
                onChanged: (bool? value) {
                  _checkedItems![index] = value!;
                  _onItemsSelected?.call(_checkedItems!);
                },
                controlAffinity: ListTileControlAffinity.leading,
              );
            }).toList(),
          ),
        ),
      ],
    ),
  );

  Widget _buildReorderableWidget(void Function(int, int) onReorder) => SizedBox(
    width: MediaQuery.of(context).size.width * 0.7,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ReorderableListView(
            onReorder: onReorder,
            children: _reorderableItems!.map((item) {
              return ListTile(
                key: ValueKey(item),
                title: Text(
                  item,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    ),
  );

  Widget _buildRadioListContent() {
    final selected = _selectedItemIndex.value;
    return _buildListContent(
      (item) => RadioListTile<int>(
        title: Text(
          item,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        value: _items!.indexOf(item),
        groupValue: selected,
        onChanged: (int? value) {
          _selectedItemIndex.value = value!;
          _onItemSelected?.call(value);
          popPage(context);
        },
      ),
    );
  }

  Widget _buildCheckboxListContent() {
    _checkedItems!.length;
    return _buildListContent((item) {
      final index = _items!.indexOf(item);
      return CheckboxListTile(
        title: Text(
          item,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        value: _checkedItems![index],
        onChanged: (bool? value) {
          _checkedItems![index] = value!;
          _onItemsSelected?.call(_checkedItems!);
        },
        controlAffinity: ListTileControlAffinity.leading,
      );
    });
  }

  Widget _buildListContent(Widget Function(String) itemBuilder) {
    final media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width * 0.7,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _items!.length,
        itemBuilder: (_, index) => itemBuilder(_items![index]),
      ),
    );
  }

  Widget _buildDefaultContent() => ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: MediaQuery.of(context).size.width * 0.7,
    ),
    child: _customView ?? Text(_message ?? ''),
  );

  List<Widget> _buildActions() {
    var theme = Theme.of(context).colorScheme;
    final actions = <Widget>[];
    if (_neutralButtonTitle != null) {
      actions.add(
        _buildButton(_neutralButtonTitle!, _onNeutralButtonClick, theme),
      );
    }
    if (_negativeButtonTitle != null) {
      actions.add(
        _buildButton(_negativeButtonTitle!, _onNegativeButtonClick, theme),
      );
    }
    if (_positiveButtonTitle != null) {
      actions.add(
        _buildButton(_positiveButtonTitle!, _onPositiveButtonClick, theme),
      );
    }
    return actions;
  }

  Widget _buildButton(String title, VoidCallback? onClick, ColorScheme theme) =>
      TextButton(
        onPressed: () {
          onClick?.call();
          if (_popOnFinish) {
            popPage(context);
          }
        },
        child: Text(
          title,
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.primary,
          ),
        ),
      );

  AlertDialogBuilder _with(VoidCallback action) {
    action();
    return this;
  }
}
