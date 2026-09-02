import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Model/SearchResults.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppDropdown.dart';
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
  late final Set<String> _tags = {...?widget.start.tags};
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
      ..page = 1;
    widget.onApply(q);
    Navigator.pop(context);
  }

  void _clear() => setState(() {
    _sort = _format = _status = _source = _country = _season = null;
    _year = null;
    _genres.clear();
    _tags.clear();
  });

  @override
  Widget build(BuildContext context) {
    final years = [for (var y = DateTime.now().year + 1; y >= 1970; y--) '$y'];
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.7,
      child: Column(
        children: [
          Expanded(
            child: ScrollConfig(
              context,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: Dimens.gap),
                children: [
                  if (s.sorts.isNotEmpty)
                    _Field(
                      'Sort by',
                      AppChoiceChips<String?>(
                        value: _sort,
                        onChanged: (v) => setState(() => _sort = v),
                        options: [
                          const AppSegment(null, label: 'Default'),
                          for (final e in s.sorts.entries)
                            AppSegment(e.key, label: e.value),
                        ],
                      ),
                    ),
                  _dropRow([
                    if (s.formats.isNotEmpty)
                      _drop('Format', s.formats, _format, (v) => _format = v),
                    if (s.statuses.isNotEmpty)
                      _drop('Status', s.statuses, _status, (v) => _status = v),
                  ]),
                  _dropRow([
                    if (s.sources.isNotEmpty)
                      _drop('Source', s.sources, _source, (v) => _source = v),
                    if (s.countries.isNotEmpty)
                      _drop(
                        'Country',
                        s.countries.keys.toList(),
                        _country,
                        (v) => _country = v,
                        labels: s.countries,
                      ),
                  ]),
                  _dropRow([
                    if (s.season)
                      _drop(
                        'Season',
                        const ['WINTER', 'SPRING', 'SUMMER', 'FALL'],
                        _season,
                        (v) => _season = v,
                      ),
                    if (s.year)
                      _drop(
                        'Year',
                        years,
                        _year?.toString(),
                        (v) => _year = v == null ? null : int.parse(v),
                      ),
                  ]),
                  if (s.genres.isNotEmpty)
                    _Field('Genres', _chipWrap(s.genres, _genres)),
                  if (s.tags.isNotEmpty)
                    _Field(
                      'Tags',
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _chipWrap(
                            _allTags ? s.tags : s.tags.take(24).toList(),
                            _tags,
                          ),
                          if (s.tags.length > 24)
                            TextButton(
                              onPressed: () =>
                                  setState(() => _allTags = !_allTags),
                              child: Text(_allTags ? 'Show less' : 'Show all'),
                            ),
                        ],
                      ),
                    ),
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
                    onPressed: _clear,
                    child: const Text('Clear'),
                  ),
                ),
                SizedBox(width: Dimens.gap),
                Expanded(
                  flex: 2,
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
          if (visible.length == 1) const Spacer(),
        ],
      ),
    );
  }

  static const _any = '— Any —';

  Widget _drop(
    String hint,
    List<String> options,
    String? value,
    ValueChanged<String?> onChanged, {
    Map<String, String>? labels,
  }) {
    return AppDropdown(
      hintText: hint,
      value: value == null || value.isEmpty ? _any : value,
      options: [_any, ...options],
      onChanged: (v) =>
          setState(() => onChanged(v == null || v == _any ? null : v)),
    );
  }

  Widget _chipWrap(List<String> options, Set<String> selected) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final o in options)
          FilterChip(
            label: Text(o.titleCase),
            selected: selected.contains(o),
            showCheckmark: false,
            onSelected: (on) => setState(() {
              on ? selected.add(o) : selected.remove(o);
            }),
          ),
      ],
    );
  }
}

class _Field extends StatelessWidget {
  final String label;
  final Widget child;
  const _Field(this.label, this.child);

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(top: Dimens.gap),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            label,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        child,
      ],
    ),
  );
}
