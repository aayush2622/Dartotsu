import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../MainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseScreen<LoginScreen> {
  final _busy = false.obs;

  MediaServiceController get _services => find();

  void _enter() {
    PrefName.hasCompletedOnboarding.value = true;
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
  }

  Future<void> _run(Future<bool> Function() action) async {
    _busy.value = true;
    try {
      final ok = await action();
      if (ok && mounted) _enter();
    } finally {
      _busy.value = false;
    }
  }

  void _tokenDialog(Future<bool> Function(String) apply) {
    var token = '';
    AlertDialogBuilder(context)
      ..setTitle(getString.loginWithToken)
      ..setCustomView(
        TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: getString.pasteTokenHint),
          onChanged: (v) => token = v,
        ),
      )
      ..setPositiveButton(getString.login, () {
        if (token.trim().isNotEmpty) _run(() => apply(token.trim()));
      })
      ..setNegativeButton(getString.cancel, null)
      ..show();
  }

  @override
  Widget buildContent(BuildContext context) {
    final scheme = context.colorScheme;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 380),
          child: Obx(() {
            final service = _services.currentService.value;
            final auth = service.auth;

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    color: scheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  getString.appName,
                  style: context.textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w200,
                    color: scheme.primary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  getString.appTagline,
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: _busy.value || auth == null
                        ? null
                        : () => _run(auth.login),
                    icon: _busy.value
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : loadSvg(
                            service.iconPath,
                            width: 18,
                            height: 18,
                            color: scheme.onPrimary,
                          ),
                    label: Text(
                      auth == null
                          ? getString.continueAsGuest
                          : getString.loginTo(service.name),
                    ),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (auth != null)
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: _busy.value
                          ? null
                          : () => _tokenDialog(auth.loginWithToken),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(getString.loginWithToken),
                    ),
                  ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: _busy.value ? null : _enter,
                  child: Text(getString.continueAsGuest),
                ),
                const SizedBox(height: 4),
                TextButton.icon(
                  onPressed: () => serviceSwitcher(context),
                  icon: loadSvg(
                    service.iconPath,
                    width: 16,
                    height: 16,
                    color: scheme.onSurface.withValues(alpha: 0.6),
                  ),
                  label: Text(
                    getString.selectMediaService,
                    style: context.textTheme.labelMedium,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
