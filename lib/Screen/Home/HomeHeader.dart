import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Api/Services/Anilist/AnilistAuth.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../Login/LoginScreen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = find<AnilistAuth>();

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 20, 8),
      child: Obx(() {
        final user = auth.user.value;
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
            _Avatar(
              url: user?.avatar,
              onTap: () => _accountSheet(context),
            ),
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
    final controller = find<MediaServiceController>();
    final service = controller.currentService.value;
    final auth = find<AnilistAuth>();

    showCustomBottomDialog(
      context,
      CustomBottomDialog(
        title: service.name,
        viewList: [
          Obx(() {
            final user = auth.user.value;
            return ListTile(
              leading: _Avatar(url: user?.avatar, size: 40),
              title: Text(user?.name ?? 'Guest'),
              subtitle: user != null
                  ? Text('${user.episodesWatched} eps · ${user.chaptersRead} ch')
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
          if (service is LoginHandler)
            Obx(() {
              final handler = service as LoginHandler;
              final loggedIn = auth.token.value.isNotEmpty;
              return ListTile(
                leading: Icon(
                  loggedIn ? Icons.logout_rounded : Icons.login_rounded,
                ),
                title: Text(loggedIn ? 'Log out' : 'Log in'),
                onTap: () {
                  Navigator.pop(context);
                  if (loggedIn) {
                    handler.logout();
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  }
                },
              );
            }),
        ],
      ),
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
    return onTap == null
        ? child
        : GestureDetector(onTap: onTap, child: child);
  }
}
