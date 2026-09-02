import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/MediaServiceController.dart';
import '../../../Core/Services/ServiceSwitcher.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/LoadSvg.dart';
import '../../Login/LoginScreen.dart';
import '../../Settings/SettingsScreen.dart';
import 'HeaderAvatar.dart';

/// The bottom sheet behind the home-header avatar — account summary, service
/// switch, settings, and log in / out.
void showAccountSheet(BuildContext context, MediaServiceController controller) {
  final service = controller.currentService.value;
  final auth = service.auth;

  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      title: service.name,
      viewList: [
        Obx(() {
          final user = auth?.user.value;
          return ListTile(
            leading: HeaderAvatar(url: user?.avatar, size: 40),
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
