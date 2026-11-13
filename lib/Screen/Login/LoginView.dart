import '../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'LoginViewState.dart';
import '../../Widgets/Components/AppSpinner.dart';
export 'LoginViewState.dart' show showTokenLogin;

class LoginView extends StatefulWidget {
  final VoidCallback? onDone;
  final bool embedded;

  const LoginView({super.key, this.onDone, this.embedded = false});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with ScreenStateHost<LoginView, LoginViewState> {
  @override
  LoginViewState buildState() =>
      LoginViewState(onDone: widget.onDone, embedded: widget.embedded);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Center(
      child: ScrollConfig(
        context,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 380),
            child: Watch(() {
              final service = state.services.currentService.value;
              final auth = service.auth;
              final guest = state.guest;

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
                      onPressed: state.loginAction(auth),
                      icon: state.busy.value
                          ? const AppSpinner()
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
                    if (auth.supportsTokenLogin) ...[
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: state.busy.value
                              ? null
                              : () => state.tokenLogin(auth),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: Text(getString.loginWithToken),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                    if (guest)
                      TextButton(
                        onPressed: state.busy.value ? null : widget.onDone,
                        child: Text(getString.continueAsGuest),
                      ),
                  ],
                  const SizedBox(height: 4),
                  TextButton.icon(
                    onPressed: state.switchService,
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
      ),
    );
  }
}
