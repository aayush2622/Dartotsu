import '../../../Widgets/Components/AppBars.dart';

import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'DiscordLoginState.dart';

class DiscordLoginScreen extends StatefulWidget {
  const DiscordLoginScreen({super.key});

  @override
  State<DiscordLoginScreen> createState() => _DiscordLoginScreenState();
}

class _DiscordLoginScreenState extends State<DiscordLoginScreen>
    with ScreenStateHost<DiscordLoginScreen, DiscordLoginState> {
  @override
  DiscordLoginState buildState() => DiscordLoginState();

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppScreenBar(title: getString.discordLogin),
      body: Stack(
        children: [
          WebViewWidget(controller: state.controller),
          Watch(
            () => state.progress.value < 1
                ? LinearProgressIndicator(
                    value: state.progress.value,
                    minHeight: 2,
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
