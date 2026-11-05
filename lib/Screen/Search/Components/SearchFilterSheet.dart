import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Model/SearchResults.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../Widgets/AppDropdown.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'SearchFilterState.dart';

/// Edits [current] against [spec] in a bottom sheet; [onApply] gets the new
/// query (page reset to 1). Every control is driven by the service's spec.
void showSearchFilterSheet(
  BuildContext context, {
  required SearchFilterSpec spec,
  required SearchResults current,
  required void Function(SearchResults next) onApply,
}) {
  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      viewList: [_FilterBody(spec: spec, start: current, onApply: onApply)],
    ),
  );
}

class _FilterBody extends StatefulWidget {
  final SearchFilterSpec spec;
  final SearchResults start;
  final void Function(SearchResults) onApply;

  const _FilterBody({
    required this.spec,
    required this.start,
    required this.onApply,
  });

  @override
  State<_FilterBody> createState() => _FilterBodyState();
}

class _FilterBodyState extends State<_FilterBody>
    with ScreenStateHost<_FilterBody, SearchFilterState> {
  @override
  SearchFilterState buildState() => SearchFilterState(
    spec: widget.spec,
    start: widget.start,
    onApply: widget.onApply,
  );

  SearchFilterSpec get s => state.spec;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    state.selection.track();
    final years = [for (var y = DateTime.now().year + 1; y >= 1970; y--) '$y'];
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.78,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(),
          Flexible(
            child: ScrollConfig(
              context,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: Dimens.gap),
                children: [
                  SizedBox(height: Dimens.gapSm),
                  ..._dropRows([
                    if (s.sources.isNotEmpty)
                      _drop(
                        'Source',
                        Icons.auto_stories_rounded,
                        s.sources,
                        state.source.value,
                        (v) => state.source.value = v,
                      ),
                    if (s.formats.isNotEmpty)
                      _drop(
                        'Format',
                        Icons.category_rounded,
                        s.formats,
                        state.format.value,
                        (v) => state.format.value = v,
                      ),
                    if (s.statuses.isNotEmpty)
                      _drop(
                        'Status',
                        Icons.sensors_rounded,
                        s.statuses,
                        state.status.value,
                        (v) => state.status.value = v,
                      ),
                    if (s.season)
                      _drop(
                        'Season',
                        Icons.wb_sunny_rounded,
                        const ['WINTER', 'SPRING', 'SUMMER', 'FALL'],
                        state.season.value,
                        (v) => state.season.value = v,
                      ),
                    if (s.year)
                      _drop(
                        'Year',
                        Icons.calendar_month_rounded,
                        years,
                        state.year.value?.toString(),
                        (v) =>
                            state.year.value = v == null ? null : int.parse(v),
                      ),
                  ]),
                  if (s.genres.isNotEmpty) ...[
                    _title(
                      'Genres',
                      state.genres.length + state.noGenres.length,
                    ),
                    _chipWrap(
                      _selectedFirst(s.genres, state.genres, state.noGenres),
                      state.genres,
                      exclude: state.noGenres,
                    ),
                  ],
                  if (s.tags.isNotEmpty) ...[
                    _title('Tags', state.tags.length + state.noTags.length),
                    _tagSearch(),
                    _chipWrap(
                      _visibleTags(),
                      state.tags,
                      exclude: state.noTags,
                    ),
                    if (state.tagQuery.value.isEmpty && s.tags.length > 30)
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: TextButton(
                          onPressed: () =>
                              state.allTags.value = !state.allTags.value,
                          child: Text(
                            state.allTags.value
                                ? getString.showLess
                                : getString.showAll,
                          ),
                        ),
                      ),
                  ],
                  SizedBox(height: Dimens.gap),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.gap,
              Dimens.gapSm,
              Dimens.gap,
              Dimens.gap,
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => popPage(context),
                    child: Text(getString.cancel),
                  ),
                ),
                SizedBox(width: Dimens.gap),
                Expanded(
                  child: FilledButton(
                    onPressed: state.apply,
                    child: Text(getString.apply),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.gapSm),
      child: Row(
        children: [
          IconButton(
            tooltip: getString.reset,
            onPressed: state.clear,
            icon: const Icon(Icons.restart_alt_rounded, size: 28),
          ),
          Expanded(
            child: Text(
              'Filter',
              textAlign: TextAlign.center,
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (s.countries.isNotEmpty)
            PopupMenuButton<String>(
              tooltip: getString.country,
              icon: Icon(
                Icons.public_rounded,
                size: 28,
                color: (state.country.value?.isNotEmpty ?? false)
                    ? context.colorScheme.primary
                    : null,
              ),
              onSelected: (v) => state.country.value = v.isEmpty ? null : v,
              itemBuilder: (_) => [
                for (final e in s.countries.entries)
                  PopupMenuItem(value: e.key, child: Text(e.value)),
              ],
            ),
          if (s.sorts.isNotEmpty)
            PopupMenuButton<String>(
              tooltip: getString.sort,
              icon: Icon(
                Icons.sort_rounded,
                size: 28,
                color: state.sort.value != null
                    ? context.colorScheme.primary
                    : null,
              ),
              onSelected: (v) => state.sort.value = v.isEmpty ? null : v,
              itemBuilder: (_) => [
                PopupMenuItem(value: '', child: Text(getString.settingDefault)),
                for (final e in s.sorts.entries)
                  PopupMenuItem(value: e.key, child: Text(e.value)),
              ],
            ),
          if (s.countries.isEmpty && s.sorts.isEmpty) const SizedBox(width: 48),
        ],
      ),
    );
  }

  Widget _title(String text, int selected) => Padding(
    padding: EdgeInsetsDirectional.only(
      top: Dimens.gap,
      bottom: Dimens.gapSm,
      start: 4,
    ),
    child: Row(
      children: [
        Text(
          text,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        if (selected > 0) ...[
          const SizedBox(width: 8),
          Badge(label: Text('$selected')),
        ],
      ],
    ),
  );

  List<String> _selectedFirst(
    List<String> options,
    Set<String> selected,
    Set<String> excluded,
  ) => [
    ...options.where((o) => selected.contains(o) || excluded.contains(o)),
    ...options.where((o) => !selected.contains(o) && !excluded.contains(o)),
  ];

  List<String> _visibleTags() {
    final query = state.tagQuery.value.trim().toLowerCase();
    final ordered = _selectedFirst(s.tags, state.tags, state.noTags);
    if (query.isNotEmpty) {
      return ordered.where((t) => t.toLowerCase().contains(query)).toList();
    }
    return state.allTags.value ? ordered : ordered.take(30).toList();
  }

  Widget _tagSearch() => Padding(
    padding: EdgeInsets.only(bottom: Dimens.gapSm),
    child: TextField(
      onChanged: (v) => state.tagQuery.value = v,
      decoration: InputDecoration(
        isDense: true,
        hintText: getString.searchTags,
        prefixIcon: const Icon(Icons.search_rounded, size: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
  );

  List<Widget> _dropRows(List<Widget> children) => [
    for (var i = 0; i < children.length; i += 2)
      Padding(
        padding: EdgeInsets.only(top: Dimens.gapSm),
        child: Row(
          children: [
            Expanded(child: children[i]),
            SizedBox(width: Dimens.gapSm),
            Expanded(
              child: i + 1 < children.length
                  ? children[i + 1]
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
  ];

  static const _any = '— Any —';

  Widget _drop(
    String hint,
    IconData icon,
    List<String> options,
    String? value,
    ValueChanged<String?> onChanged,
  ) {
    return AppDropdown(
      labelText: hint,
      prefixIcon: icon,
      value: value == null || value.isEmpty ? _any : value,
      options: [_any, ...options],
      onChanged: (v) => onChanged(v == null || v == _any ? null : v),
    );
  }

  Widget _chipWrap(
    List<String> options,
    Set<String> selected, {
    Set<String>? exclude,
  }) {
    final scheme = context.colorScheme;
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final o in options)
          Builder(
            builder: (_) {
              final excluded = exclude?.contains(o) ?? false;
              final on = selected.contains(o);
              return FilterChip(
                mouseCursor: kClickCursor,
                label: Text(o.titleCase),
                avatar: excluded
                    ? Icon(Icons.block_rounded, size: 16, color: scheme.error)
                    : null,
                selected: on || excluded,
                selectedColor: excluded ? scheme.errorContainer : null,
                showCheckmark: false,
                onSelected: (_) {
                  if (on) {
                    selected.remove(o);
                    if (exclude != null) exclude.add(o);
                  } else if (excluded) {
                    exclude!.remove(o);
                  } else {
                    selected.add(o);
                  }
                  state.selection.fire();
                },
              );
            },
          ),
      ],
    );
  }
}
