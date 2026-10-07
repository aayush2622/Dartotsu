import 'package:flutter/material.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/LoadSvg.dart';
import 'Components/ServiceSettingsBody.dart';
import '../../Widgets/Components/AppTabs.dart';
import '../../Core/State/State.dart';

class ServiceSettingsScreen extends StatefulWidget {
  final MediaService initial;

  const ServiceSettingsScreen({super.key, required this.initial});

  @override
  State<ServiceSettingsScreen> createState() => _ServiceSettingsScreenState();
}

class _ServiceSettingsScreenState extends BaseScreen<ServiceSettingsScreen>
    with SingleTickerProviderStateMixin {
  late final List<MediaService> _services;
  late final TabController _tab;

  @override
  void initState() {
    super.initState();
    _services = find<MediaServiceController>().services
        .where((s) => s.settingsView != null)
        .toList();
    final start = _services.indexWhere((s) => s.id == widget.initial.id);
    _tab = TabController(
      length: _services.length,
      vsync: this,
      initialIndex: start < 0 ? 0 : start,
    );
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.settings,
        bottom: _services.length < 2
            ? null
            : AppTabs(
                controller: _tab,
                items: [
                  for (final service in _services)
                    AppTabItem(
                      service.name,
                      icon: (color) => loadSvg(
                        service.iconPath,
                        width: 18,
                        height: 18,
                        color: color,
                      ),
                    ),
                ],
              ),
      ),
      body: TabBarView(
        controller: _tab,
        children: [
          for (final service in _services)
            ServiceSettingsBody(service: service),
        ],
      ),
    );
  }
}
