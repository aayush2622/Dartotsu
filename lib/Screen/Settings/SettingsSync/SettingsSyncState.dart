import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/SettingsSync/GithubAuth.dart';
import '../../../Core/SettingsSync/SettingsScope.dart';
import '../../../Core/SettingsSync/SettingsSync.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../Widgets/Backup/BackupCategory.dart';

class SettingsSyncState extends ScreenState {
  final sync = find<SettingsSync>();
  final auth = find<GithubAuth>();
  final open = Live<PrefLocation?>(null);

  @override
  void onInit() {
    unawaited(sync.peek());
  }

  bool get connected => PrefName.githubToken.rx.value.isNotEmpty;

  bool get enabled => PrefName.settingsSync.rx.value && connected;

  bool get secretsOn => PrefName.settingsSyncPassphrase.rx.value.isNotEmpty;

  String get user => PrefName.settingsSyncUser.rx.value;

  Set<PrefLocation> get categories => SettingsScope.enabled;

  bool get titlesOn => PrefName.settingsSyncTitles.rx.value;

  String time(DateTime at) => DateFormat.yMMMd().add_jm().format(at);

  String device(bool mine, String platform) {
    if (mine) return getString.settingsSyncThisDevice;
    if (platform.isEmpty) return '?';
    return platform[0].toUpperCase() + platform.substring(1);
  }

  String label(PrefLocation c) =>
      c == PrefLocation.OTHER ? getString.settingsSyncCatOther : c.label;

  String valueText(Object? v) {
    if (v is bool) return v ? getString.settingsSyncOn : getString.off;
    if (v is List) return '${v.length}';
    if (v is Map) return '{…}';
    final text = '$v';
    return text.isEmpty ? '—' : text;
  }

  void toggleOpen(PrefLocation c) => open.value = open.value == c ? null : c;

  void setEnabled(bool value) => PrefName.settingsSync.rx.value = value;

  void setTitles(bool value) => PrefName.settingsSyncTitles.rx.value = value;

  void setCategory(PrefLocation c, bool value) {
    final on = categories;
    PrefName.settingsSyncCategories.rx.value = [
      for (final x in SettingsScope.categories)
        if (x == c ? value : on.contains(x)) x.name,
    ];
  }

  Future<void> signIn() async {
    if (!await auth.signInWithDevice()) {
      snackString(getString.settingsSyncSignInFailed);
    }
  }

  void askPassphrase() {
    final existing = sync.serverHasSecrets.value;
    final pass = TextEditingController();
    final again = TextEditingController();
    AlertDialogBuilder(context)
      ..setTitle(
        existing
            ? getString.settingsSyncPassphraseEnter
            : getString.settingsSyncPassphraseSet,
      )
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              existing
                  ? getString.settingsSyncPassphraseExisting
                  : getString.settingsSyncPassphraseNew,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: pass,
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                hintText: getString.settingsSyncPassphraseField,
              ),
            ),
            if (!existing) ...[
              const SizedBox(height: 12),
              TextField(
                controller: again,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: getString.settingsSyncPassphraseConfirm,
                ),
              ),
            ],
          ],
        ),
      )
      ..setOnDismissListener(() {
        pass.dispose();
        again.dispose();
      })
      ..setPositiveButton(getString.save, () async {
        if (!existing && pass.text.length < 6) {
          snackString(getString.settingsSyncPassphraseShort);
          return;
        }
        final outcome = await sync.enableSecrets(
          pass.text,
          confirm: existing ? null : again.text,
        );
        switch (outcome) {
          case SecretsOutcome.ok:
            break;
          case SecretsOutcome.wrong:
            snackString(getString.settingsSyncPassphraseWrong);
          case SecretsOutcome.mismatch:
            snackString(getString.settingsSyncPassphraseMismatch);
          case SecretsOutcome.failed:
            snackString(getString.settingsSyncSignInFailed);
        }
      })
      ..setNegativeButton(getString.cancel, null)
      ..show();
  }

  void stopSecrets() => unawaited(sync.disableSecrets());

  void deleteSecrets() {
    AlertDialogBuilder(context)
      ..setTitle(getString.settingsSyncSecretsDelete)
      ..setMessage(getString.settingsSyncSecretsDeleteMessage)
      ..setNegativeButton(getString.cancel, null)
      ..setPositiveButton(
        getString.delete,
        () => unawaited(sync.disableSecrets(deleteRemote: true)),
      )
      ..show();
  }

  void askToken() {
    final field = TextEditingController();
    AlertDialogBuilder(context)
      ..setTitle(getString.settingsSyncToken)
      ..setCustomView(
        TextField(
          controller: field,
          autofocus: true,
          obscureText: true,
          decoration: InputDecoration(
            hintText: getString.settingsSyncTokenField,
          ),
        ),
      )
      ..setOnDismissListener(field.dispose)
      ..setPositiveButton(getString.login, () async {
        if (!await auth.signInWithToken(field.text)) {
          snackString(getString.settingsSyncSignInFailed);
        }
      })
      ..setNegativeButton(getString.cancel, null)
      ..show();
  }
}
