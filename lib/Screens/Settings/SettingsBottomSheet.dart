import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Prefrerences/Prefrences.dart';
import 'package:dantotsu/Screens/Settings/SettingsScreen.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Prefrerences/PrefManager.dart';
import '../../api/Anilist/Anilist.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  BottomSheetContentState createState() => BottomSheetContentState();
}

class BottomSheetContentState extends State<BottomSheetContent> {
  late bool incognito;
  late bool offline;

  @override
  void initState() {
    super.initState();
    incognito = PrefManager.getVal(PrefName.incognito);
    offline = PrefManager.getVal(PrefName.offlineMode);
  }

  @override
  Widget build(BuildContext context) {
    final userData = Anilist;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
            top: 16.0, bottom: 16.0, left: 16.0, right: 4.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 24.0),
              child: (Row(
                children: [
                  CircleAvatar(
                    radius: 26.0,
                    backgroundImage:
                        userData.avatar.value != null && userData.avatar.value!.isNotEmpty
                            ? CachedNetworkImageProvider(userData.avatar.value!)
                            : null,
                    backgroundColor: Colors.transparent,
                    child: userData.avatar.value == null || userData.avatar.value!.isEmpty
                        ? Icon(Icons.person,
                            color: Theme.of(context).primaryColor)
                        : null,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Obx(() {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (Anilist.token.value.isNotEmpty) ...[
                            Text(
                              Anilist.username ?? "",
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 4),
                            GestureDetector(
                              onTap: () {
                                context.customAlertDialog()
                                  ..setTitle('Logout')
                                  ..setMessage('Are you sure you want to logout?')
                                  ..setPosButton('Yes', () {
                                    Anilist.removeSavedToken();
                                    Navigator.of(context).pop();
                                  })
                                  ..setNegButton('No', null)
                                  ..show();
                              },
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ] else ...[
                            GestureDetector(
                              onTap: () {
                                openLinkInBrowser('https://anilist.co/api/v2/oauth/authorize?client_id=14959&response_type=token');
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ],
                      );
                    }),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Icon(
                            userData.unreadNotificationCount > 0
                                ? Icons.notifications_active
                                : Icons.notifications_none,
                            color: Theme.of(context).colorScheme.onSurface,
                            size: 22,
                          ),
                        ),
                        if (userData.unreadNotificationCount > 0)
                          Positioned(
                            right: 0,
                            bottom: -2,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Color(0xFFC6140A),
                                shape: BoxShape.circle,
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 18,
                                minHeight: 18,
                              ),
                              child: Center(
                                child: Text(
                                  userData.unreadNotificationCount.toString(),
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFF3F3F3),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              )),
            ),
            const SizedBox(height: 24.0),
            _buildSwitchListTile(
                context: context,
                title: 'Incognito Mode',
                icon: Icons.person,
                isChecked: incognito,
                onChanged: (bool value) {
                  setState(() {
                    PrefManager.setVal(PrefName.incognito, value);
                    incognito = value;
                  });
                }),
            const SizedBox(height: 12.0),
            _buildSwitchListTile(
                context: context,
                title: 'Offline Mode',
                icon: Icons.download,
                isChecked: offline,
                onChanged: (bool value) {
                  setState(() {
                    PrefManager.setVal(PrefName.offlineMode, value);
                    offline = value;
                  });
                }),
            const SizedBox(height: 10.0),
            _buildListTile(
                context, 'Activities', Icons.inbox, const SettingsScreen()),
            const SizedBox(height: 10.0),
            _buildListTile(
                context, 'Extension', Icons.extension, const SettingsScreen()),
            const SizedBox(height: 10.0),
            _buildListTile(
                context, 'Settings', Icons.settings, const SettingsScreen()),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchListTile(
      {required BuildContext context,
      required String title,
      required IconData icon,
      required bool isChecked,
      Function(bool)? onChanged}) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
      value: isChecked,
      onChanged: onChanged,
      secondary: Icon(icon, color: Theme.of(context).primaryColor),
    );
  }

  Widget _buildListTile(
      BuildContext context, String title, IconData icon, Widget open) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        onTap: () {
          Navigator.of(context).pop();
          navigateToPage(context, open);
        });
  }
}

void settingsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return const BottomSheetContent();
    },
  );
}
