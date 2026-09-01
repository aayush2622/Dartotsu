import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Login/LoginScreen.dart';
import '../Settings/SettingsScreen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  MediaServiceController get _controller => find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 20, 8),
      child: Obx(() {
        final service = _controller.currentService.value;
        final user = service.auth?.user.value;
        final greeting = user != null
            ? 'Welcome back, ${user.name}'
            : 'Welcome to Dartotsu';

        return Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _timeGreeting(),
                    style: context.textTheme.labelMedium?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    greeting,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            if (user != null && service.getNotificationScreen != null)
              _BellButton(
                unread: user.unreadNotifications,
                onOpen: () => navigateToPage(
                  context,
                  service.getNotificationScreen!.build(context),
                ),
              ),
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {
                final view = service.getSearchScreen;
                navigateToPage(
                  context,
                  view != null
                      ? view.build(context, anime: true)
                      : NotImplemented(service: service.name, area: 'Search'),
                );
              },
            ),
            const SizedBox(width: 4),
            _Avatar(url: user?.avatar, onTap: () => _accountSheet(context)),
          ],
        );
      }),
    );
  }

  static String _timeGreeting() {
    final h = DateTime.now().hour;
    if (h < 12) return 'Good morning';
    if (h < 18) return 'Good afternoon';
    return 'Good evening';
  }

  void _accountSheet(BuildContext context) {
    final service = _controller.currentService.value;
    final auth = service.auth;

    showCustomBottomDialog(
      context,
      CustomBottomDialog(
        title: service.name,
        viewList: [
          Obx(() {
            final user = auth?.user.value;
            return ListTile(
              leading: _Avatar(url: user?.avatar, size: 40),
              title: Text(user?.name ?? 'Guest'),
              subtitle: user != null
                  ? Text(
                      '${user.episodesWatched} eps · ${user.chaptersRead} ch',
                    )
                  : null,
            );
          }),
          ListTile(
            leading: loadSvg(service.iconPath, width: 22, height: 22),
            title: const Text('Switch service'),
            onTap: () {
              Navigator.pop(context);
              serviceSwitcher(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_rounded),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              navigateToPage(context, const SettingsScreen());
            },
          ),
          if (auth != null) _AuthTile(auth: auth),
        ],
      ),
    );
  }
}

class _AuthTile extends StatelessWidget {
  final ServiceAuth auth;
  const _AuthTile({required this.auth});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final loggedIn = auth.user.value != null || auth.isLoggedIn;
      return ListTile(
        leading: Icon(loggedIn ? Icons.logout_rounded : Icons.login_rounded),
        title: Text(loggedIn ? 'Log out' : 'Log in'),
        onTap: () {
          Navigator.pop(context);
          if (loggedIn) {
            auth.logout();
          } else {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const LoginScreen()));
          }
        },
      );
    });
  }
}

class _BellButton extends StatelessWidget {
  final int unread;
  final VoidCallback onOpen;
  const _BellButton({required this.unread, required this.onOpen});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_none_rounded),
          onPressed: onOpen,
        ),
        if (unread > 0)
          Positioned(
            right: 6,
            top: 6,
            child: Container(
              padding: const EdgeInsets.all(3),
              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
              decoration: BoxDecoration(
                color: context.colorScheme.error,
                shape: BoxShape.circle,
              ),
              child: Text(
                unread > 99 ? '99+' : '$unread',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.onError,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final String? url;
  final double size;
  final VoidCallback? onTap;

  const _Avatar({this.url, this.size = 44, this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final child = ClipOval(
      child: SizedBox(
        width: size,
        height: size,
        child: url == null
            ? ColoredBox(
                color: scheme.surfaceContainerHighest,
                child: Icon(
                  Icons.person_rounded,
                  color: scheme.onSurfaceVariant,
                  size: size * 0.55,
                ),
              )
            : cachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
      ),
    );
    return onTap == null ? child : GestureDetector(onTap: onTap, child: child);
  }
}
