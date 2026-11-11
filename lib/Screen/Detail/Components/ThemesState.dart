import 'dart:async';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

import '../../../Core/Services/Api/AnimeThemes.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Utils/Function.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Player/Engine/PlayRequest.dart';
import '../../Player/PlayerLauncher.dart';
import '../Comments/Data/CommentsTarget.dart';

class ThemesState extends ScreenState {
  final MediaService service;
  final Media media;

  ThemesState(this.service, this.media);

  final result = Live<AnimeThemesResult?>(null);
  final loading = true.live;
  final expanded = false.live;

  @override
  void onInit() => unawaited(_load());

  Future<void> _load() async {
    try {
      final id = await CommentsTarget.resolve(service, media);
      if (id != null) result.value = await AnimeThemes.forAnilist(id);
    } catch (e, st) {
      logger(
        e is StateError
            ? 'AnimeThemes failed: $e'
            : 'AnimeThemes failed: $e\n$st',
        logLevel: LogLevel.warning,
        tag: 'THEMES',
      );
    } finally {
      loading.value = false;
    }
  }

  List<AnimeTheme> get themes {
    final all = result.value?.themes ?? const [];
    return expanded.value || all.length <= 4 ? all : all.take(4).toList();
  }

  bool get hasMore => (result.value?.themes.length ?? 0) > 4;

  String label(AnimeTheme t) => t.slug.isEmpty ? t.type : t.slug;

  Future<void> play(AnimeTheme theme, {ThemeVideo? video, bool audio = false}) {
    final pick = video ?? theme.best;
    final url = audio ? (pick?.audio ?? theme.videos.first.audio) : pick?.link;
    if (url == null) return Future.value();
    final name = [
      label(theme),
      theme.title,
    ].where((e) => e.isNotEmpty).join(' · ');
    return openPlayer(
      PlayRequest(
        items: [
          PlayItem(
            key: url,
            title: name,
            subtitle: media.mainName,
            fixed: [v.Video(name, url, audio ? 'Audio' : (pick?.label ?? ''))],
          ),
        ],
      ),
    );
  }

  void openSite() {
    final page = result.value?.page;
    if (page != null) unawaited(openLinkInBrowser(page));
  }
}
