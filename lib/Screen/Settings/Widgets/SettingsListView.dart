import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'SettingsAdaptor.dart';
import 'SettingsSearchField.dart';

class SettingsListView extends StatefulWidget {
  final List<Setting> Function(BuildContext) searchable;
  final List<Setting> Function(BuildContext)? menu;
  final String? hint;

  /// When set, renders an M3 large collapsing top app bar with this title as
  /// the first sliver instead of leaving the caller's own [Scaffold.appBar].
  final String? title;

  const SettingsListView({
    super.key,
    required this.searchable,
    this.menu,
    this.hint,
    this.title,
  });

  @override
  State<SettingsListView> createState() => _SettingsListViewState();
}

class _SettingsListViewState extends State<SettingsListView> {
  final _query = ''.obs;

  @override
  Widget build(BuildContext context) {
    return CustomScrollConfig(
      context,
      children: [
        if (widget.title != null)
          SliverAppBar.medium(
            backgroundColor: Colors.transparent,
            titleSpacing: 4,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
                color: context.colorScheme.onSurfaceVariant,
              ),
              onPressed: () {
                if (Get.key.currentState?.canPop() ?? false) Get.back();
              },
            ),
            title: Text(widget.title!),
          ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapXs,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              SettingsSearchField(query: _query, hint: widget.hint),
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
            ]),
          ),
        ),
      ],
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
