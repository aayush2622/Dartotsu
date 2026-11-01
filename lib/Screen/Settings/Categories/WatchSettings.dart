import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Detail/Watch/Data/EpisodeMeta.dart';
import '../../Detail/Watch/Data/EpisodeMetaService.dart';
import '../../Detail/Watch/Data/WatchPrefs.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../SubSettingsScreen.dart';
import '../Widgets/SegmentedSetting.dart';
import '../../Together/TogetherSheet.dart';
import 'PlayerSettings.dart';
import 'ReaderSettings.dart';
import '../../Reader/LocalBook.dart';
import '../Layout/BarLayout.dart';
import '../Layout/LayoutEditorScreen.dart';
import '../Widgets/SettingsGroup.dart';

String metaProviderDescription(EpisodeMetaProvider provider) =>
    switch (provider.id) {
      'anizip' => getString.watchMetaAniZipDesc,
      'kitsu' => getString.watchMetaKitsuDesc,
      'simkl' => getString.watchMetaSimklDesc,
      'anilist' => getString.watchMetaAniListDesc,
      'tenrai' => getString.watchMetaTenraiDesc,
      _ => '',
    };

List<Setting> _withoutReset(List<Setting> rows, List<Setting> extra) {
  final cut = rows.lastIndexWhere(
    (r) => r.type == SettingType.header && r.name.isEmpty,
  );
  if (cut < 0) return [...rows, ...extra];
  return [...rows.sublist(0, cut), ...extra, ...rows.sublist(cut)];
}

Setting _trackRow(
  String name,
  IconData icon,
  String value,
  ValueChanged<String> onChanged,
) => segmentedSetting<String>(
  name: name,
  description: getString.trackProgressSettingDesc,
  icon: icon,
  label: name,
  value: value,
  onChanged: onChanged,
  segments: [
    AppSegment('ask', label: getString.trackProgressAsk),
    AppSegment('always', label: getString.trackProgressAlways),
    AppSegment('never', label: getString.trackProgressLocal),
    AppSegment('off', label: getString.trackProgressOff),
  ],
);

List<Setting> _sharedRows(BuildContext context) => [
  Setting.header(getString.settingsSectionLists),
  Setting.switchType(
    name: getString.watchResumeShelf,
    description: getString.watchResumeShelfDesc,
    icon: Icons.history_rounded,
    isChecked: watchResumeShelfPref.rx.value,
    onSwitchChange: (v) => watchResumeShelfPref.rx.value = v,
  ),
  segmentedSetting<int>(
    name: getString.watchLayout,
    description: getString.watchDefaultLayoutDesc,
    icon: Icons.view_list_rounded,
    label: getString.watchLayout,
    value: watchDefaultViewPref.rx.value,
    onChanged: (v) => watchDefaultViewPref.rx.value = v,
    segments: [
      const AppSegment(0, icon: Icons.view_list_rounded),
      const AppSegment(1, icon: Icons.grid_view_rounded),
      const AppSegment(2, icon: Icons.view_comfy_rounded),
    ],
  ),
  segmentedSetting<int>(
    name: getString.watchChunkSize,
    description: getString.watchChunkSizeDesc,
    icon: Icons.format_list_numbered_rounded,
    label: getString.watchChunkSize,
    value: watchChunkSizePref.rx.value,
    onChanged: (v) => watchChunkSizePref.rx.value = v,
    segments: const [
      AppSegment(20, label: '20'),
      AppSegment(30, label: '30'),
      AppSegment(50, label: '50'),
      AppSegment(100, label: '100'),
    ],
  ),
  Setting.switchType(
    name: getString.watchShowDescription,
    description: getString.watchShowDescriptionDesc,
    icon: Icons.notes_rounded,
    isChecked: watchShowDescriptionPref.rx.value,
    onSwitchChange: (v) => watchShowDescriptionPref.rx.value = v,
  ),
  Setting.switchType(
    name: getString.watchMarkOnLongPress,
    description: getString.watchMarkOnLongPressDesc,
    icon: Icons.touch_app_rounded,
    isChecked: watchMarkOnLongPressPref.rx.value,
    onSwitchChange: (v) => watchMarkOnLongPressPref.rx.value = v,
  ),
  Setting.header(getString.watchSettingsSources),
  segmentedSetting<String>(
    name: getString.watchMatching,
    description: getString.watchMatchingDesc,
    icon: Icons.search_rounded,
    label: getString.watchMatching,
    value: watchAutoMatchPref.rx.value,
    onChanged: (v) => watchAutoMatchPref.rx.value = v,
    segments: [
      AppSegment('closest', label: getString.watchMatchClosest),
      AppSegment('exact', label: getString.watchMatchExact),
    ],
  ),
  Setting.switchType(
    name: getString.watchAutoSource,
    description: getString.watchAutoSourceDesc,
    icon: Icons.swap_horiz_rounded,
    isChecked: watchAutoSourcePref.rx.value,
    onSwitchChange: (v) => watchAutoSourcePref.rx.value = v,
  ),
];

