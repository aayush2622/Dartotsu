import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import 'BarLayout.dart';
import 'LayoutEditorState.dart';

enum SlotStyle { icons, chips, menu }

typedef SlotTap = void Function(Offset at, String zone, String id);

class LayoutSlot extends StatelessWidget {
  final LayoutEditorState state;
  final LayoutZone zone;
  final SlotStyle style;
  final Color color;
  final Color accent;
  final SlotTap onTap;
  final double box;
  final double? maxWidth;
  final WrapAlignment alignment;

  const LayoutSlot({
    super.key,
    required this.state,
    required this.zone,
    required this.color,
    required this.accent,
    required this.onTap,
    this.style = SlotStyle.icons,
    this.box = 38,
    this.maxWidth,
    this.alignment = WrapAlignment.start,
  });

  bool get _touch => switch (defaultTargetPlatform) {
    TargetPlatform.android ||
    TargetPlatform.iOS ||
    TargetPlatform.fuchsia => true,
    _ => false,
  };

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final ids = state.layout.value.zone(zone.id);
    final hover = state.hover.value;
    final dragging = state.dragging.value != null;
    final cutting = state.cut.value;
    final active = dragging && hover?.zone == zone.id;
    final at = active ? hover!.index : null;
    final menu = style == SlotStyle.menu;

    final items = <Widget>[];
    for (var i = 0; i < ids.length; i++) {
      if (at == i) items.add(_marker(menu));
      if (_item(context, ids[i], cutting == ids[i]) case final w?) {
        items.add(w);
      }
    }
    if (at != null && at >= ids.length) items.add(_marker(menu));
    if (cutting != null) items.add(_paste(context));
    if (items.isEmpty) items.add(_empty(context, menu));

