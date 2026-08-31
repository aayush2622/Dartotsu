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

  Future<void> _login(LoginHandler handler) async {
    _busy.value = true;
    try {
      await handler.login();
      if (handler.isLoggedIn && mounted) _enter();
    } finally {
      _busy.value = false;
    }
  }

  void _enter() {
    PrefName.hasCompletedOnboarding.value = true;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainScreen()),
    );
  }

  void _tokenDialog(LoginHandler handler) {
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
      ..setPositiveButton(getString.login, () async {
        if (token.trim().isEmpty) return;
        _busy.value = true;
        try {
          await handler.login();
        } finally {
          _busy.value = false;
        }
        if (handler.isLoggedIn && mounted) _enter();
      })
      ..setNegativeButton(getString.cancel, null)
      ..show();
  }

  @override
  Widget buildContent(BuildContext context) {
    final scheme = context.colorScheme;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Obx(() {
          final service = _services.currentService.value;
          final handler = service is LoginHandler
              ? service as LoginHandler
              : null;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                getString.appName,
                style: context.textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.w200,
                  color: scheme.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                getString.appTagline,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: 40),
              _serviceButton(service, handler),
              const SizedBox(height: 16),
              if (handler != null)
                TextButton(
                  onPressed: _busy.value ? null : () => _tokenDialog(handler),
                  child: Text(getString.loginWithToken),
                ),
              TextButton(
                onPressed: _busy.value ? null : _enter,
                child: Text(getString.continueAsGuest),
              ),
              const SizedBox(height: 8),
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
    );
  }

  Widget _serviceButton(MediaService service, LoginHandler? handler) {
    final scheme = context.colorScheme;
    return Obx(
      () => ElevatedButton.icon(
        onPressed: _busy.value || handler == null
            ? null
            : () => _login(handler),
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
                color: scheme.onPrimaryContainer,
              ),
        label: Text(
          handler == null
              ? getString.continueAsGuest
              : getString.loginTo(service.name),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primaryContainer,
          foregroundColor: scheme.onPrimaryContainer,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