List<Setting> _animeExtras(BuildContext context) => [
  Setting.header(getString.watchSettingsLayout),
  Setting.switchType(
    name: getString.watchShowFiller,
    description: getString.watchShowFillerDesc,
    icon: Icons.filter_list_rounded,
    isChecked: watchShowFillerPref.rx.value,
    onSwitchChange: (v) => watchShowFillerPref.rx.value = v,
  ),
  Setting.switchType(
    name: getString.watchBlurUnwatched,
    description: getString.watchBlurUnwatchedDesc,
    icon: Icons.blur_on_rounded,
    isChecked: watchBlurUnwatchedPref.rx.value,
    onSwitchChange: (v) => watchBlurUnwatchedPref.rx.value = v,
  ),
  Setting.header(getString.settingsSectionProgress),
  _trackRow(
    getString.trackProgressSettingAnime,
    Icons.play_circle_outline_rounded,
    trackAnimePref.rx.value,
    (v) => trackAnimePref.rx.value = v,
  ),
  Setting.header(getString.watchSettingsMetadata),
  Setting.custom(
    name: getString.watchSettingsMetadata,
    description: getString.watchMetadataDesc,
    builder: (context) => const _MetaProviders(),
  ),
  Setting.normal(
    name: getString.watchClearMetadata,
    description: getString.watchClearMetadataDesc,
    icon: Icons.cleaning_services_rounded,
    onClick: () {
      EpisodeMetaService.clearCache();
      snackString(getString.watchMetadataCleared);
    },
  ),
];

Setting _layoutRow(BuildContext context, LayoutSurface surface) =>
    Setting.normal(
      name: getString.layoutTitle,
      description: getString.layoutDesc,
      icon: Icons.dashboard_customize_rounded,
      isActivity: true,
      onClick: () =>
          navigateToPage(context, LayoutEditorScreen(surface: surface)),
    );

List<Setting> animeSettings(BuildContext context) => [
  _layoutRow(context, LayoutSurface.player),
  Setting.normal(
    name: getString.togetherTitle,
    description: getString.togetherSettingsDesc,
    icon: Icons.groups_rounded,
    isActivity: true,
    onClick: () => showTogetherSheet(context),
  ),
  ..._withoutReset(playerSettings(context), _animeExtras(context)),
];

List<Setting> mangaSettings(BuildContext context) => [
  _layoutRow(context, LayoutSurface.reader),
  ..._withoutReset(mangaReaderSettings(context), [
    Setting.header(getString.settingsSectionProgress),
    _trackRow(
      getString.trackProgressSettingManga,
      Icons.menu_book_rounded,
      trackMangaPref.rx.value,
      (v) => trackMangaPref.rx.value = v,
    ),
  ]),
];

List<Setting> novelSettings(BuildContext context) => [
  _layoutRow(context, LayoutSurface.novel),
  ...novelReaderSettings(context),
];

List<Setting> localPlaySettings(BuildContext context) => [
  Setting.header(getString.settingsLocalPlayVideo),
  ...localPlayRows(context),
  Setting.header(getString.settingsLocalPlayBooks),
  Setting.normal(
    name: getString.readerOpenBook,
    description: getString.readerOpenBookDesc,
    icon: Icons.auto_stories_rounded,
    isActivity: true,
    onClick: () => pickAndReadBook(context: context),
  ),
];

