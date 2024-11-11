import 'package:flutter/material.dart';

import '../../Widgets/ScrollConfig.dart';
import 'Widgets/SettingsHeader.dart';

abstract class BaseSettingsScreen<T extends StatefulWidget> extends State<T> {
  List<Widget> get settingsList;

  String title();

  Widget icon();

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
}
