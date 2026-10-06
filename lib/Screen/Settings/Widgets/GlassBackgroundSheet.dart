import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';

void showGlassBackgroundSheet(BuildContext context) {
  showCustomBottomDialog(context, const _GlassBackgroundSheet());
}

class _GlassBackgroundSheet extends StatefulWidget {
  const _GlassBackgroundSheet();

  @override
  State<_GlassBackgroundSheet> createState() => _GlassBackgroundSheetState();
}

class _GlassBackgroundSheetState extends State<_GlassBackgroundSheet> {
  late final _ctrl = TextEditingController(
    text: PrefName.glassBackgroundUrl.value,
  );

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _save() {
    PrefName.glassBackgroundUrl.rx.value = _ctrl.text.trim();
    popPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return CustomBottomDialog(
      title: getString.glassBackground,
      negativeText: getString.cancel,
      negativeCallback: () => popPage(context),
      positiveText: getString.save,
      positiveCallback: _save,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: TextField(
            controller: _ctrl,
            autofocus: true,
            keyboardType: TextInputType.url,
            onSubmitted: (_) => _save(),
            decoration: InputDecoration(
              hintText: getString.glassBackgroundHint,
              prefixIcon: const Icon(Icons.image_outlined),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear_rounded),
                onPressed: _ctrl.clear,
              ),
              filled: true,
              fillColor: context.colorScheme.surfaceContainerHigh,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
