import 'package:flutter/material.dart';

import '../../../../Api/Discord/DiscordRpcRouter.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Nav/DpadLayers.dart';
import '../../../../Widgets/Components/UserAvatar.dart';
import '../DiscordSettingsState.dart';
import 'DiscordPanels.dart';

class DiscordConnection extends StatelessWidget {
  final DiscordSettingsState state;

  const DiscordConnection({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  String _routeLabel(DiscordRoute route) => switch (route) {
    DiscordRoute.desktop => getString.dcRouteDesktop,
    DiscordRoute.headless => getString.dcRouteHeadless,
    DiscordRoute.gateway => getString.dcRouteGateway,
    DiscordRoute.linked => getString.dcRouteLinked,
    DiscordRoute.none => getString.dcRouteNone,
  };

  Widget _build(BuildContext context) {
    final account = state.account;
    final linked = account.linked.value;
    final token = account.tokenSaved.value;
    final linking = state.linking.value;
    final route = state.route;
    final desktop = DiscordRpcRouter.isDesktop;
    return DPanel(
      title: getString.dcConnection,
      icon: Icons.hub_rounded,
      divided: false,
      children: [
        _Identity(state: state, route: _routeLabel(route), active: route),
        _Method(
          icon: Icons.link_rounded,
          title: getString.dcConnect,
          description: getString.dcConnectDesc,
          active: route == DiscordRoute.linked,
          tag: linked ? null : getString.dcRecommended,
          actions: [
            if (linked)
              OutlinedButton.icon(
                onPressed: state.disconnect,
                icon: const Icon(Icons.link_off_rounded),
                label: Text(getString.dcDisconnect),
              )
            else
              FilledButton.icon(
                onPressed: linking ? null : state.connect,
                icon: linking
                    ? const SizedBox.square(
                        dimension: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.link_rounded),
                label: Text(getString.dcConnect),
              ),
          ],
        ),
        if (desktop)
          _Method(
            icon: Icons.desktop_windows_rounded,
            title: getString.dcMethodDesktop,
            description: getString.dcMethodDesktopDesc,
            active: route == DiscordRoute.desktop,
          ),
        _Method(
          icon: Icons.key_rounded,
          title: getString.dcMethodToken,
          description: getString.dcTokenWarning,
          active:
              route == DiscordRoute.headless || route == DiscordRoute.gateway,
          actions: [
            if (token)
              OutlinedButton.icon(
                onPressed: state.signOut,
                icon: const Icon(Icons.logout_rounded),
                label: Text(getString.dcSignOut),
              )
            else
              OutlinedButton.icon(
                onPressed: () => state.login(context),
                icon: const Icon(Icons.login_rounded),
                label: Text(getString.dcUseToken),
              ),
          ],
        ),
      ],
    );
  }
}

class _Identity extends StatelessWidget {
  final DiscordSettingsState state;
  final String route;
  final DiscordRoute active;

  const _Identity({
    required this.state,
    required this.route,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final account = state.account;
    final profile = account.profile.value;
    final signed = state.signedIn;
    final connected = active != DiscordRoute.none;
    final name = profile?.displayName ?? '';
    final title = profile != null
        ? getString.dcSignedInAs(name)
        : account.linked.value
        ? getString.dcConnected
        : account.tokenSaved.value
        ? getString.discordTokenSaved
        : getString.dcRouteNone;
    return Container(
      margin: EdgeInsets.fromLTRB(
        Dimens.cardPad,
        0,
        Dimens.cardPad,
        Dimens.gapSm,
      ),
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: scheme.onSurface.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          UserAvatar(url: profile?.avatarUrl(96), name: name, size: 48),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    AnimatedContainer(
                      duration: animDuration(200),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: connected
                            ? scheme.primary
                            : scheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        route,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (signed)
            account.loading.value
                ? const SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : IconButton(
                    icon: const Icon(Icons.refresh_rounded),
                    onPressed: account.refresh,
                  ),
        ],
      ),
    );
  }
}

class _Method extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final bool active;
  final String? tag;
  final List<Widget> actions;

  const _Method({
    required this.icon,
    required this.title,
    required this.description,
    required this.active,
    this.tag,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.cardPad,
        vertical: Dimens.gapSm,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: animDuration(200),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active
                  ? scheme.primaryContainer
                  : scheme.onSurface.withValues(alpha: 0.06),
            ),
            child: Icon(
              icon,
              size: 20,
              color: active
                  ? scheme.onPrimaryContainer
                  : scheme.onSurfaceVariant,
            ),
          ),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(title, style: context.textTheme.bodyLarge),
                    if (active) _Tag(getString.dcInUse, filled: true),
                    if (!active && tag != null) _Tag(tag!),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
                if (actions.isNotEmpty) ...[
                  SizedBox(height: Dimens.gapSm),
                  DpadRow(
                    child: Wrap(
                      spacing: Dimens.gapSm,
                      runSpacing: Dimens.gapSm,
                      children: actions,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;
  final bool filled;

  const _Tag(this.text, {this.filled = false});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: filled
            ? scheme.primaryContainer
            : scheme.onSurface.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        text,
        style: context.textTheme.labelSmall?.copyWith(
          color: filled ? scheme.onPrimaryContainer : scheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
