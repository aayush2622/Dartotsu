import '../../../../Logger.dart';

import 'dart:async';
import 'dart:convert';

import 'package:dartotsu_extension_bridge/Models/SourceFilter.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Extension/Data/SourceSearchFilters.dart';
import '../../../Extension/SourceFilterSheet.dart';
import '../Data/SourceMatcher.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/ScrollConfig.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../WatchState.dart';

class WrongTitleSheet extends StatefulWidget {
  final WatchState state;

  const WrongTitleSheet({super.key, required this.state});

  @override
  State<WrongTitleSheet> createState() => _WrongTitleSheetState();
}

class _WrongTitleSheetState extends State<WrongTitleSheet> {
  late final TextEditingController _term = TextEditingController(
    text: widget.state.current.mainName,
  );
  final _results = <SourceMatch>[].liveList;
  final _loading = false.live;
  final _error = Live<String?>(null);
  final _filters = <SourceFilter>[].liveList;
  final _filtering = false.live;
  List<SourceFilter> _applied = const [];
  String _pristine = '[]';
  int _run = 0;

  @override
  void initState() {
    super.initState();
    unawaited(_loadFilters().whenComplete(_search));
  }

  Future<void> _loadFilters() async {
    final source = widget.state.source.value;
    if (source == null) return;
    try {
      final list = await source.methods.getFilterList();
      _pristine = jsonEncode([for (final f in list) f.toJson()]);
      final saved = SourceSearchFilters.saved(source);
      _applied = copyFilters(saved ?? list);
      _filtering.value = _signature(_applied) != _pristine;
      _filters.value = list;
    } catch (e, st) {
      logError('WrongTitleSheet', e, st);
    }
  }

  static String _signature(List<SourceFilter> list) =>
      jsonEncode([for (final f in list) f.toJson()]);

  Future<void> _openFilters() async {
    final source = widget.state.source.value;
    if (source == null) return;
    final picked = await showSourceFilters(
      context,
      _applied,
      onReset: () {
        _applied = copyFilters(_filters.toList());
        _filtering.value = false;
        SourceSearchFilters.clear(source);
        unawaited(_search());
      },
    );
    if (picked == null) return;
    _applied = picked;
    _filtering.value = _signature(picked) != _pristine;
    if (_filtering.value) {
      SourceSearchFilters.save(source, picked);
    } else {
      SourceSearchFilters.clear(source);
    }
    unawaited(_search());
  }

  @override
  void dispose() {
    _run++;
    _term.dispose();
    super.dispose();
  }

  Future<void> _search() async {
    final source = widget.state.source.value;
    final term = _term.text.trim();
    if (source == null || term.isEmpty) return;
    final run = ++_run;
    _loading.value = true;
    _error.value = null;
    try {
      final found = await SourceMatcher.search(
        source,
        term,
        SourceMatcher.names(widget.state.current),
      );
      if (run != _run) return;
      _results.value = found;
    } catch (e) {
      if (run != _run) return;
      _error.value = e.toString();
      _results.clear();
    } finally {
      if (run == _run) _loading.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppSheet(
      title: getString.watchWrongTitle,
      heightFactor: 0.8,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              0,
              Dimens.pagePad,
              Dimens.gapSm,
            ),
            child: TextField(
              controller: _term,
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => _search(),
              decoration: InputDecoration(
                hintText: getString.watchSearchSource(
                  widget.state.source.value?.name ?? '',
                ),
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: Watch(
                  () => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_filters.isNotEmpty)
                        IconButton(
                          tooltip: getString.filters,
                          icon: Badge(
                            isLabelVisible: _filtering.value,
                            smallSize: 8,
                            child: const Icon(Icons.tune_rounded),
                          ),
                          onPressed: _openFilters,
                        ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_rounded),
                        onPressed: _search,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Watch(() {
              if (_loading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              final message = _error.value;
              if (message != null) {
                return Center(
                  child: Text(message, textAlign: TextAlign.center),
                );
              }
              if (_results.isEmpty) {
                return Center(child: Text(getString.watchNothingFound));
              }
              final items = _results.toList();
              return ScrollConfig(
                context,
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(
                    Dimens.pagePad,
                    0,
                    Dimens.pagePad,
                    Dimens.pagePad,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final match = items[index];
                    return SheetTile(
                      tinted: true,
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: cachedNetworkImage(
                          imageUrl: match.media.cover,
                          width: 44,
                          height: 62,
                          fit: BoxFit.cover,
                          errorWidget: (_, _, _) =>
                              const SizedBox(width: 44, height: 62),
                        ),
                      ),
                      title: Text(
                        match.media.title ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        '${match.score}%',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      onTap: () {
                        popPage(context);
                        unawaited(widget.state.chooseMatch(match.media));
                      },
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
