import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaServiceController.dart';
import '../../../Core/Services/ServiceSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/LoadSvg.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../Extension/ExtensionScreen.dart';
import '../../Feed/FeedNavigation.dart';
import '../../Login/LoginScreen.dart';
import '../../Settings/SettingsScreen.dart';
import '../../Social/ActivityFeedScreen.dart';
import '../../Social/ProfileScreen.dart';
import '../../Social/SocialNavigation.dart';
import 'BellButton.dart';
import 'HeaderAvatar.dart';
import '../../../Core/State/State.dart';

void showAccountSheet(BuildContext context, MediaServiceController controller) {
  final service = controller.currentService.value;
  final me = service.socialView?.currentUserId;
  final social = service.socialView != null && service.isLoggedIn && me != null;
  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      viewList: [
        _Profile(context: context, controller: controller),
        const SizedBox(height: 12),
        const _Toggles(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: _Group(
            children: [
              if (social) ...[
                _Destination(
                  icon: Icons.person_rounded,
                  title: 'Your profile',
                  sheetContext: context,
                  open: ProfileScreen(service: service, id: me),
                ),
                _Destination(
                  icon: Icons.forum_rounded,
                  title: 'Activity',
                  sheetContext: context,
                  open: ActivityFeedScreen(service: service),
                ),
              ],
              _Destination(
                icon: Icons.extension_rounded,
                title: 'Extensions',
                sheetContext: context,
                open: const ExtensionScreen(),
              ),
              _Destination(
                icon: Icons.settings_rounded,
                title: 'Settings',
                sheetContext: context,
                open: const SettingsScreen(),
              ),
              _SwitchService(context: context, controller: controller),
            ],
          ),
        ),
      ],
    ),
  );
}

class _Profile extends StatelessWidget {
  final BuildContext context;
  final MediaServiceController controller;

  const _Profile({required this.context, required this.controller});

  @override
  Widget build(BuildContext sheet) {
    final scheme = sheet.colorScheme;
    return Watch(() {
      final service = controller.currentService.value;
      final auth = service.auth;
      final user = auth?.user.value;
      final loggedIn = user != null || (auth?.isLoggedIn ?? false);

      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 4, 12, 4),
        child: Row(
          children: [
            HeaderAvatar(url: user?.avatar, size: 56),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user?.name ?? 'Guest',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: sheet.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    service.name,
                    style: sheet.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                  if (auth != null) ...[
                    const SizedBox(height: 6),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        minimumSize: const Size(0, 32),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft,
                      ),
                      icon: Icon(
                        loggedIn ? Icons.logout_rounded : Icons.login_rounded,
                        size: 18,
                      ),
                      label: Text(loggedIn ? 'Log out' : 'Log in'),
                      onPressed: () =>
                          _authAction(service.name, auth, loggedIn),
                    ),
                  ],
                ],
              ),
            ),
            if (user != null && service.socialView != null)
              IconButton(
                tooltip: 'Activity',
                icon: const Icon(Icons.forum_outlined),
                onPressed: () {
                  popPage(sheet);
                  openActivityFeed(context, service);
                },
              ),
            if (user != null && service.notificationView != null)
              BellButton(
                unread: user.unreadNotifications,
                onOpen: () {
                  popPage(sheet);
                  openNotifications(context, service);
                },
              ),
          ],
        ),
      );
    });
  }

  void _authAction(String name, ServiceAuth auth, bool loggedIn) {
    popPage(context);
    if (!loggedIn) {
      navigateToPage(context, const LoginScreen());
      return;
    }
    AlertDialogBuilder(context)
      ..setTitle('Log out of $name')
      ..setMessage('Are you sure you want to log out?')
      ..setPositiveButton('Yes', auth.logout)
      ..setNegativeButton('No', null)
      ..show();
  }
}

class _Toggles extends StatelessWidget {
  const _Toggles();

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: _Group(
        children: [
          _SwitchRow(
            title: 'Incognito mode',
            rx: PrefName.incognito.rx,
            icon: loadSvg(
              'assets/svg/incognito.svg',
              width: 22,
              height: 22,
              color: scheme.primary,
            ),
          ),
          Watch(
            () => PrefName.incognito.rx.value
                ? _SwitchRow(
                    title: 'Also block list edits',
                    rx: PrefName.incognitoBlockEdits.rx,
                    icon: Icon(Icons.edit_off_rounded, color: scheme.primary),
                  )
                : const SizedBox.shrink(),
          ),
          _SwitchRow(
            title: 'Offline mode',
            rx: PrefName.offlineMode.rx,
            icon: Icon(Icons.download_rounded, color: scheme.primary),
          ),
        ],
      ),
    );
  }
}

class _Group extends StatelessWidget {
  final List<Widget> children;
  const _Group({required this.children});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(children: children),
      ),
    );
  }
}

class _SwitchRow extends StatelessWidget {
  final String title;
  final Live<bool> rx;
  final Widget icon;

  const _SwitchRow({required this.title, required this.rx, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Watch(
      () => SwitchListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        secondary: icon,
        title: Text(title),
        value: rx.value,
        onChanged: (v) => rx.value = v,
      ),
    );
  }
}

class _Destination extends StatelessWidget {
  final IconData icon;
  final String title;
  final BuildContext sheetContext;
  final Widget open;

  const _Destination({
    required this.icon,
    required this.title,
    required this.sheetContext,
    required this.open,
  });

  @override
  Widget build(BuildContext context) {
    return SheetTile(
      leading: Icon(icon, color: context.colorScheme.primary),
      title: Text(title),
      trailing: Icon(
        Icons.chevron_right_rounded,
        color: context.colorScheme.onSurfaceVariant,
      ),
      onTap: () {
        popPage(context);
        navigateToPage(sheetContext, open);
      },
    );
  }
}

class _SwitchService extends StatelessWidget {
  final BuildContext context;
  final MediaServiceController controller;

  const _SwitchService({required this.context, required this.controller});

  @override
  Widget build(BuildContext sheet) {
    return Watch(() {
      final service = controller.currentService.value;
      return SheetTile(
        leading: loadSvg(
          service.iconPath,
          width: 22,
          height: 22,
          color: sheet.colorScheme.primary,
        ),
        title: const Text('Switch service'),
        subtitle: Text(service.name),
        trailing: Icon(
          Icons.chevron_right_rounded,
          color: sheet.colorScheme.onSurfaceVariant,
        ),
        onTap: () {
          popPage(sheet);
          serviceSwitcher(context);
        },
      );
    });
  }
}
