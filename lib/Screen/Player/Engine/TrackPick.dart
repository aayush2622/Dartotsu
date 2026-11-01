import 'package:dartotsu_extension_bridge/toolkit.dart' as tk;

import 'PlayerEngine.dart';

export 'package:dartotsu_extension_bridge/toolkit.dart'
    show
        LanguageMatcher,
        labelIsSigns,
        languageKeys,
        languageList,
        languageMatcher;

PlayerTrack? pickTrack(
  List<PlayerTrack> tracks,
  List<String> priority, {
  bool avoidSigns = false,
}) => tk.pickTrack(
  tracks,
  priority,
  language: (t) => t.language,
  title: (t) => t.title,
  avoidSigns: avoidSigns,
);
