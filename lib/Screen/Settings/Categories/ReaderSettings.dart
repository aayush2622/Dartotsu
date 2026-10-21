import 'package:flutter/material.dart';

import '../../Reader/Engine/NovelSpeech.dart';
import '../../Reader/Engine/ReaderSettings.dart';
import '../../Reader/Engine/VolumeKeys.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Core/ThemeManager/language.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';
import '../Widgets/SettingRows.dart';
import '../Widgets/SettingSections.dart';

typedef ReaderUpdate = void Function(void Function(ReaderSettings s) change);

String readerModeLabel(String id) => switch (id) {
  'ltr' => getString.readerModeLtr,
  'vertical' => getString.readerModeVertical,
  'webtoon' => getString.readerModeWebtoon,
  'continuous' => getString.readerModeContinuous,
  _ => getString.readerModeRtl,
};

String readerTapLabel(String id) => switch (id) {
  'lshaped' => getString.readerTapLShaped,
  'kindle' => getString.readerTapKindle,
  'edge' => getString.readerTapEdge,
  'off' => getString.readerTapOff,
  _ => getString.readerTapDefault,
};

String readerScaleLabel(String id) => switch (id) {
  'width' => getString.readerScaleWidth,
  'height' => getString.readerScaleHeight,
  'original' => getString.readerScaleOriginal,
  'smart' => getString.readerScaleSmart,
  _ => getString.readerScaleFit,
};

String readerBackgroundLabel(String id) => switch (id) {
  'gray' => getString.readerBackgroundGray,
  'white' => getString.readerBackgroundWhite,
  'theme' => getString.readerBackgroundTheme,
  _ => getString.readerBackgroundBlack,
};

String readerFilterLabel(String id) => switch (id) {
  'grayscale' => getString.readerFilterGrayscale,
  'invert' => getString.readerFilterInvert,
  'sepia' => getString.readerFilterSepia,
  _ => getString.readerFilterNone,
};

String readerFilterQualityLabel(String id) => switch (id) {
  'none' => getString.readerFilterQualityNone,
  'low' => getString.readerFilterQualityLow,
  'high' => getString.readerFilterQualityHigh,
  'lanczos' => getString.readerFilterQualityLanczos,
  _ => getString.readerFilterQualityMedium,
};

String readerOrientationLabel(String id) => switch (id) {
  'portrait' => getString.readerOrientationPortrait,
  'landscape' => getString.readerOrientationLandscape,
  _ => getString.readerOrientationFree,
};

String novelThemeLabel(String id) => switch (id) {
  'light' => getString.novelThemeLight,
  'sepia' => getString.novelThemeSepia,
  'dark' => getString.novelThemeDark,
  'black' => getString.novelThemeBlack,
  _ => getString.novelThemeApp,
};