    final body = menu
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: items,
          )
        : Wrap(
            alignment: alignment,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: style == SlotStyle.chips ? 8 : 2,
            runSpacing: style == SlotStyle.chips ? 8 : 2,
            children: items,
          );

    final target = DragTarget<String>(
      hitTestBehavior: HitTestBehavior.opaque,
      onWillAcceptWithDetails: (_) => true,
      onMove: (d) {
        final next = (zone: zone.id, index: _indexAt(d.offset, ids));
        if (state.hover.value != next) state.hover.value = next;
      },
      onLeave: (_) {
        if (state.hover.value?.zone == zone.id) state.hover.value = null;
      },
      onAcceptWithDetails: (d) {
        final index = _indexAt(d.offset, ids);
        state.hover.value = null;
        state.move(d.data, zone.id, index);
      },
      builder: (context, candidates, rejected) => AnimatedContainer(
        duration: const Duration(milliseconds: 140),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.all(3),
        constraints: BoxConstraints(minWidth: box, minHeight: box),
        decoration: BoxDecoration(
          color: active ? accent.withValues(alpha: 0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(menu ? 12 : 18),
          border: Border.all(
            color: active
                ? accent
                : dragging
                ? accent.withValues(alpha: 0.4)
                : Colors.transparent,
            width: 1.5,
          ),
          boxShadow: active
              ? [
                  BoxShadow(
                    color: accent.withValues(alpha: 0.4),
                    blurRadius: 16,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: body,
      ),
    );
    final limit = maxWidth;
    final sized = limit == null
        ? target
        : ConstrainedBox(
            constraints: BoxConstraints(maxWidth: limit),
            child: target,
          );
    return _touch
        ? sized
        : Tooltip(
            message: zone.label(),
            waitDuration: const Duration(milliseconds: 900),
            child: sized,
          );
  }

  int _indexAt(Offset p, List<String> ids) {
    final vertical = style == SlotStyle.menu;
    for (var i = 0; i < ids.length; i++) {
      final ctx = state.keyOf(ids[i]).currentContext;
      final render = ctx?.findRenderObject();
      if (render is! RenderBox || !render.attached) continue;
      final r = render.localToGlobal(Offset.zero) & render.size;
      final before =
          p.dy < r.top ||
          (p.dy <= r.bottom &&
              (vertical ? p.dy < r.center.dy : p.dx < r.center.dx));
      if (before) return i;
    }
    return ids.length;
  }

  Widget _marker(bool vertical) => AnimatedContainer(
    duration: const Duration(milliseconds: 120),
    width: vertical ? null : 4,
    height: vertical ? 4 : box * 0.7,
    margin: vertical
        ? const EdgeInsets.symmetric(vertical: 2)
        : const EdgeInsets.symmetric(horizontal: 2),
    decoration: BoxDecoration(
      color: accent,
      borderRadius: BorderRadius.circular(4),
      boxShadow: [
        BoxShadow(color: accent.withValues(alpha: 0.7), blurRadius: 8),
      ],
    ),
  );

  Widget _paste(BuildContext context) => Tooltip(
    message: getString.layoutPaste,
    child: GestureDetector(
      onTap: () => state.paste(zone.id),
      child: Container(
        width: box,
        height: box,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: accent, width: 1.5),
          color: accent.withValues(alpha: 0.16),
        ),
        child: Icon(
          Icons.content_paste_go_rounded,
          size: box * 0.5,
          color: accent,
        ),
      ),
    ),
  );

  Widget _empty(BuildContext context, bool menu) => Container(
    height: box,
    width: menu ? null : box,
    padding: menu ? const EdgeInsets.symmetric(horizontal: 12) : null,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(menu ? 10 : box),
      border: Border.all(color: color.withValues(alpha: 0.3)),
    ),
    child: menu
        ? Text(
            getString.layoutEmptyZone,
            style: context.textTheme.bodySmall?.copyWith(
              color: color.withValues(alpha: 0.7),
            ),
          )
        : Icon(
            Icons.add_rounded,
            size: box * 0.5,
            color: color.withValues(alpha: 0.5),
          ),
  );

  Widget? _item(BuildContext context, String id, bool cut) {
    final info = state.surface.action(id);
    if (info == null) return null;
    final scheme = context.colorScheme;

    Widget face({bool lifted = false}) {
      switch (style) {
        case SlotStyle.icons:
          return Container(
            width: box,
            height: box,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: lifted ? accent.withValues(alpha: 0.35) : null,
              border: cut ? Border.all(color: accent, width: 1.5) : null,
            ),
            child: Icon(info.icon, size: box * 0.58, color: color),
          );
        case SlotStyle.chips:
          return Container(
            height: box - 2,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: cut
                  ? scheme.tertiaryContainer
                  : lifted
                  ? scheme.primaryContainer
                  : scheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(info.icon, size: 18, color: scheme.onSurface),
                const SizedBox(width: 8),
                Text(
                  info.label(),
                  style: context.textTheme.labelLarge?.copyWith(
                    color: scheme.onSurface,
                  ),
                ),
              ],
            ),
          );
        case SlotStyle.menu:
          return Container(
            height: box,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: cut
                  ? scheme.tertiaryContainer
                  : lifted
                  ? scheme.primaryContainer
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(info.icon, size: 20, color: color),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    info.label(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyMedium?.copyWith(color: color),
                  ),
                ),
              ],
            ),
          );
      }
    }

    final feedback = Transform.translate(
      offset: const Offset(-24, -24),
      child: Material(
        elevation: 8,
        color: scheme.primaryContainer,
        shape: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(info.icon, size: 20, color: scheme.onPrimaryContainer),
              const SizedBox(width: 8),
              Text(
                info.label(),
                style: context.textTheme.labelLarge?.copyWith(
                  color: scheme.onPrimaryContainer,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    void started() => state.dragging.value = id;
    void ended(DraggableDetails _) {
      state.dragging.value = null;
      state.hover.value = null;
    }

    final tappable = MouseRegion(
      cursor: SystemMouseCursors.grab,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapUp: (d) => onTap(d.globalPosition, zone.id, id),
        child: face(),
      ),
    );
    final ghost = Opacity(opacity: 0.25, child: face());
    final dragged = _touch
        ? LongPressDraggable<String>(
            data: id,
            dragAnchorStrategy: pointerDragAnchorStrategy,
            feedback: feedback,
            childWhenDragging: ghost,
            onDragStarted: started,
            onDragEnd: ended,
            child: tappable,
          )
        : Draggable<String>(
            data: id,
            dragAnchorStrategy: pointerDragAnchorStrategy,
            feedback: feedback,
            childWhenDragging: ghost,
            onDragStarted: started,
            onDragEnd: ended,
            child: tappable,
          );
    return KeyedSubtree(
      key: state.keyOf(id),
      child: _touch ? dragged : Tooltip(message: info.label(), child: dragged),
    );
  }
}
