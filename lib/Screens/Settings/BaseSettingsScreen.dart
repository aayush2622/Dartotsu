import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import '../../Widgets/ScrollConfig.dart';

abstract class BaseSettingsScreen<T extends StatefulWidget> extends State<T> {
  List<Widget> get settingsList;

  String title();

  Widget icon();

  Future<void> onIconPressed() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollConfig(
        context,
        children: [
          SliverToBoxAdapter(
            child: SettingsHeader(
              context,
              title(),
              icon(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(settingsList),
            ),
          ),
        ],
      ),
    );
  }

  Widget SettingsHeader(BuildContext context, String title, Widget icon) {
    var theme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 200.statusBar(),
      child: Stack(
        children: [
          Positioned(
            top: 42.statusBar(),
            left: Directionality.of(context) == TextDirection.rtl ? null : 24,
            right: Directionality.of(context) == TextDirection.rtl ? 24 : null,
            child: Card(
              elevation: 0,
              color: theme.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: theme.onSurface),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Positioned(
            top: 124.statusBar(),
            left: 32,
            right: 16,
            child: GestureDetector(
              onTap: onIconPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