List<Setting> mangaReaderRows(
  BuildContext context, {
  required ReaderSettings settings,
  required ReaderUpdate update,
}) {
  final s = settings;
  return [
    Setting.header(getString.readerSectionReading),
    choiceSetting<String>(
      context,
      name: getString.readerMode,
      icon: Icons.chrome_reader_mode_rounded,
      value: s.mode,
      values: readerModes,
      label: readerModeLabel,
      onPick: (v) => update((x) => x.mode = v),
    ),
    if (!s.scrolls) ...[
      choiceSetting<String>(
        context,
        name: getString.readerScale,
        icon: Icons.aspect_ratio_rounded,
        value: s.scale,
        values: readerScales,
        label: readerScaleLabel,
        onPick: (v) => update((x) => x.scale = v),
      ),
      switchSetting(
        getString.readerDoublePage,
        getString.readerDoublePageDesc,
        Icons.menu_book_rounded,
        s.doublePage,
        (v) => update((x) => x.doublePage = v),
      ),
      switchSetting(
        getString.readerDoubleTapZoom,
        getString.readerDoubleTapZoomDesc,
        Icons.zoom_in_rounded,
        s.doubleTapZoom,
        (v) => update((x) => x.doubleTapZoom = v),
      ),
      switchSetting(
        getString.readerAnimate,
        getString.readerAnimateDesc,
        Icons.animation_rounded,
        s.animate,
        (v) => update((x) => x.animate = v),
      ),
    ] else ...[
      sliderSetting(
        getString.readerSidePadding,
        getString.readerSidePaddingDesc,
        Icons.width_normal_rounded,
        s.sidePadding,
        0,
        30,
        (v) => update((x) => x.sidePadding = v),
      ),
      sliderSetting(
        getString.readerPageGap,
        getString.readerPageGapDesc,
        Icons.vertical_distribute_rounded,
        s.pageGap,
        0,
        32,
        (v) => update((x) => x.pageGap = v),
      ),
    ],
    switchSetting(
      getString.readerCropBorders,
      getString.readerCropBordersDesc,
      Icons.crop_rounded,
      s.cropBorders,
      (v) => update((x) => x.cropBorders = v),
    ),
    switchSetting(
      getString.readerAutoNext,
      getString.readerAutoNextDesc,
      Icons.skip_next_rounded,
      s.autoNext,
      (v) => update((x) => x.autoNext = v),
    ),
    sliderSetting(
      getString.readerPreload,
      getString.readerPreloadDesc,
      Icons.downloading_rounded,
      s.preload,
      1,
      12,
      (v) => update((x) => x.preload = v),
    ),
    Setting.header(getString.readerSectionControls),
    choiceSetting<String>(
      context,
      name: getString.readerTapZones,
      icon: Icons.touch_app_rounded,
      value: s.tapZones,
      values: readerTapZones,
      label: readerTapLabel,
      onPick: (v) => update((x) => x.tapZones = v),
    ),
    switchSetting(
      getString.readerInvertTaps,
      getString.readerInvertTapsDesc,
      Icons.swap_horiz_rounded,
      s.invertTaps,
      (v) => update((x) => x.invertTaps = v),
    ),
    sliderSetting(
      getString.readerAutoScrollSpeed,
      getString.readerAutoScrollSpeedDesc,
      Icons.speed_rounded,
      s.autoScrollSpeed,
      1,
      10,
      (v) => update((x) => x.autoScrollSpeed = v),
    ),
    if (VolumeKeys.supported)
      switchSetting(
        getString.readerVolumeKeys,
        getString.readerVolumeKeysDesc,
        Icons.volume_up_rounded,
        s.volumeKeys,
        (v) => update((x) => x.volumeKeys = v),
      ),
    Setting.header(getString.readerSectionDisplay),
    choiceSetting<String>(
      context,
      name: getString.readerBackground,
      icon: Icons.format_color_fill_rounded,
      value: s.background,
      values: readerBackgrounds,
      label: readerBackgroundLabel,
      onPick: (v) => update((x) => x.background = v),
    ),
    choiceSetting<String>(
      context,
      name: getString.readerFilter,
      icon: Icons.filter_b_and_w_rounded,
      value: s.filter,
      values: readerFilters,
      label: readerFilterLabel,
      onPick: (v) => update((x) => x.filter = v),
    ),
    choiceSetting<String>(
      context,
      name: getString.readerFilterQuality,
      icon: Icons.high_quality_rounded,
      value: s.filterQuality,
      values: readerFilterQualities,
      label: readerFilterQualityLabel,
      onPick: (v) => update((x) => x.filterQuality = v),
    ),
    sliderSetting(
      getString.readerDim,
      getString.readerDimDesc,
      Icons.brightness_low_rounded,
      s.dim,
      0,
      80,
      (v) => update((x) => x.dim = v),
    ),
    switchSetting(
      getString.readerPageNumber,
      getString.readerPageNumberDesc,
      Icons.pin_rounded,
      s.pageNumber,
      (v) => update((x) => x.pageNumber = v),
    ),
    switchSetting(
      getString.readerFullscreen,
      getString.readerFullscreenDesc,
      Icons.fullscreen_rounded,
      s.fullscreen,
      (v) => update((x) => x.fullscreen = v),
    ),
    switchSetting(
      getString.readerKeepOn,
      getString.readerKeepOnDesc,
      Icons.brightness_high_rounded,
      s.keepOn,
      (v) => update((x) => x.keepOn = v),
    ),
    choiceSetting<String>(
      context,
      name: getString.readerOrientation,
      icon: Icons.screen_rotation_rounded,
      value: s.orientation,
      values: readerOrientations,
      label: readerOrientationLabel,
      onPick: (v) => update((x) => x.orientation = v),
    ),
    switchSetting(
      getString.readerSaveProgress,
      getString.readerSaveProgressDesc,
      Icons.history_rounded,
      s.saveProgress,
      (v) => update((x) => x.saveProgress = v),
    ),
  ];
}

