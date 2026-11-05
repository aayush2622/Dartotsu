import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Nav/DpadLayers.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../SettingsSyncState.dart';

class SyncSecretsCard extends StatelessWidget {
  final SettingsSyncState state;

  const SyncSecretsCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    if (!state.connected) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    final sync = state.sync;
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    final on = state.secretsOn;
    final broken = sync.secretsError.value != null;
    final onServer = sync.serverHasSecrets.value;

    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gap),
      child: SectionCard(
        title: getString.settingsSyncSecrets,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (!on)
              Text(getString.settingsSyncSecretsDesc, style: muted)
            else
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    broken ? Icons.lock_reset_rounded : Icons.lock_rounded,
                    color: broken ? scheme.error : scheme.primary,
                  ),
                  SizedBox(width: Dimens.gapSm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          broken
                              ? getString.settingsSyncPassphraseWrong
                              : getString.settingsSyncSecretsOn,
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          broken
                              ? getString.settingsSyncSecretsBroken
                              : getString.settingsSyncSecretsOnDesc,
                          style: muted,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(height: Dimens.gap),
            DpadRow(
              child: Wrap(
                spacing: Dimens.gapSm,
                runSpacing: Dimens.gapSm,
                children: [
                  if (!on || broken)
                    FilledButton.icon(
                      onPressed: state.askPassphrase,
                      icon: const Icon(Icons.key_rounded),
                      label: Text(
                        onServer
                            ? getString.settingsSyncPassphraseEnter
                            : getString.settingsSyncPassphraseSet,
                      ),
                    ),
                  if (on && !broken)
                    OutlinedButton(
                      onPressed: state.stopSecrets,
                      child: Text(getString.settingsSyncSecretsStop),
                    ),
                  if (onServer)
                    TextButton(
                      onPressed: state.deleteSecrets,
                      child: Text(getString.settingsSyncSecretsDelete),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
