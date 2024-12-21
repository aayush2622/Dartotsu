import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Preferences/Preferences.dart';
import 'package:dantotsu/Screens/Extensions/ExtensionScreen.dart';
import 'package:dantotsu/Screens/Settings/SettingsScreen.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dantotsu/Widgets/CustomBottomDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:provider/provider.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../../Preferences/PrefManager.dart';
import '../../Services/ServiceSwitcher.dart';

class SettingsBottomSheet extends StatefulWidget {
  const SettingsBottomSheet({super.key});

  @override
  SettingsBottomSheetState createState() => SettingsBottomSheetState();
}

class SettingsBottomSheetState extends State<SettingsBottomSheet> {
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
    var service = Provider.of<MediaServiceProvider>(context, listen: false)
        .currentService
        .data;
    return CustomBottomDialog(
      viewList: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 24.0),
          child: (Row(
            children: [
              Obx(() {
                return CircleAvatar(
                  radius: 26.0,
                  backgroundImage: service.avatar.value.isNotEmpty
                      ? CachedNetworkImageProvider(service.avatar.value)
                      : null,
                  backgroundColor: Colors.transparent,
                  child: service.avatar.value.isEmpty
                      ? Icon(Icons.person,
                          color: Theme.of(context).primaryColor)
                      : null,
                );
              }),
              const SizedBox(width: 16),
              Expanded(
                child: Obx(() {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (service.token.value.isNotEmpty) ...[
                        Text(
                          service.username.value,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        GestureDetector(
                          onTap: () {
                            AlertDialogBuilder(context)
                              ..setTitle(getString.logout)
                              ..setMessage(getString.logoutConfirmation)
                              ..setPositiveButton(getString.yes, () {
                                service.removeSavedToken();
                                Navigator.of(context).pop();
                              })
                              ..setNegativeButton(getString.no, null)
                              ..show();
                          },
                          child: Text(
                            getString.logout,
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
                          onTap: () => service.login(context),
                          child: Text(
                            getString.login,
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
                        service.unreadNotificationCount > 0
                            ? Icons.notifications_active
                            : Icons.notifications_none,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: 22,
                      ),
                    ),
                    if (service.unreadNotificationCount > 0)
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
                              service.unreadNotificationCount.toString(),
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
            title: getString.incognitoMode,
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
            title: getString.offlineMode,
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
            context, getString.activities, Icons.inbox, const SettingsScreen()),
        const SizedBox(height: 10.0),
        _buildListTile(
            context, getString.extension, Icons.extension, const ExtensionScreen()),
        const SizedBox(height: 10.0),
        _buildListTile(
            context, getString.settings, Icons.settings, const SettingsScreen()),
      ],
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
      },
    );
  }
}
