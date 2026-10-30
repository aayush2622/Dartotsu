import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'BarLayout.dart';
import 'LayoutEditorState.dart';
import 'LayoutPreview.dart';

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
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: LayoutPreview(
                  state: state,
                  onTap: (at, zone, id) => _menu(context, at, zone, id),
                ),
              ),
            ),
            _status(context, scheme),
            Padding(
              padding: EdgeInsets.only(top: Dimens.gap),
              child: Center(
                child: OutlinedButton.icon(
                  onPressed: state.reset,
                  icon: const Icon(Icons.restart_alt_rounded),
                  label: Text(getString.layoutReset),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _status(BuildContext context, ColorScheme scheme) {
    final hover = state.hover.value;
    final cutting = state.cut.value;
    final zones = widget.surface.zones;
    final over = hover == null
        ? null
        : zones.where((z) => z.id == hover.zone).firstOrNull;
    final cutInfo = cutting == null ? null : widget.surface.action(cutting);
    final String text;
    final bool strong;
    if (over != null) {
      text = getString.layoutDropInto(over.label());
      strong = true;
    } else if (cutInfo != null) {
      text = getString.layoutCutting(cutInfo.label());
      strong = true;
    } else {
      text = getString.layoutHint;
      strong = false;
    }
    return Padding(
      padding: EdgeInsets.only(top: Dimens.gap),
      child: AnimatedSwitcher(
        duration: animDuration(150),
        child: Row(
          key: ValueKey(text),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: strong ? scheme.primary : scheme.onSurfaceVariant,
                  fontWeight: strong ? FontWeight.w700 : null,
                ),
              ),
            ),
            if (cutInfo != null && over == null)
              IconButton(
                onPressed: state.cancelCut,
                icon: const Icon(Icons.close_rounded, size: 18),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _menu(
    BuildContext context,
    Offset at,
    String zoneId,
    String id,
  ) async {
    final zones = widget.surface.zones;
    final choice = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(at.dx, at.dy, at.dx, at.dy),
      items: [
        PopupMenuItem(value: 'cut', child: Text(getString.layoutCut)),
        if (zoneId != hiddenZone)
          PopupMenuItem(value: 'hide', child: Text(getString.layoutHide)),
        for (final z in zones)
          if (z.id != zoneId && z.id != hiddenZone)
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
