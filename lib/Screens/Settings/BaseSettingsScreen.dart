import 'dart:ui';

import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:provider/provider.dart';

import '../../Services/MediaService.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/CachedNetworkImage.dart';
import '../../Widgets/ScrollConfig.dart';

abstract class BaseSettingsScreen<T extends StatefulWidget> extends State<T> {
  List<Widget> get settingsList;

  String title();

  Widget icon();

  Future<void> onIconPressed() async {}

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final service = context.currentService();
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(themeNotifier, service),
          CustomScrollConfig(
            context,
            children: [
              SliverToBoxAdapter(
                child: SettingsHeader(context, title(), icon()),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(settingsList),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackground(ThemeNotifier themeNotifier, MediaService service) {
    if (!themeNotifier.useGlassMode) return const SizedBox.shrink();
    var theme = Theme.of(context).colorScheme;
    return Positioned.fill(
      child: Stack(
        children: [
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Opacity(
                opacity: 0.8,
                child: Obx(
                  () => cachedNetworkImage(
                    imageUrl: service.data.bg.value.isNotEmpty
                        ? service.data.bg.value
                        : 'https://wallpapercat.com/download/1198914',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Gradient overlay at the bottom 75%
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.75,
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, theme.surface],
                    ),
                  ),
                ),
              ),
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
