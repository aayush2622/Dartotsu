import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../Player/Components/PlayerActions.dart';
import 'BarLayout.dart';
import 'LayoutEditorState.dart';
import 'LayoutSlot.dart';

class LayoutPreview extends StatelessWidget {
  final LayoutEditorState state;
  final SlotTap onTap;

  const LayoutPreview({super.key, required this.state, required this.onTap});

  LayoutZone _zone(String id) =>
      state.surface.zones.firstWhere((z) => z.id == id);

  Color _accent(ColorScheme scheme) =>
      Color.alphaBlend(Colors.white.withValues(alpha: 0.4), scheme.primary);

  @override
  Widget build(BuildContext context) => switch (state.surface) {
    LayoutSurface.player => _player(context),
    LayoutSurface.reader => _reader(context, novel: false),
    LayoutSurface.novel => _reader(context, novel: true),
  };

  Widget _slot(
    String zone, {
    required Color color,
    required Color accent,
    SlotStyle style = SlotStyle.icons,
    double box = 38,
    double? maxWidth,
    WrapAlignment alignment = WrapAlignment.start,
  }) => LayoutSlot(
    state: state,
    zone: _zone(zone),
    color: color,
    accent: accent,
    onTap: onTap,
    style: style,
    box: box,
    maxWidth: maxWidth,
    alignment: alignment,
  );

  Widget _fixed(IconData icon, double box, {Color color = Colors.white70}) =>
      SizedBox(
        width: box,
        height: box,
        child: Icon(icon, size: box * 0.58, color: color),
      );

  Widget _titleBlock(BuildContext context, Color color) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                getString.layoutTitleFixed,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall?.copyWith(
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.lock_outline_rounded,
              size: 13,
              color: color.withValues(alpha: 0.6),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          width: 72,
          height: 7,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
  );

