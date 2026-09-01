import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Model/Setting.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/ThemedContainer.dart';
import 'SettingsAdaptor.dart';

/// A searchable settings body: a search field over a `List<Setting>` rendered by
/// [SettingsAdaptor]. [menu] is shown while the query is empty (a category list
/// on the top screen), [searchable] is the flat set the query filters.
class SettingsListView extends StatefulWidget {
  final List<Setting> Function(BuildContext) searchable;
  final List<Setting> Function(BuildContext)? menu;
  final String hint;

  const SettingsListView({
    super.key,
    required this.searchable,
    this.menu,
    this.hint = 'Search settings',
  });

  @override
  State<SettingsListView> createState() => _SettingsListViewState();
}

class _SettingsListViewState extends State<SettingsListView> {
  final _query = ''.obs;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapXs,
        Dimens.pagePad,
        Dimens.gapXl,
      ),
      children: [
        ThemedContainer(
          borderRadius: Dimens.borderLg,
          padding: EdgeInsets.zero,
          child: TextField(
            onChanged: (v) => _query.value = v.trim(),
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: widget.hint,
              prefixIcon: const Icon(Icons.search_rounded),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
            ),
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
                  'Nothing matches "$q"',
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
    );
  }

  /// Keep matching rows; keep a header only while its group still has one.
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
