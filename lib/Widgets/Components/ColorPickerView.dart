import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/State/State.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import 'Clickable.dart';

const _swatches = <Color>[
  Color(0xFFF44336),
  Color(0xFFE91E63),
  Color(0xFF9C27B0),
  Color(0xFF673AB7),
  Color(0xFF3F51B5),
  Color(0xFF2196F3),
  Color(0xFF03A9F4),
  Color(0xFF00BCD4),
  Color(0xFF009688),
  Color(0xFF4CAF50),
  Color(0xFF8BC34A),
  Color(0xFFFFEB3B),
  Color(0xFFFF9800),
  Color(0xFFFF5722),
  Color(0xFF795548),
  Color(0xFF9E9E9E),
  Color(0xFFFFFFFF),
  Color(0xFF000000),
];

String colorHex(Color c) =>
    (c.toARGB32() & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase();

Color? parseHex(String text) {
  final t = text.replaceAll('#', '').trim();
  if (t.length != 6) return null;
  final v = int.tryParse(t, radix: 16);
  return v == null ? null : Color(0xFF000000 | v);
}

class ColorPickerView extends StatefulWidget {
  final Color initial;
  final ValueChanged<Color> onChanged;

  const ColorPickerView({
    super.key,
    required this.initial,
    required this.onChanged,
  });

  @override
  State<ColorPickerView> createState() => _ColorPickerViewState();
}

class _ColorPickerViewState extends State<ColorPickerView> {
  late final hsv = HSVColor.fromColor(widget.initial).live;
  late final hex = TextEditingController(text: colorHex(widget.initial));

  @override
  void dispose() {
    hex.dispose();
    super.dispose();
  }

  void _set(HSVColor next, {bool fromText = false}) {
    hsv.value = next;
    final color = next.toColor();
    if (!fromText) hex.text = colorHex(color);
    widget.onChanged(color);
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final current = hsv.value;
    final color = current.toColor();
    return SizedBox(width: 320, child: _body(context, scheme, current, color));
  }

  Widget _body(
    BuildContext context,
    ColorScheme scheme,
    HSVColor current,
    Color color,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 190,
          child: _Surface(
            onUpdate: (p) =>
                _set(current.withSaturation(p.dx).withValue(1 - p.dy)),
            thumb: Offset(current.saturation, 1 - current.value),
            thumbColor: color,
            painter: _SaturationValuePainter(current.hue),
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 28,
          child: _Surface(
            onUpdate: (p) => _set(current.withHue(p.dx * 359.99)),
            thumb: Offset(current.hue / 360, 0.5),
            thumbColor: HSVColor.fromAHSV(1, current.hue, 1, 1).toColor(),
            painter: const _HuePainter(),
            radius: 14,
          ),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: scheme.outlineVariant),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: hex,
                maxLength: 7,
                textCapitalization: TextCapitalization.characters,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9a-fA-F#]')),
                ],
                decoration: const InputDecoration(
                  prefixText: '#',
                  counterText: '',
                  isDense: true,
                ),
                onChanged: (text) {
                  final parsed = parseHex(text);
                  if (parsed != null) {
                    _set(HSVColor.fromColor(parsed), fromText: true);
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final swatch in _swatches)
              Clickable(
                onTap: () => _set(HSVColor.fromColor(swatch)),
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: swatch,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: colorHex(swatch) == colorHex(color)
                          ? scheme.primary
                          : scheme.outlineVariant,
                      width: colorHex(swatch) == colorHex(color) ? 3 : 1,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _Surface extends StatelessWidget {
  final CustomPainter painter;
  final ValueChanged<Offset> onUpdate;
  final Offset thumb;
  final Color thumbColor;
  final double radius;

  const _Surface({
    required this.painter,
    required this.onUpdate,
    required this.thumb,
    required this.thumbColor,
    this.radius = 16,
  });

  @override
  Widget build(BuildContext context) {
    void update(Offset local) {
      final size = context.size;
      if (size == null || size.width <= 24 || size.height <= 24) return;
      onUpdate(
        Offset(
          ((local.dx - 12) / (size.width - 24)).clamp(0.0, 1.0),
          ((local.dy - 12) / (size.height - 24)).clamp(0.0, 1.0),
        ),
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (d) => update(d.localPosition),
      onPanUpdate: (d) => update(d.localPosition),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: RepaintBoundary(child: CustomPaint(painter: painter)),
          ),
          Align(
            alignment: Alignment(thumb.dx * 2 - 1, thumb.dy * 2 - 1),
            child: IgnorePointer(
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: thumbColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: const [
                    BoxShadow(color: Colors.black38, blurRadius: 4),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SaturationValuePainter extends CustomPainter {
  final double hue;
  const _SaturationValuePainter(this.hue);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          colors: [Colors.white, HSVColor.fromAHSV(1, hue, 1, 1).toColor()],
        ).createShader(rect),
    );
    canvas.drawRect(
      rect,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black],
        ).createShader(rect),
    );
  }

  @override
  bool shouldRepaint(_SaturationValuePainter old) => old.hue != hue;
}

class _HuePainter extends CustomPainter {
  const _HuePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          colors: [
            for (var i = 0; i <= 6; i++)
              HSVColor.fromAHSV(1, i * 60.0 % 360, 1, 1).toColor(),
          ],
        ).createShader(rect),
    );
  }

  @override
  bool shouldRepaint(_HuePainter old) => false;
}
