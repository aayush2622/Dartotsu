import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'BarLayout.dart';
import 'LayoutEditorState.dart';

class LayoutEditorScreen extends StatefulWidget {
  final LayoutSurface surface;

  const LayoutEditorScreen({super.key, required this.surface});

  @override
  State<LayoutEditorScreen> createState() => _LayoutEditorScreenState();
}

class _LayoutEditorScreenState extends BaseScreen<LayoutEditorScreen>
    with ScreenStateHost<LayoutEditorScreen, LayoutEditorState> {
  @override
  LayoutEditorState buildState() => LayoutEditorState(widget.surface);

  @override
  Widget buildContent(BuildContext context) {
    final scheme = context.colorScheme;
    final layout = state.layout.value;
    final zones = widget.surface.zones;
    final top = zones.where((z) => z.id.startsWith('top')).toList();
    final rest = zones.where((z) => !z.id.startsWith('top')).toList();
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: '${widget.surface.title} · ${getString.layoutTitle}',
      ),
      body: ScrollConfig(
        context,
        child: ListView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapSm,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: Dimens.gap),
              child: Text(
                getString.layoutHint,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
            _zone(context, top.first, layout),
            _titleBar(context),
            for (final z in top.skip(1)) _zone(context, z, layout),
            for (final z in rest) _zone(context, z, layout),
            Padding(
              padding: EdgeInsets.only(top: Dimens.gap),
              child: OutlinedButton.icon(
                onPressed: state.reset,
                icon: const Icon(Icons.restart_alt_rounded),
                label: Text(getString.layoutReset),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleBar(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gapSm),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHighest,
          borderRadius: Dimens.border,
        ),
        child: Row(
          children: [
            Icon(Icons.title_rounded, color: scheme.onSurfaceVariant),
            const SizedBox(width: 12),
            Text(
              getString.layoutTitleFixed,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _zone(BuildContext context, LayoutZone zone, BarLayout layout) {
    final scheme = context.colorScheme;
    final ids = layout.zone(zone.id);
    final cutting = state.cut.value;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gapSm),
      child: DragTarget<String>(
        onAcceptWithDetails: (d) => state.move(d.data, zone.id),
        builder: (context, candidates, _) => AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: BoxDecoration(
            color: candidates.isEmpty
                ? scheme.surfaceContainerLow
                : scheme.primaryContainer.withValues(alpha: 0.5),
            borderRadius: Dimens.border,
            border: Border.all(
              color: candidates.isEmpty ? Colors.transparent : scheme.primary,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      zone.label(),
                      style: context.textTheme.labelLarge?.copyWith(
                        color: scheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  if (cutting != null)
                    TextButton(
                      onPressed: () => state.paste(zone.id),
                      child: Text(getString.layoutPaste),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              if (ids.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    getString.layoutEmptyZone,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                )
              else
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (var i = 0; i < ids.length; i++)
                      _chip(context, zone, ids[i], i),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chip(BuildContext context, LayoutZone zone, String id, int index) {
    final info = widget.surface.action(id);
    if (info == null) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    final cutting = state.cut.value == id;
    Widget body({bool dragging = false}) => Material(
      color: cutting
          ? scheme.tertiaryContainer
          : dragging
          ? scheme.primaryContainer
          : scheme.surfaceContainerHigh,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(info.icon, size: 18),
            const SizedBox(width: 6),
            Text(info.label(), style: context.textTheme.labelLarge),
          ],
        ),
      ),
    );
    return DragTarget<String>(
      onWillAcceptWithDetails: (d) => d.data != id,
      onAcceptWithDetails: (d) => state.move(d.data, zone.id, index),
      builder: (context, candidates, _) => Padding(
        padding: EdgeInsetsDirectional.only(start: candidates.isEmpty ? 0 : 12),
        child: LongPressDraggable<String>(
          data: id,
          feedback: Opacity(opacity: 0.9, child: body(dragging: true)),
          childWhenDragging: Opacity(opacity: 0.3, child: body()),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (d) => _menu(context, d.globalPosition, zone, id),
            child: body(),
          ),
        ),
      ),
    );
  }

  Future<void> _menu(
    BuildContext context,
    Offset at,
    LayoutZone zone,
    String id,
  ) async {
    final zones = widget.surface.zones;
    final choice = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(at.dx, at.dy, at.dx, at.dy),
      items: [
        PopupMenuItem(value: 'cut', child: Text(getString.layoutCut)),
        if (zone.id != hiddenZone)
          PopupMenuItem(value: 'hide', child: Text(getString.layoutHide)),
        for (final z in zones)
          if (z.id != zone.id && z.id != hiddenZone)
            PopupMenuItem(
              value: 'to:${z.id}',
              child: Text(getString.layoutMoveTo(z.label())),
            ),
      ],
    );
    if (choice == null) return;
    if (choice == 'cut') {
      state.startCut(id);
    } else if (choice == 'hide') {
      state.hide(id);
    } else if (choice.startsWith('to:')) {
      state.move(id, choice.substring(3));
    }
  }
}
