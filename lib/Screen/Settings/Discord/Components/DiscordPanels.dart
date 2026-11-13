import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/SectionCard.dart';

class DPanel extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;
  final bool locked;
  final String? lockedNote;
  final bool divided;

  const DPanel({
    super.key,
    required this.title,
    required this.icon,
    required this.children,
    this.locked = false,
    this.lockedNote,
    this.divided = true,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gap),
      child: SectionCard(
        padding: EdgeInsets.zero,
        child: Material(
          type: MaterialType.transparency,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _PanelHeader(icon: icon, title: title),
              if (locked && lockedNote != null) _LockedNote(lockedNote!),
              Opacity(
                opacity: locked ? 0.45 : 1,
                child: IgnorePointer(
                  ignoring: locked,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (var i = 0; i < children.length; i++) ...[
                        if (divided && i > 0)
                          Divider(
                            height: 1,
                            indent: Dimens.cardPad,
                            endIndent: Dimens.cardPad,
                            color: scheme.outlineVariant.withValues(
                              alpha: 0.25,
                            ),
                          ),
                        children[i],
                      ],
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimens.gapSm),
            ],
          ),
        ),
      ),
    );
  }
}

class _PanelHeader extends StatelessWidget {
  final IconData icon;
  final String title;

  const _PanelHeader({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        Dimens.cardPad,
        Dimens.gap,
        Dimens.cardPad,
        Dimens.gapSm,
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: scheme.primaryContainer,
            ),
            child: Icon(icon, size: 18, color: scheme.onPrimaryContainer),
          ),
          SizedBox(width: Dimens.gapSm),
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LockedNote extends StatelessWidget {
  final String text;

  const _LockedNote(this.text);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      margin: EdgeInsets.fromLTRB(
        Dimens.cardPad,
        0,
        Dimens.cardPad,
        Dimens.gapSm,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: scheme.onSurface.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(
            Icons.lock_outline_rounded,
            size: 16,
            color: scheme.onSurfaceVariant,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DToggle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const DToggle({
    super.key,
    required this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => SwitchListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: Dimens.cardPad),
    title: Text(title),
    subtitle: subtitle == null ? null : Text(subtitle!),
    value: value,
    onChanged: onChanged,
  );
}

class DLabeled extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;

  const DLabeled({
    super.key,
    required this.title,
    this.subtitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.cardPad,
        vertical: Dimens.gap,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.textTheme.bodyLarge),
          if (subtitle != null)
            Text(
              subtitle!,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          SizedBox(height: Dimens.gapSm),
          child,
        ],
      ),
    );
  }
}

class DField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Pref<String> pref;
  final FocusNode? focus;
  final int maxLength;

  const DField({
    super.key,
    required this.controller,
    required this.hint,
    required this.pref,
    this.focus,
    this.maxLength = 128,
  });

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    focusNode: focus,
    maxLength: maxLength,
    decoration: InputDecoration(
      hintText: hint,
      counterText: '',
      isDense: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    onChanged: (v) => pref.rx.value = v,
  );
}

class DStatusDot extends StatelessWidget {
  final Color color;
  final double size;

  const DStatusDot(this.color, {super.key, this.size = 12});

  @override
  Widget build(BuildContext context) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}
