import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/LoadSvg.dart';

String _cleanToken(String raw) {
  final text = raw.trim();
  final match = RegExp(r'access_token=([^&\s]+)').firstMatch(text);
  return (match?.group(1) ?? text).replaceAll(RegExp(r'\s'), '');
}

void showTokenLogin(
  BuildContext context,
  ServiceAuth auth, {
  void Function(bool ok)? onResult,
}) {
  final controller = TextEditingController();
  final url = auth.tokenLoginUrl;
  if (url != null) unawaited(openLinkInBrowser(url));
  AlertDialogBuilder(context)
    ..setTitle(getString.loginWithToken)
    ..setCustomView(
      TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration(hintText: getString.pasteTokenHint),
      ),
    )
    ..setPositiveButton(getString.login, () async {
      final token = _cleanToken(controller.text);
      if (token.isEmpty) {
        snackString(getString.pasteTokenHint);
        return;
      }
      final ok = await auth.loginWithToken(token);
      if (ok) snackString('Logged in');
      onResult?.call(ok);
    })
    ..setNegativeButton(getString.cancel, null)
    ..show();
}

class LoginView extends StatefulWidget {
  final VoidCallback? onDone;
  final bool embedded;

  const LoginView({super.key, this.onDone, this.embedded = false});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _busy = false.obs;

  MediaServiceController get _services => find();

  Future<void> _run(Future<bool> Function() action) async {
    _busy.value = true;
    try {
      final ok = await action();
      if (ok && mounted) widget.onDone?.call();
    } finally {
      _busy.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 380),
          child: Obx(() {
            final service = _services.currentService.value;
            final auth = service.auth;
            final guest = !widget.embedded;

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
                  widget.embedded
                      ? getString.loginTo(service.name)
                      : getString.appTagline,
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: _busy.value
                        ? null
                        : (auth == null
                              ? widget.onDone
                              : () => _run(auth.login)),
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
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (auth != null) ...[
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: _busy.value
                          ? null
                          : () => showTokenLogin(
                              context,
                              auth,
                              onResult: (ok) {
                                if (ok && mounted) widget.onDone?.call();
                              },
                            ),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(getString.loginWithToken),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (guest)
                    TextButton(
                      onPressed: _busy.value ? null : widget.onDone,
                      child: Text(getString.continueAsGuest),
                    ),
                ],
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
