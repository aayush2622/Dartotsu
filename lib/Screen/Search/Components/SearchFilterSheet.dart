import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Model/SearchResults.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../Widgets/AppDropdown.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ScrollConfig.dart';

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
      title: 'Filters',
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

class _FilterBodyState extends State<_FilterBody> {
  late String? _sort = widget.start.sort;
  late String? _format = widget.start.format;
  late String? _status = widget.start.status;
  late String? _source = widget.start.source;
  late String? _country = widget.start.countryOfOrigin;
  late String? _season = widget.start.season;
  late int? _year = widget.start.seasonYear ?? widget.start.startYear;
  late final Set<String> _genres = {...?widget.start.genres};
  late final Set<String> _noGenres = {...?widget.start.excludedGenres};
  late final Set<String> _tags = {...?widget.start.tags};
  late final Set<String> _noTags = {...?widget.start.excludedTags};
  bool _allTags = false;

  SearchFilterSpec get s => widget.spec;

  void _apply() {
    final q = widget.start
      ..sort = _sort
      ..format = _format
      ..status = _status
      ..source = _source
      ..countryOfOrigin = _country?.isEmpty == true ? null : _country
      ..season = _season
      ..seasonYear = s.season ? _year : null
      ..startYear = s.season ? null : _year
      ..genres = _genres.isEmpty ? null : _genres.toList()
      ..tags = _tags.isEmpty ? null : _tags.toList()
      ..excludedGenres = _noGenres.isEmpty ? null : _noGenres.toList()
      ..excludedTags = _noTags.isEmpty ? null : _noTags.toList()
      ..page = 1;
    widget.onApply(q);
    Navigator.pop(context);
  }

  void _clear() => setState(() {
    _sort = _format = _status = _source = _country = _season = null;
    _year = null;
    _genres.clear();
    _noGenres.clear();
    _tags.clear();
    _noTags.clear();
  });

  @override
  Widget build(BuildContext context) {
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
                  _dropRow([
                    if (s.sources.isNotEmpty)
                      _drop(
                        'Source',
                        Icons.menu_book_rounded,
                        s.sources,
                        _source,
                        (v) => _source = v,
                      ),
                    if (s.formats.isNotEmpty)
                      _drop(
                        'Format',
                        Icons.movie_filter_rounded,
                        s.formats,
                        _format,
                        (v) => _format = v,
                      ),
                  ]),
                  _dropRow([
                    if (s.statuses.isNotEmpty)
                      _drop(
                        'Status',
                        Icons.podcasts_rounded,
                        s.statuses,
                        _status,
                        (v) => _status = v,
                      ),
                    if (s.season)
                      _drop(
                        'Season',
                        Icons.wb_sunny_rounded,
                        const ['WINTER', 'SPRING', 'SUMMER', 'FALL'],
                        _season,
                        (v) => _season = v,
                      ),
                    if (s.year)
                      _drop(
                        'Year',
                        Icons.calendar_month_rounded,
                        years,
                        _year?.toString(),
                        (v) => _year = v == null ? null : int.parse(v),
                      ),
                  ]),
                  if (s.genres.isNotEmpty) ...[
                    _title('Genres'),
                    _chipWrap(s.genres, _genres, exclude: _noGenres),
                  ],
                  if (s.tags.isNotEmpty) ...[
                    _title('Tags'),
                    _chipWrap(
                      _allTags ? s.tags : s.tags.take(30).toList(),
                      _tags,
                      exclude: _noTags,
                    ),
                    if (s.tags.length > 30)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () => setState(() => _allTags = !_allTags),
                          child: Text(_allTags ? 'Show less' : 'Show all'),
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
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                ),
                SizedBox(width: Dimens.gap),
                Expanded(
                  child: FilledButton(
                    onPressed: _apply,
                    child: const Text('Apply'),
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
            tooltip: 'Reset',
            onPressed: _clear,
            icon: const Icon(Icons.close_rounded, size: 28),
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
              tooltip: 'Country',
              icon: Icon(
                Icons.public_rounded,
                size: 28,
                color: (_country?.isNotEmpty ?? false)
                    ? context.colorScheme.primary
                    : null,
              ),
              onSelected: (v) =>
                  setState(() => _country = v.isEmpty ? null : v),
              itemBuilder: (_) => [
                for (final e in s.countries.entries)
                  PopupMenuItem(value: e.key, child: Text(e.value)),
              ],
            ),
          if (s.sorts.isNotEmpty)
            PopupMenuButton<String>(
              tooltip: 'Sort',
              icon: Icon(
                Icons.filter_list_rounded,
                size: 28,
                color: _sort != null ? context.colorScheme.primary : null,
              ),
              onSelected: (v) => setState(() => _sort = v.isEmpty ? null : v),
              itemBuilder: (_) => [
                const PopupMenuItem(value: '', child: Text('Default')),
                for (final e in s.sorts.entries)
                  PopupMenuItem(value: e.key, child: Text(e.value)),
              ],
            ),
          if (s.countries.isEmpty && s.sorts.isEmpty) const SizedBox(width: 48),
        ],
      ),
    );
  }

  Widget _title(String text) => Padding(
    padding: EdgeInsets.only(top: Dimens.gap, bottom: Dimens.gapSm, left: 4),
    child: Text(
      text,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  Widget _dropRow(List<Widget> children) {
    final visible = children.whereType<Widget>().toList();
    if (visible.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.only(top: Dimens.gapSm),
      child: Row(
        children: [
          for (final (i, c) in visible.indexed) ...[
            if (i > 0) SizedBox(width: Dimens.gapSm),
            Expanded(child: c),
          ],
        ],
      ),
    );
  }

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
      onChanged: (v) =>
          setState(() => onChanged(v == null || v == _any ? null : v)),
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
                label: Text(o.titleCase),
                avatar: excluded
                    ? Icon(Icons.block_rounded, size: 16, color: scheme.error)
                    : null,
                selected: on || excluded,
                selectedColor: excluded ? scheme.errorContainer : null,
                showCheckmark: false,
                onSelected: (_) => setState(() {
                  if (on) {
                    selected.remove(o);
                    if (exclude != null) exclude.add(o);
                  } else if (excluded) {
                    exclude!.remove(o);
                  } else {
                    selected.add(o);
                  }
                }),
              );
            },
          ),
      ],
    );
  }
}
