import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/CopyToClip.dart';
import '../../../../Utils/Nav/DpadLayers.dart';
import '../../../../Utils/Nav/DpadNav.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../../../../Widgets/Components/UserAvatar.dart';
import '../SettingsSyncState.dart';

class SyncAccountCard extends StatelessWidget {
  final SettingsSyncState state;

  const SyncAccountCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    final auth = state.auth;
    final code = auth.pending.value;
    final busy = auth.busy.value;

    if (state.connected) {
      final user = state.user;
      return SectionCard(
        child: Row(
          children: [
            UserAvatar(
              url: user.isEmpty ? null : 'https://github.com/$user.png?size=96',
              name: user,
              size: 48,
            ),
            SizedBox(width: Dimens.gap),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.isEmpty
                        ? getString.settingsSyncModeGithub
                        : getString.settingsSyncSignedIn(user),
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(getString.settingsSyncAccountDesc, style: muted),
                ],
              ),
            ),
            TextButton(
              onPressed: auth.signOut,
              child: Text(getString.settingsSyncSignOut),
            ),
          ],
        ),
      );
    }

    return SectionCard(
      title: getString.settingsSyncAccount,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(getString.settingsSyncAccountDesc, style: muted),
          SizedBox(height: Dimens.gap),
          if (code != null) ...[
            DpadTap(
              onTap: () => copyToClipboard(code.userCode),
              borderRadius: BorderRadius.circular(18),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: scheme.primaryContainer.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        code.userCode,
                        style: context.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 4,
                          color: scheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(getString.settingsSyncCopyCode, style: muted),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimens.gap),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                SizedBox(width: Dimens.gapSm),
                Expanded(
                  child: Text(getString.settingsSyncWaiting, style: muted),
                ),
                TextButton(
                  onPressed: auth.cancel,
                  child: Text(getString.settingsSyncCancel),
                ),
              ],
            ),
          ] else
            DpadRow(
              child: Wrap(
                spacing: Dimens.gapSm,
                runSpacing: Dimens.gapSm,
                children: [
                  if (auth.canDeviceFlow)
                    FilledButton.icon(
                      onPressed: busy ? null : state.signIn,
                      icon: const Icon(Icons.login_rounded),
                      label: Text(getString.settingsSyncSignIn),
                    ),
                  OutlinedButton.icon(
                    onPressed: busy ? null : state.askToken,
                    icon: const Icon(Icons.key_rounded),
                    label: Text(getString.settingsSyncToken),
                  ),
                ],
              ),
            ),
          if (code == null) ...[
            SizedBox(height: Dimens.gapSm),
            Text(getString.settingsSyncTokenDesc, style: muted),
          ],
        ],
      ),
    );
  }
}
