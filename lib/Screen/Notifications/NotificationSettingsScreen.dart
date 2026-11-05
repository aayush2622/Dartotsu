import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../Settings/Categories/NotificationSettings.dart';
import '../Settings/Widgets/SettingsGroup.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends BaseScreen<NotificationSettingsScreen> {
  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(title: getString.notificationsSettings),
    body: ScrollConfig(
      context,
      child: ListView(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          Dimens.gapXl,
        ),
        children: [
          Watch(
            () => SettingsGroup(
              settings: notificationSettings(context),
              accordion: notificationSectionIcons,
            ),
          ),
        ],
      ),
    ),
  );
}
