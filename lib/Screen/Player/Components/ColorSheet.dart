import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../Engine/ColorPresets.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';

String colorPresetLabel(String id) => switch (id) {
  'default' => getString.playerColorDefault,
  'vivid' => getString.playerColorVivid,
  'pop' => getString.playerColorPop,
  'soft' => getString.playerColorSoft,
  'cinematic' => getString.playerColorCinematic,
  'bright' => getString.playerColorBright,
  'night' => getString.playerColorNight,
  'mono' => getString.playerColorMono,
  _ => getString.playerColorCustom,
};

class ColorSheet extends StatefulWidget {
  final ColorValues initial;
  final Uint8List? frame;
  final Future<void> Function(ColorValues values) onChange;
  final bool embedded;
  final List<Widget> header;

  const ColorSheet({
    super.key,
    required this.initial,
    required this.frame,
    required this.onChange,
    this.embedded = false,
    this.header = const [],
  });

  @override
  State<ColorSheet> createState() => _ColorSheetState();
}

class _ColorSheetState extends State<ColorSheet> {
  late final _values = widget.initial.live;

  void _set(ColorValues next) {
    _values.value = next;
    widget.onChange(next);
  }

  Widget _slider(String label, int value, ColorValues Function(int v) build) =>
      LabeledSlider(
        label: label,
        value: value.toDouble(),
        min: -100,
        max: 100,
        divisions: 100,
        valueLabel: '$value',
        onChanged: (v) => _set(build(v.round())),
      );

  @override
  Widget build(BuildContext context) {
    final body = Watch(() {
      final v = _values.value;
      final current = presetOf(v);
      return ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          ...widget.header,
          if (widget.frame != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ColorFiltered(
                  colorFilter: ColorFilter.matrix(colorMatrix(v)),
                  child: Image.memory(
                    widget.frame!,
                    fit: BoxFit.cover,
                    gaplessPlayback: true,
                  ),
                ),
              ),
            ),
          const SizedBox(height: 12),
          AppChoiceChips<String>(
            options: [
              for (final key in colorPresets.keys)
                AppSegment(key, label: colorPresetLabel(key)),
              if (current == 'custom')
                AppSegment('custom', label: getString.playerColorCustom),
            ],
            value: current,
            onChanged: (key) {
              final preset = colorPresets[key];
              if (preset != null) _set(preset);
            },
          ),
          const SizedBox(height: 12),
          _slider(
            getString.playerColorBrightness,
            v.brightness,
            (x) => v.copyWith(brightness: x),
          ),
          _slider(
            getString.playerColorContrast,
            v.contrast,
            (x) => v.copyWith(contrast: x),
          ),
          _slider(
            getString.playerColorSaturation,
            v.saturation,
            (x) => v.copyWith(saturation: x),
          ),
          _slider(
            getString.playerColorGamma,
            v.gamma,
            (x) => v.copyWith(gamma: x),
          ),
          _slider(getString.playerColorHue, v.hue, (x) => v.copyWith(hue: x)),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton.icon(
              onPressed: v.isDefault ? null : () => _set(const ColorValues()),
              icon: const Icon(Icons.restart_alt_rounded),
              label: Text(getString.playerColorReset),
            ),
          ),
        ],
      );
    });
    return widget.embedded
        ? body
        : AppSheet(
            title: getString.playerColors,
            heightFactor: 0.85,
            child: body,
          );
  }
}
