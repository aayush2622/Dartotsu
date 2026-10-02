import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'SettingsAdaptor.dart';

class SettingsListView extends StatefulWidget {
  final List<Setting> Function(BuildContext) searchable;
  final List<Setting> Function(BuildContext)? menu;
  final String? hint;

  const SettingsListView({
    super.key,
    required this.searchable,
    this.menu,
    this.hint,
  });

  @override
  State<SettingsListView> createState() => _SettingsListViewState();
}

class _SettingsListViewState extends State<SettingsListView> {
  final _query = ''.obs;

  @override
  Widget build(BuildContext context) {
    return ScrollConfig(
      context,
      child: ListView(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapXs,
          Dimens.pagePad,
          Dimens.gapXl,
        ),
        children: [
          TextField(
            onChanged: (v) => _query.value = v.trim(),
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: widget.hint ?? getString.searchSettings,
              prefixIcon: Icon(
                Icons.search_rounded,
                color: context.colorScheme.onSurfaceVariant,
              ),
              filled: true,
              fillColor: context.colorScheme.surfaceContainerLow,
              border: OutlineInputBorder(
                borderRadius: Dimens.border,
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: Dimens.border,
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: Dimens.border,
                borderSide: BorderSide(
                  color: context.colorScheme.primary,
                  width: 2,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
          SizedBox(height: Dimens.gap),
          Obx(() {
            final q = _query.value;
            if (q.isEmpty) {
              return SettingsAdaptor(
                settings: (widget.menu ?? widget.searchable)(context),
              );
            }
            final filtered = _filter(widget.searchable(context), q);
            if (filtered.isEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Center(
                  child: Text(
                    getString.nothingMatches(q),
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              );
            }
            return SettingsAdaptor(settings: filtered);
          }),
        ],
      ),
    );
  }

  static List<Setting> _filter(List<Setting> all, String query) {
    final out = <Setting>[];
    for (var i = 0; i < all.length; i++) {
      final s = all[i];
      if (s.type == SettingType.header) {
        var hit = false;
        for (var j = i + 1; j < all.length; j++) {
          if (all[j].type == SettingType.header) break;
          if (all[j].matches(query)) {
            hit = true;
            break;
          }
        }
        if (hit) out.add(s);
      } else if (s.matches(query)) {
        out.add(s);
      }
    }
    return out;
  }
}
