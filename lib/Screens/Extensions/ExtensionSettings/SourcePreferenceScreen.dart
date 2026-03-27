import 'package:dartotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SourcePreferenceScreen extends StatefulWidget {
  final Source source;
  final List<SourcePreference> preference;

  const SourcePreferenceScreen({
    super.key,
    required this.source,
    required this.preference,
  });

  @override
  State<SourcePreferenceScreen> createState() => _SourcePreferenceScreenState();
}

class _SourcePreferenceScreenState extends State<SourcePreferenceScreen> {
  Rx<List<SourcePreference>?> preference = Rx(null);

  @override
  void initState() {
    super.initState();
    loadPreferences();
  }

  Future<void> loadPreferences() async {
    preference.value = await widget.source.methods.getPreference();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    Text titleText(String text) {
      return Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: theme.primary,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      );
    }

    Text subtitleText(String text) {
      return Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: theme.onSurfaceVariant,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "${widget.source.name} Settings",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: theme.primary,
          ),
        ),
        iconTheme: IconThemeData(color: theme.primary),
      ),
      body: Obx(() {
        final prefs = preference.value;

        if (prefs == null) {
          return const Center(child: CircularProgressIndicator());
        }

        if (prefs.isEmpty) {
          return const Center(child: Text("Source doesn't have any settings"));
        }

        return ListView.builder(
          itemCount: prefs.length,
          itemBuilder: (context, index) {
            final pref = prefs[index];

            switch (pref.type) {
              /// CHECKBOX
              case 'checkbox':
                final p = pref.checkBoxPreference!;
                return CheckboxListTile(
                  title: titleText(p.title ?? ''),
                  subtitle: p.summary != null ? subtitleText(p.summary!) : null,
                  value: p.value ?? false,
                  onChanged: (val) async {
                    p.value = val;
                    await widget.source.methods.setPreference(pref, val);
                    await loadPreferences();
                  },
                );

              /// SWITCH
              case 'switch':
                final p = pref.switchPreferenceCompat!;
                return SwitchListTile(
                  title: titleText(p.title ?? ''),
                  subtitle: p.summary != null ? subtitleText(p.summary!) : null,
                  value: p.value ?? false,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  onChanged: (val) async {
                    p.value = val;
                    await widget.source.methods.setPreference(pref, val);
                    await loadPreferences();
                  },
                );

              /// LIST
              case 'list':
                final p = pref.listPreference!;

                final entries = p.entries ?? [];
                final entryValues = p.entryValues ?? [];

                int selectedIndex = 0;

                if (p.value != null && entryValues.contains(p.value)) {
                  selectedIndex = entryValues.indexOf(p.value!);
                }

                final subtitle =
                    entries.isNotEmpty && selectedIndex < entries.length
                        ? "${p.summary ?? ''} (${entries[selectedIndex]})"
                        : (p.summary ?? '');

                return ListTile(
                  title: titleText(p.title ?? ''),
                  subtitle: subtitleText(subtitle),
                  onTap: () {
                    AlertDialogBuilder(context)
                      ..setTitle(p.title ?? '')
                      ..singleChoiceItems(
                        entries,
                        selectedIndex,
                        (int index) async {
                          final newValue = entryValues[index];
                          p.value = newValue;
                          await widget.source.methods
                              .setPreference(pref, newValue);
                          await loadPreferences();
                        },
                      )
                      ..show();
                  },
                );

              /// MULTI SELECT
              case 'multi_select':
                final p = pref.multiSelectListPreference!;

                final subtitle = (p.entries ?? [])
                    .asMap()
                    .entries
                    .where((e) =>
                        p.values?.contains(p.entryValues?[e.key]) ?? false)
                    .map((e) => e.value)
                    .join(", ");

                return ListTile(
                  title: titleText(p.title ?? ''),
                  subtitle: subtitleText(
                    p.summary?.isNotEmpty == true ? p.summary! : subtitle,
                  ),
                  onTap: () {
                    final newValues = <String>[];

                    AlertDialogBuilder(context)
                      ..setTitle(p.title ?? '')
                      ..multiChoiceItems(
                        p.entries ?? [],
                        p.entryValues
                            ?.map((v) => p.values?.contains(v) ?? false)
                            .toList(),
                        (checked) {
                          newValues.clear();
                          for (int i = 0; i < checked.length; i++) {
                            if (checked[i]) {
                              final value = p.entryValues?[i];
                              if (value != null) newValues.add(value);
                            }
                          }
                        },
                      )
                      ..setPositiveButton('OK', () async {
                        p.values = newValues.toList();
                        await widget.source.methods
                            .setPreference(pref, newValues.toList());
                        await loadPreferences();
                      })
                      ..setNegativeButton("Cancel", () {})
                      ..show();
                  },
                );

              /// TEXT
              case 'text':
                final p = pref.editTextPreference!;

                final isPassword =
                    pref.key?.toLowerCase().contains("password") ?? false;

                final displayText = isPassword
                    ? "•" * (p.value ?? p.text ?? '').length
                    : (p.summary ?? p.value ?? p.text ?? '');

                return ListTile(
                  title: titleText(p.title ?? ''),
                  subtitle: subtitleText(displayText),
                  onTap: () {
                    var value = p.value ?? p.text ?? '';

                    AlertDialogBuilder(context)
                      ..setTitle(p.dialogTitle ?? p.title ?? '')
                      ..setMessage(p.dialogMessage ?? '')
                      ..setCustomView(
                        TextFormField(
                          initialValue: value,
                          obscureText: isPassword,
                          onChanged: (val) => value = val,
                        ),
                      )
                      ..setPositiveButton('OK', () async {
                        p.value = value;
                        await widget.source.methods.setPreference(pref, value);
                        await loadPreferences();
                      })
                      ..setNegativeButton("Cancel", () {})
                      ..show();
                  },
                );

              default:
                return ListTile(
                  title: Text(pref.key ?? 'Unknown Preference'),
                  subtitle: Text('Unsupported preference type ${pref.type}'),
                );
            }
          },
        );
      }),
    );
  }
}
