import 'package:flutter/material.dart';

import '../Engine/OnlineSubtitles.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../PlayerState.dart';
import '../../../Widgets/Components/AppSpinner.dart';

Future<void> showOnlineSubtitleSheet(BuildContext context, PlayerState state) =>
    showCustomBottomDialog<void>(
      context,
      FractionallySizedBox(
        heightFactor: 0.85,
        child: _OnlineSubtitleSheet(state: state),
      ),
    );

class _OnlineSubtitleSheet extends StatefulWidget {
  final PlayerState state;

  const _OnlineSubtitleSheet({required this.state});

  @override
  State<_OnlineSubtitleSheet> createState() => _OnlineSubtitleSheetState();
}

class _OnlineSubtitleSheetState extends State<_OnlineSubtitleSheet> {
  late final TextEditingController _query;
  late final _language = subtitleLanguageCode(
    widget.state.settings.subtitleLanguage,
  ).live;
  final _results = <OnlineSubtitle>[].liveList;
  final _loading = false.live;
  final _failure = Live<String?>(null);
  final _downloading = ''.live;
  var _searched = false;

  PlayerState get _state => widget.state;

  @override
  void initState() {
    super.initState();
    final item = _state.item;
    final name = _state.request.media?.mainName ?? item.title;
    final number = item.number > 0 ? ' ${item.number.floor()}' : '';
    _query = TextEditingController(text: '$name$number'.trim());
    _search();
  }

  @override
  void dispose() {
    _query.dispose();
    super.dispose();
  }

  String _term() {
    final item = _state.item;
    final text = _query.text.trim();
    final number = item.number > 0 ? '${item.number.floor()}' : '';
    return number.isNotEmpty && text.endsWith(number)
        ? text.substring(0, text.length - number.length).trim()
        : text;
  }

  Future<void> _search() async {
    final term = _term();
    if (term.isEmpty) return;
    _loading.value = true;
    _failure.value = null;
    try {
      final item = _state.item;
      final source = _state.engine.source;
      final local = source != null && !source.contains('://') ? source : null;
      _results.value = await searchOnlineSubtitles(
        query: term,
        language: _language.value,
        episode: item.number > 0 ? item.number.floor() : null,
        filePath: local,
        imdbTitle: _state.request.media?.mainName ?? term,
        year: _state.request.media?.startDate?.year,
        season: seasonGuess(_state.request.media?.mainName ?? term),
        movie: _state.request.media?.format == 'MOVIE',
      );
    } catch (e, st) {
      logError('OnlineSubtitleSheet', e, st, 'search failed');
      _failure.value = getString.playerOnlineFailed(e.toString());
      _results.value = [];
    } finally {
      _searched = true;
      if (mounted) _loading.value = false;
    }
  }

  Future<void> _pickLanguage() async {
    final picked = await showChoiceSheet<String>(
      context,
      title: getString.playerSubtitleLanguage,
      selected: _language.value,
      options: [
        for (final l in subtitleLanguages) ChoiceOption(l.code, l.name),
      ],
    );
    if (picked == null) return;
    _language.value = picked;
    await _search();
  }

  Future<void> _use(OnlineSubtitle subtitle) async {
    _downloading.value = subtitle.id;
    try {
      final path = await downloadOnlineSubtitle(subtitle);
      await _state.engine.addSubtitle(Uri.file(path).toString(), subtitle.name);
      if (mounted) popPage(context);
    } catch (e, st) {
      logError('OnlineSubtitleSheet', e, st, 'download failed');
      snackString(getString.playerOnlineDownloadFailed(e.toString()));
    } finally {
      if (mounted) _downloading.value = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return AppSheet(
      title: getString.playerOnlineSubtitles,
      heightFactor: 1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _query,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (_) => _search(),
                    decoration: InputDecoration(
                      hintText: getString.playerOnlineSearchHint,
                      prefixIcon: const Icon(Icons.search_rounded),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Watch(
                  () => ActionChip(
                    label: Text(_language.value.toUpperCase()),
                    avatar: const Icon(Icons.language_rounded, size: 18),
                    onPressed: _pickLanguage,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Watch(() {
              if (_loading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              final failure = _failure.value;
              final results = _results.toList();
              final busy = _downloading.value;
              if (failure != null || (_searched && results.isEmpty)) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      failure ?? getString.playerOnlineNone,
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                );
              }
              return ListView.builder(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                itemCount: results.length,
                itemBuilder: (_, i) {
                  final s = results[i];
                  return SheetTile(
                    tinted: true,
                    radius: BorderRadius.vertical(
                      top: Radius.circular(i == 0 ? 20 : 6),
                      bottom: Radius.circular(i == results.length - 1 ? 20 : 6),
                    ),
                    leading: busy == s.id
                        ? const AppSpinner(size: 24)
                        : Icon(
                            s.hashMatch
                                ? Icons.verified_rounded
                                : Icons.subtitles_rounded,
                          ),
                    title: Text(
                      s.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      [
                        if (s.hashMatch) getString.playerOnlineMatch,
                        if (!s.hashMatch && s.episodeMatch)
                          getString.playerOnlineEpisode,
                        s.provider,
                        s.format.toUpperCase(),
                        if (s.downloads > 0)
                          getString.playerOnlineDownloads(s.downloads),
                      ].join(' • '),
                    ),
                    onTap: busy.isEmpty ? () => _use(s) : null,
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