List<Setting> novelReaderRows(
  BuildContext context, {
  required ReaderSettings settings,
  required ReaderUpdate update,
}) {
  final s = settings;
  return [
    Setting.header(getString.readerSectionNovel),
    sliderSetting(
      getString.novelSize,
      '${s.novelSize}',
      Icons.format_size_rounded,
      s.novelSize,
      10,
      40,
      (v) => update((x) => x.novelSize = v),
    ),
    fontSetting(
      context,
      name: getString.novelFont,
      value: s.novelFont,
      onPick: (v) => update((x) => x.novelFont = v),
    ),
    sliderSetting(
      getString.novelLineHeight,
      s.novelLineHeight.toStringAsFixed(1),
      Icons.format_line_spacing_rounded,
      (s.novelLineHeight * 10).round(),
      10,
      30,
      (v) => update((x) => x.novelLineHeight = v / 10),
    ),
    sliderSetting(
      getString.novelParagraph,
      '${s.novelParagraph}',
      Icons.density_medium_rounded,
      s.novelParagraph,
      0,
      40,
      (v) => update((x) => x.novelParagraph = v),
    ),
    sliderSetting(
      getString.novelMargin,
      '${s.novelMargin}',
      Icons.width_normal_rounded,
      s.novelMargin,
      0,
      64,
      (v) => update((x) => x.novelMargin = v),
    ),
    sliderSetting(
      getString.novelLetterSpacing,
      (s.novelLetterSpacing / 10).toStringAsFixed(1),
      Icons.space_bar_rounded,
      s.novelLetterSpacing,
      0,
      20,
      (v) => update((x) => x.novelLetterSpacing = v),
    ),
    choiceSetting<String>(
      context,
      name: getString.novelTheme,
      icon: Icons.palette_rounded,
      value: s.novelTheme,
      values: novelThemes,
      label: novelThemeLabel,
      onPick: (v) => update((x) => x.novelTheme = v),
    ),
    switchSetting(
      getString.novelJustify,
      getString.novelJustifyDesc,
      Icons.format_align_justify_rounded,
      s.novelJustify,
      (v) => update((x) => x.novelJustify = v),
    ),
    switchSetting(
      getString.novelIndent,
      getString.novelIndentDesc,
      Icons.format_indent_increase_rounded,
      s.novelIndent,
      (v) => update((x) => x.novelIndent = v),
    ),
    switchSetting(
      getString.novelTapPaging,
      getString.novelTapPagingDesc,
      Icons.touch_app_rounded,
      s.novelTapPaging,
      (v) => update((x) => x.novelTapPaging = v),
    ),
    Setting.header(getString.novelSectionTranslate),
    Setting.normal(
      name: getString.novelTranslateTo,
      description: s.translateTo.isEmpty
          ? getString.novelTranslateOff
          : completeLanguageName(s.translateTo),
      icon: Icons.translate_rounded,
      isActivity: true,
      onClick: () async {
        final picked = await showChoiceSheet<String>(
          context,
          title: getString.novelTranslateTo,
          icon: Icons.translate_rounded,
          selected: s.translateTo,
          options: [
            ChoiceOption('', getString.novelTranslateOff),
            for (final e in sortedLanguagesMap.entries)
              if (e.value != 'all') ChoiceOption(e.value, e.key),
          ],
        );
        if (picked != null) update((x) => x.translateTo = picked);
      },
    ),
    switchSetting(
      getString.novelBilingual,
      getString.novelBilingualDesc,
      Icons.compare_arrows_rounded,
      s.translateBilingual,
      (v) => update((x) => x.translateBilingual = v),
    ),
    Setting.header(getString.novelSectionSpeech),
    Setting.normal(
      name: getString.novelSpeechVoice,
      description: s.speechVoice.isEmpty
          ? getString.novelSpeechVoiceDefault
          : s.speechVoice.split('|').first,
      icon: Icons.record_voice_over_rounded,
      isActivity: true,
      onClick: () async {
        final voices = await NovelSpeech.voices();
        if (!context.mounted) return;
        final picked = await showChoiceSheet<String>(
          context,
          title: getString.novelSpeechVoice,
          icon: Icons.record_voice_over_rounded,
          selected: s.speechVoice,
          options: [
            ChoiceOption('', getString.novelSpeechVoiceDefault),
            for (final v in voices) ChoiceOption(v.id, v.label),
          ],
        );
        if (picked != null) update((x) => x.speechVoice = picked);
      },
    ),
    sliderSetting(
      getString.novelSpeechRate,
      '${s.speechRate}%',
      Icons.speed_rounded,
      s.speechRate,
      50,
      200,
      (v) => update((x) => x.speechRate = v),
    ),
    sliderSetting(
      getString.novelSpeechPitch,
      '${s.speechPitch}%',
      Icons.graphic_eq_rounded,
      s.speechPitch,
      50,
      200,
      (v) => update((x) => x.speechPitch = v),
    ),
    sliderSetting(
      getString.readerAutoScrollSpeed,
      getString.readerAutoScrollSpeedDesc,
      Icons.speed_rounded,
      s.autoScrollSpeed,
      1,
      10,
      (v) => update((x) => x.autoScrollSpeed = v),
    ),
    if (VolumeKeys.supported)
      switchSetting(
        getString.readerVolumeKeys,
        getString.readerVolumeKeysDesc,
        Icons.volume_up_rounded,
        s.volumeKeys,
        (v) => update((x) => x.volumeKeys = v),
      ),
    switchSetting(
      getString.novelBold,
      getString.novelBoldDesc,
      Icons.format_bold_rounded,
      s.novelBold,
      (v) => update((x) => x.novelBold = v),
    ),
    switchSetting(
      getString.readerKeepOn,
      getString.readerKeepOnDesc,
      Icons.brightness_high_rounded,
      s.keepOn,
      (v) => update((x) => x.keepOn = v),
    ),
    switchSetting(
      getString.readerFullscreen,
      getString.readerFullscreenDesc,
      Icons.fullscreen_rounded,
      s.fullscreen,
      (v) => update((x) => x.fullscreen = v),
    ),
    switchSetting(
      getString.readerSaveProgress,
      getString.readerSaveProgressDesc,
      Icons.history_rounded,
      s.saveProgress,
      (v) => update((x) => x.saveProgress = v),
    ),
  ];
}

List<Setting> readerSettings(BuildContext context) =>
    foldSections(context, _globalReaderRows, [
      SettingSection(getString.readerSectionDisplay, Icons.palette_outlined),
      SettingSection(getString.readerSectionNovel, Icons.menu_book_rounded),
      SettingSection(getString.novelSectionTranslate, Icons.translate_rounded),
      SettingSection(
        getString.novelSectionSpeech,
        Icons.record_voice_over_rounded,
      ),
    ]);

List<Setting> _globalReaderRows(BuildContext context) {
  final s = ReaderPrefs.global.value;
  void update(void Function(ReaderSettings s) change) =>
      ReaderPrefs.update(change);
  return [
    ...mangaReaderRows(context, settings: s, update: update),
    ...novelReaderRows(context, settings: s, update: update),
    Setting.header(getString.readerSectionReset),
    Setting.normal(
      name: getString.readerReset,
      description: getString.readerResetDesc,
      icon: Icons.restart_alt_rounded,
      onClick: ReaderPrefs.reset,
    ),
  ];
}