Map<String, SectionStyle> get _animeSectionIcons => {
  ...playerSectionIcons,
  getString.watchSettingsLayout: SectionStyle(
    Icons.view_list_rounded,
    getString.secAnimeList,
  ),
  getString.settingsSectionProgress: SectionStyle(
    Icons.track_changes_rounded,
    getString.secProgress,
  ),
  getString.watchSettingsMetadata: SectionStyle(
    Icons.info_outline_rounded,
    getString.secAnimeDetails,
  ),
};

Map<String, SectionStyle> get _mangaSectionIcons => {
  ...mangaReaderSectionIcons,
  getString.settingsSectionProgress: SectionStyle(
    Icons.track_changes_rounded,
    getString.secProgress,
  ),
};

Setting _section(
  BuildContext context, {
  required String name,
  required String description,
  required IconData icon,
  required List<Setting> Function(BuildContext) build,
  Map<String, SectionStyle>? accordion,
}) => Setting.normal(
  name: name,
  description: description,
  icon: icon,
  isActivity: true,
  onClick: () => navigateToPage(
    context,
    SubSettingsScreen(title: name, settings: build, accordion: accordion),
  ),
);

List<Setting> watchSettings(BuildContext context) => [
  Setting.header(getString.settingsWatchSections),
  _section(
    context,
    name: getString.anime,
    description: getString.settingsAnimeDesc,
    icon: Icons.movie_filter_rounded,
    build: animeSettings,
    accordion: _animeSectionIcons,
  ),
  _section(
    context,
    name: getString.manga,
    description: getString.settingsMangaDesc,
    icon: Icons.import_contacts_rounded,
    build: mangaSettings,
    accordion: _mangaSectionIcons,
  ),
  _section(
    context,
    name: getString.novel,
    description: getString.settingsNovelDesc,
    icon: Icons.book_rounded,
    build: novelSettings,
    accordion: novelReaderSectionIcons,
  ),
  _section(
    context,
    name: getString.settingsLocalPlay,
    description: getString.settingsLocalPlayDesc,
    icon: Icons.folder_open_rounded,
    build: localPlaySettings,
  ),
  ..._sharedRows(context),
];

List<Setting> watchRows(BuildContext context) => [
  ..._sharedRows(context),
  Setting.header(getString.anime.toUpperCase()),
  ...animeSettings(context),
  Setting.header(getString.manga.toUpperCase()),
  ...mangaSettings(context),
  Setting.header(getString.novel.toUpperCase()),
  ...novelSettings(context),
  Setting.header(getString.settingsLocalPlay.toUpperCase()),
  ...localPlaySettings(context),
];

class _MetaProviders extends StatelessWidget {
  const _MetaProviders();

  @override
  Widget build(BuildContext context) => Watch(() {
    watchMetaDisabledPref.rx.value;
    final list = EpisodeMetaService.ordered();
    return ReorderableListView(
      shrinkWrap: true,
      buildDefaultDragHandles: false,
      physics: const NeverScrollableScrollPhysics(),
      onReorder: (from, to) {
        final ids = [for (final p in list) p.id];
        final moved = ids.removeAt(from);
        ids.insert(to > from ? to - 1 : to, moved);
        EpisodeMetaService.setOrder(ids);
        EpisodeMetaService.clearCache();
      },
      children: [
        for (var i = 0; i < list.length; i++) _row(context, list[i], i),
      ],
    );
  });

  Widget _row(BuildContext context, EpisodeMetaProvider provider, int index) {
    final scheme = context.colorScheme;
    return SwitchListTile(
      key: ValueKey(provider.id),
      contentPadding: EdgeInsets.zero,
      secondary: ReorderableDragStartListener(
        index: index,
        child: Icon(Icons.drag_indicator_rounded, color: scheme.outline),
      ),
      title: Text(provider.name),
      subtitle: Text(
        metaProviderDescription(provider),
        style: context.textTheme.bodySmall?.copyWith(
          color: scheme.onSurfaceVariant,
        ),
      ),
      value: EpisodeMetaService.enabled(provider.id),
      onChanged: (on) {
        EpisodeMetaService.setEnabled(provider.id, on);
        EpisodeMetaService.clearCache();
      },
    );
  }
}