  Widget _player(BuildContext context) {
    final scheme = context.colorScheme;
    final accent = _accent(scheme);
    return LayoutBuilder(
      builder: (context, c) {
        final w = c.maxWidth;
        final narrow = w < 520;
        final height = narrow ? 280.0 : w * 9 / 16;
        final box = narrow ? 34.0 : 40.0;
        final side = w * 0.46;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: height,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional.bottomEnd,
                          colors: [
                            Color.lerp(Colors.black, scheme.primary, 0.3)!,
                            Colors.black,
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.movie_filter_rounded,
                        size: height * 0.55,
                        color: Colors.white.withValues(alpha: 0.05),
                      ),
                    ),
                    IgnorePointer(
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _fixed(
                              Icons.skip_previous_rounded,
                              44,
                              color: Colors.white54,
                            ),
                            const SizedBox(width: 12),
                            _fixed(
                              Icons.pause_circle_filled_rounded,
                              64,
                              color: Colors.white70,
                            ),
                            const SizedBox(width: 12),
                            _fixed(
                              Icons.skip_next_rounded,
                              44,
                              color: Colors.white54,
                            ),
                          ],
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      top: 0,
                      start: 0,
                      end: 0,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xCC000000), Color(0x00000000)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _fixed(Icons.keyboard_arrow_down_rounded, box),
                              _slot(
                                topStartZone,
                                color: Colors.white,
                                accent: accent,
                                box: box,
                                maxWidth: side,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: _titleBlock(context, Colors.white),
                                ),
                              ),
                              _slot(
                                topEndZone,
                                color: Colors.white,
                                accent: accent,
                                box: box,
                                maxWidth: side,
                                alignment: WrapAlignment.end,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      start: 0,
                      end: 0,
                      bottom: 0,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xCC000000), Color(0x00000000)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 18, 12, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 6,
                                ),
                                child: _seekBar(Colors.white, accent),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional.bottomStart,
                                      child: _slot(
                                        bottomStartZone,
                                        color: Colors.white,
                                        accent: accent,
                                        box: box,
                                      ),
                                    ),
                                  ),
                                  _slot(
                                    bottomEndZone,
                                    color: Colors.white,
                                    accent: accent,
                                    box: box,
                                    maxWidth: side,
                                    alignment: WrapAlignment.end,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            _normalView(context, accent: scheme.primary),
          ],
        );
      },
    );
  }

  Widget _seekBar(Color color, Color accent) => SizedBox(
    height: 14,
    child: Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          height: 4,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.38,
          child: Container(
            height: 4,
            decoration: BoxDecoration(
              color: accent,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        Align(
          alignment: const Alignment(-0.24, 0),
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(color: accent, shape: BoxShape.circle),
          ),
        ),
      ],
    ),
  );

  Widget _normalView(BuildContext context, {required Color accent}) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Watch(() {
        final layout = state.layout.value;
        final shown = [
          for (final id in playerChipOrder)
            if (layout.zoneOf(id) != hiddenZone) ?state.surface.action(id),
        ];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _titleBlock(context, scheme.onSurface),
            if (shown.isNotEmpty) ...[
              const SizedBox(height: 10),
              Opacity(
                opacity: 0.55,
                child: IgnorePointer(
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final a in shown)
                        Container(
                          height: 36,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: scheme.surfaceContainerHigh,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(a.icon, size: 18, color: scheme.onSurface),
                              const SizedBox(width: 8),
                              Text(
                                a.label(),
                                style: context.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
            const SizedBox(height: 12),
            Text(
              _zone(hiddenZone).label(),
              style: context.textTheme.labelMedium?.copyWith(
                color: scheme.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            _slot(
              hiddenZone,
              color: scheme.onSurface,
              accent: accent,
              style: SlotStyle.chips,
              box: 40,
            ),
          ],
        );
      }),
    );
  }

  Widget _reader(BuildContext context, {required bool novel}) {
    final scheme = context.colorScheme;
    final fg = novel ? scheme.onSurface : Colors.white;
    final accent = novel ? scheme.primary : _accent(scheme);
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 440),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            height: 520,
            color: novel ? scheme.surfaceContainerLow : const Color(0xFF101010),
            child: LayoutBuilder(
              builder: (context, c) {
                final side = c.maxWidth * 0.5;
                return Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: novel
                            ? null
                            : const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xE6000000), Color(0x00000000)],
                              ),
                        color: novel ? scheme.surfaceContainer : null,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(6, 8, 6, 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _fixed(
                              Icons.arrow_back_ios_new_rounded,
                              36,
                              color: fg.withValues(alpha: 0.75),
                            ),
                            _slot(
                              topStartZone,
                              color: fg,
                              accent: accent,
                              box: 36,
                              maxWidth: side,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _titleBlock(context, fg),
                              ),
                            ),
                            _slot(
                              topEndZone,
                              color: fg,
                              accent: accent,
                              box: 36,
                              maxWidth: side,
                              alignment: WrapAlignment.end,
                            ),
                            _fixed(
                              Icons.more_vert_rounded,
                              36,
                              color: fg.withValues(alpha: 0.75),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: IgnorePointer(
                              child: novel ? _textArt(fg) : _pageArt(fg),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                12,
                                0,
                                8,
                                0,
                              ),
                              child: _menuCard(context, accent),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _menuCard(BuildContext context, Color accent) {
    final scheme = context.colorScheme;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 260, minWidth: 220),
      child: Material(
        elevation: 6,
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 6),
                child: Text(
                  _zone(hiddenZone).label(),
                  style: context.textTheme.labelMedium?.copyWith(
                    color: scheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              _slot(
                hiddenZone,
                color: scheme.onSurface,
                accent: scheme.primary,
                style: SlotStyle.menu,
                box: 42,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageArt(Color fg) => Padding(
    padding: const EdgeInsets.fromLTRB(28, 0, 28, 20),
    child: Column(
      children: [
        for (final f in const [2, 3, 2])
          Expanded(
            flex: f,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: fg.withValues(alpha: 0.07),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: fg.withValues(alpha: 0.12)),
              ),
            ),
          ),
      ],
    ),
  );

  Widget _textArt(Color fg) {
    const widths = [
      1.0,
      0.94,
      1.0,
      0.82,
      0.0,
      1.0,
      0.9,
      1.0,
      0.72,
      0.0,
      1.0,
      0.96,
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(26, 12, 26, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final f in widths)
            f == 0
                ? const SizedBox(height: 16)
                : Padding(
                    padding: const EdgeInsets.only(bottom: 9),
                    child: FractionallySizedBox(
                      widthFactor: f,
                      child: Container(
                        height: 7,
                        decoration: BoxDecoration(
                          color: fg.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}
