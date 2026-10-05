import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/LoadSvg.dart';
import 'Widgets/SettingsAdaptor.dart';

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
    final scheme = context.colorScheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 4,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: scheme.primary,
          ),
          onPressed: () => popPage(context),
        ),
        title: Text(
          getString.settings,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: scheme.primary,
          ),
        ),
        bottom: _services.length < 2
            ? null
            : TabBar(
                controller: _tab,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelColor: scheme.primary,
                unselectedLabelColor: scheme.onSurfaceVariant,
                tabs: [
                  for (final service in _services)
                    Tab(
                      child: Builder(
                        builder: (context) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            loadSvg(
                              service.iconPath,
                              width: 18,
                              height: 18,
                              color: IconTheme.of(context).color,
                            ),
                            SizedBox(width: Dimens.gapXs),
                            Text(service.name),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
      ),
      body: TabBarView(
        controller: _tab,
        children: [
          for (final service in _services)
            _ServiceSettingsBody(service: service),
        ],
      ),
    );
  }
}

class _ServiceSettingsBody extends StatelessWidget {
  final MediaService service;

  const _ServiceSettingsBody({required this.service});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gap,
        Dimens.pagePad,
        Dimens.gapXl,
      ),
      child: Obx(
        () => SettingsAdaptor(settings: service.settingsView!.build(context)),
      ),
    );
  }
}
