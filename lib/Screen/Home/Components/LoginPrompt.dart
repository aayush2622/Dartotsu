import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/LoadSvg.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../Login/LoginView.dart';
import '../../../Core/State/State.dart';

class LoginPrompt extends StatefulWidget {
  final MediaService service;

  const LoginPrompt({super.key, required this.service});

  @override
  State<LoginPrompt> createState() => _LoginPromptState();
}

class _LoginPromptState extends State<LoginPrompt> {
  final _busy = false.live;

  @override
  Widget build(BuildContext context) {
    final auth = widget.service.auth;
    if (auth == null) return const SizedBox.shrink();
    final scheme = context.colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.gap,
        vertical: Dimens.gapSm,
      ),
      child: SectionCard(
        child: Row(
          children: [
            loadSvg(widget.service.iconPath, width: 26, height: 26),
            SizedBox(width: Dimens.gap),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    getString.loginTo(widget.service.name),
                    style: context.textTheme.titleSmall,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Everything below is saved on this device until you do.',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: Dimens.gapSm),
            Watch(
              () => _busy.value
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Row(
                      children: [
                        IconButton(
                          tooltip: getString.loginWithToken,
                          icon: const Icon(Icons.vpn_key_rounded),
                          onPressed: () => showTokenLogin(context, auth),
                        ),
                        FilledButton(
                          onPressed: _signIn,
                          child: Text(getString.login),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signIn() async {
    final auth = widget.service.auth;
    if (auth == null) return;
    _busy.value = true;
    try {
      await auth.login();
    } finally {
      _busy.value = false;
    }
  }
}
