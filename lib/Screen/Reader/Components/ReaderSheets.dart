import '../../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../Engine/ReaderRequest.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../Settings/Categories/ReaderSettings.dart';
import '../../Settings/Widgets/SettingsGroup.dart';
import '../ReaderState.dart';
import 'ChapterList.dart';

Future<void> showChapterList(
  BuildContext context, {
  required ReaderRequest request,
  required int current,
  required void Function(int index) onPick,
}) => showCustomBottomDialog<void>(
  context,
  AppSheet(
    title: getString.readerChapters,
    heightFactor: 0.8,
    child: ChapterList(request: request, current: current, onPick: onPick),
  ),
);

Future<void> showReaderOptions(BuildContext context, ReaderState state) =>
    showCustomBottomDialog<void>(
      context,
      AppSheet(
        title: getString.readerSettingsTitle,
        heightFactor: 0.85,
        child: ScrollConfig(
          context,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 24),
            child: Builder(
              builder: (sheet) => Watch(() {
                state.settingsVersion.value;
                final perTitle = state.perTitle.value;
                return SettingsGroup(
                  key: ValueKey(perTitle),
                  settings: [
                    Setting.switchType(
                      name: getString.readerPerTitle,
                      description: getString.readerPerTitleDesc,
                      icon: Icons.bookmark_rounded,
                      isChecked: perTitle,
                      onSwitchChange: state.setPerTitle,
                    ),
                    ...mangaReaderRows(
                      sheet,
                      settings: state.settings,
                      update: state.updateSettings,
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
