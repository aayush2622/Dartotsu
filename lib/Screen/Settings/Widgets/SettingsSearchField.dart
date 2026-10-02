import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/ThemedContainer.dart';

class SettingsSearchField extends StatefulWidget {
  final RxString query;
  final String? hint;

  const SettingsSearchField({super.key, required this.query, this.hint});

  @override
  State<SettingsSearchField> createState() => _SettingsSearchFieldState();
}

class _SettingsSearchFieldState extends State<SettingsSearchField> {
  late final _controller = TextEditingController(text: widget.query.value);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clear() {
    _controller.clear();
    widget.query.value = '';
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ThemedContainer(
      padding: EdgeInsets.zero,
      child: Obx(() {
        final hasText = widget.query.value.isNotEmpty;
        return TextField(
          controller: _controller,
          onChanged: (v) => widget.query.value = v.trim(),
          textInputAction: TextInputAction.search,
          style: context.textTheme.bodyLarge,
          decoration: InputDecoration(
            hintText: widget.hint ?? getString.searchSettings,
            prefixIcon: Icon(
              Icons.search_rounded,
              color: scheme.onSurfaceVariant,
            ),
            suffixIcon: hasText
                ? IconButton(
                    icon: Icon(
                      Icons.close_rounded,
                      color: scheme.onSurfaceVariant,
                    ),
                    onPressed: _clear,
                  )
                : null,
            filled: false,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 4,
            ),
          ),
        );
      }),
    );
  }
}
