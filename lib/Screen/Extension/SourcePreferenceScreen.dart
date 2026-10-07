import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Model/Setting.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../Settings/SettingsListView.dart';
import '../../Core/State/State.dart';

class SourcePreferenceScreen extends StatefulWidget {
  final Source source;

  const SourcePreferenceScreen({super.key, required this.source});

  @override
  State<SourcePreferenceScreen> createState() => _SourcePreferenceScreenState();
}

class _SourcePreferenceScreenState extends BaseScreen<SourcePreferenceScreen> {
  final _prefs = Live<List<SourcePreference>?>(null);

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      _prefs.value = await widget.source.methods.getPreference();
    } catch (_) {
      _prefs.value = const [];
    }
  }

  Future<void> _set(SourcePreference pref, Object? value) async {
    await widget.source.methods.setPreference(pref, value);
    await _load();
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Watch(() {
        final prefs = _prefs.value;
        if (prefs == null) {
          return Skeletonizer(
            child: SettingsListView(
              title: widget.source.name,
              searchable: (_) => [
                for (var i = 0; i < 6; i++)
                  const Setting.normal(
                    name: 'Loading setting',
                    description: 'Loading description for this setting',
                  ),
              ],
            ),
          );
        }
        if (prefs.isEmpty) {
          return EmptyState(
            icon: Icons.tune_rounded,
            title: getString.noSourceSettings,
          );
        }
        return SettingsListView(
          title: widget.source.name,
          searchable: (ctx) => [for (final p in prefs) _setting(ctx, p)],
        );
      }),
    );
  }

  Setting _setting(BuildContext context, SourcePreference pref) {
    switch (pref.type) {
      case 'checkbox':
        final p = pref.checkBoxPreference!;
        return Setting.switchType(
          name: p.title ?? pref.key ?? '',
          description: p.summary,
          isChecked: p.value ?? false,
          onSwitchChange: (v) => _set(pref, v),
        );
      case 'switch':
        final p = pref.switchPreferenceCompat!;
        return Setting.switchType(
          name: p.title ?? pref.key ?? '',
          description: p.summary,
          isChecked: p.value ?? false,
          onSwitchChange: (v) => _set(pref, v),
        );
      case 'list':
        return _list(context, pref);
      case 'multi_select':
        return _multi(context, pref);
      case 'text':
        return _text(context, pref);
      default:
        return Setting.normal(
          name: pref.key ?? 'Unknown preference',
          description: 'Unsupported preference type ${pref.type}',
        );
    }
  }

  Setting _list(BuildContext context, SourcePreference pref) {
    final p = pref.listPreference!;
    final entries = p.entries ?? const <String>[];
    final values = p.entryValues ?? const <String>[];
    final selected = p.value != null && values.contains(p.value)
        ? values.indexOf(p.value!)
        : 0;
    final current = selected < entries.length ? entries[selected] : null;
    final summary = p.summary ?? '';
    return Setting.normal(
      name: p.title ?? pref.key ?? '',
      description: current == null || summary == current
          ? summary
          : '$summary ($current)',
      isActivity: true,
      onClick: () => AlertDialogBuilder(context)
        ..setTitle(p.title ?? '')
        ..singleChoiceItems(entries, selected, (i) => _set(pref, values[i]))
        ..show(),
    );
  }

  Setting _multi(BuildContext context, SourcePreference pref) {
    final p = pref.multiSelectListPreference!;
    final entries = p.entries ?? const <String>[];
    final values = p.entryValues ?? const <String>[];
    final chosen = [
      for (var i = 0; i < entries.length && i < values.length; i++)
        if (p.values?.contains(values[i]) ?? false) entries[i],
    ].join(', ');
    return Setting.normal(
      name: p.title ?? pref.key ?? '',
      description: p.summary?.isNotEmpty == true ? p.summary : chosen,
      isActivity: true,
      onClick: () {
        var checked = [for (final v in values) p.values?.contains(v) ?? false];
        AlertDialogBuilder(context)
          ..setTitle(p.title ?? '')
          ..multiChoiceItems(entries, checked, (next) => checked = next)
          ..setNegativeButton(getString.cancel, null)
          ..setPositiveButton(
            getString.ok,
            () => _set(pref, [
              for (var i = 0; i < values.length; i++)
                if (checked[i]) values[i],
            ]),
          )
          ..show();
      },
    );
  }

  Setting _text(BuildContext context, SourcePreference pref) {
    final p = pref.editTextPreference!;
    final secret = pref.key?.toLowerCase().contains('password') ?? false;
    final text = p.value ?? p.text ?? '';
    return Setting.normal(
      name: p.title ?? pref.key ?? '',
      description: secret ? '•' * text.length : (p.summary ?? text),
      isActivity: true,
      onClick: () {
        var value = text;
        AlertDialogBuilder(context)
          ..setTitle(p.dialogTitle ?? p.title ?? '')
          ..setMessage(p.dialogMessage ?? '')
          ..setCustomView(
            TextFormField(
              initialValue: value,
              obscureText: secret,
              onChanged: (v) => value = v,
            ),
          )
          ..setNegativeButton(getString.cancel, null)
          ..setPositiveButton(getString.ok, () => _set(pref, value))
          ..show();
      },
    );
  }
}
