import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/SettingsSync/SettingsSync.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'Components/SyncAccountCard.dart';
import 'Components/SyncCategoriesCard.dart';
import 'Components/SyncSecretsCard.dart';
import 'Components/SyncServerCard.dart';
import 'Components/SyncStatusCard.dart';
import 'SettingsSyncState.dart';

class SettingsSyncScreen extends StatefulWidget {
  const SettingsSyncScreen({super.key});

  @override
  State<SettingsSyncScreen> createState() => _SettingsSyncScreenState();
}

class _SettingsSyncScreenState extends BaseScreen<SettingsSyncScreen>
    with ScreenStateHost<SettingsSyncScreen, SettingsSyncState> {
  @override
  SettingsSyncState buildState() => SettingsSyncState();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.settingsSync,
        actions: [
          Watch(() {
            final busy = state.sync.phase.value == SettingsSyncPhase.syncing;
            return IconButton(
              tooltip: getString.settingsSyncNow,
              icon: const Icon(Icons.sync_rounded),
              onPressed: state.enabled && !busy ? state.sync.syncNow : null,
            );
          }),
        ],
      ),
      body: ScrollConfig(
        context,
        child: LayoutBuilder(
          builder: (context, box) => CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(
                  Dimens.pagePad,
                  Dimens.gapSm,
                  Dimens.pagePad,
                  Dimens.gapXl,
                ),
                sliver: SliverToBoxAdapter(
                  child: box.maxWidth >= 900 ? _wide() : _narrow(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _narrow() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      SyncStatusCard(state: state),
      SizedBox(height: Dimens.gap),
      SyncAccountCard(state: state),
      SizedBox(height: Dimens.gap),
      SyncServerCard(state: state),
      SyncSecretsCard(state: state),
      SyncCategoriesCard(state: state),
    ],
  );

  Widget _wide() => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SyncStatusCard(state: state),
            SizedBox(height: Dimens.gap),
            SyncAccountCard(state: state),
            SizedBox(height: Dimens.gap),
            SyncServerCard(state: state),
            SyncSecretsCard(state: state),
          ],
        ),
      ),
      SizedBox(width: Dimens.gap),
      Expanded(flex: 7, child: SyncCategoriesCard(state: state)),
    ],
  );
}
