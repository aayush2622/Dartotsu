import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../Engine/ColorPresets.dart';
import '../Engine/PlayerSettings.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/AppSpinner.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import 'ColorSheet.dart';
import 'ShaderSheet.dart';

class PictureSheet extends StatefulWidget {
  final PlayerSettings Function() settings;
  final ShaderPick onPick;
  final Future<void> Function() onPreview;
  final Live<Uint8List?> frame;
  final Live<bool> capturing;
  final Future<void> Function(ColorValues values) onColor;
  final Future<void> Function(bool processed) onSave;
  final Live<String?>? problem;

  const PictureSheet({
    super.key,
    required this.settings,
    required this.onPick,
    required this.onPreview,
    required this.frame,
    required this.capturing,
    required this.onColor,
    required this.onSave,
    this.problem,
  });

  @override
  State<PictureSheet> createState() => _PictureSheetState();
}

class _PictureSheetState extends State<PictureSheet> {
  final _tab = 0.live;
  final _saving = false.live;

  Future<void> _save() async {
    if (_saving.value || widget.frame.value == null) return;
    final processed = await showCustomBottomDialog<bool>(
      context,
      AppSheet(
        title: getString.playerPictureSave,
        child: Padding(
          padding: Dimens.sheetInsets,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SheetTile(
                tinted: true,
                leading: const Icon(Icons.image_outlined),
                title: Text(getString.playerPictureOriginal),
                subtitle: Text(getString.playerPictureOriginalDesc),
                onTap: () => popPage(context, false),
              ),
              SheetTile(
                tinted: true,
                leading: const Icon(Icons.auto_fix_high_rounded),
                title: Text(getString.playerPictureProcessed),
                subtitle: Text(getString.playerPictureProcessedDesc),
                onTap: () => popPage(context, true),
              ),
            ],
          ),
        ),
      ),
    );
    if (processed == null) return;
    _saving.value = true;
    try {
      await widget.onSave(processed);
    } finally {
      _saving.value = false;
    }
  }

  Widget _still() {
    final frame = widget.frame.value;
    if (frame == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 160),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.memory(
              frame,
              fit: BoxFit.cover,
              gaplessPlayback: true,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => AppSheet(
    title: getString.playerPicture,
    heightFactor: 0.85,
    child: Watch(() {
      final tab = _tab.value;
      final header = <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: AppSegmented<int>(
            value: tab,
            onChanged: (v) => _tab.value = v,
            segments: [
              AppSegment(0, label: getString.playerShaders),
              AppSegment(1, label: getString.playerColors),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Expanded(
                child: FilledButton.tonalIcon(
                  onPressed: widget.capturing.value ? null : widget.onPreview,
                  icon: widget.capturing.value
                      ? const AppSpinner()
                      : const Icon(Icons.preview_rounded),
                  label: Text(getString.playerShadersPreview),
                ),
              ),
              const SizedBox(width: 8),
              IconButton.filledTonal(
                tooltip: getString.playerPictureSave,
                onPressed: widget.capturing.value || widget.frame.value == null
                    ? null
                    : _save,
                icon: _saving.value
                    ? const AppSpinner()
                    : const Icon(Icons.download_rounded),
              ),
            ],
          ),
        ),
        if (tab == 0) _still(),
      ];
      return tab == 0
          ? ShaderSheet(
              key: const ValueKey('picture-shaders'),
              embedded: true,
              header: header,
              settings: widget.settings,
              onPick: widget.onPick,
              problem: widget.problem,
            )
          : ColorSheet(
              key: const ValueKey('picture-colors'),
              embedded: true,
              header: header,
              initial: widget.settings().color,
              frame: widget.frame.value,
              onChange: widget.onColor,
            );
    }),
  );
}
