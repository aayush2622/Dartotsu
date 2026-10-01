import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:rhttp/rhttp.dart';

import '../../Core/NetworkManager/DnsManager.dart';

import '../../Api/Updater/AppUpdater.dart';
import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Core/ThemeManager/CustomColorPicker.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Core/ThemeManager/ThemeMode.dart';
import '../../Model/Setting.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../Login/LoginScreen.dart';
import 'CardStyleScreen.dart';
import 'SettingsCategoryScreen.dart';

class SettingsCategory {
  final String title;
  final String description;
  final IconData icon;
  final List<Setting> Function(BuildContext) build;

  const SettingsCategory({
    required this.title,
    required this.description,
    required this.icon,
    required this.build,
  });
}

const List<SettingsCategory> settingsCategories = [
  SettingsCategory(
    title: 'Appearance',
    description: 'Theme, colours, glass mode',
    icon: Icons.palette_outlined,
    build: appearanceSettings,
  ),
  SettingsCategory(
    title: 'General',
    description: 'Language and behaviour',
    icon: Icons.tune_rounded,
    build: generalSettings,
  ),
  SettingsCategory(
    title: 'Account',
    description: 'Tracking service and sign-in',
    icon: Icons.person_outline_rounded,
    build: accountSettings,
  ),
  SettingsCategory(
    title: 'Updates',
    description: 'Release channel and checks',
    icon: Icons.system_update_alt_rounded,
    build: updateSettings,
  ),
  SettingsCategory(
    title: 'Network',
    description: 'User-Agent, DNS, proxy, cookies',
    icon: Icons.wifi_tethering_rounded,
    build: networkSettings,
  ),
  SettingsCategory(
    title: 'About',
    description: 'Version, links, support',
    icon: Icons.info_outline_rounded,
    build: aboutSettings,
  ),
];

List<Setting> allSettings(BuildContext context) => [
  for (final c in settingsCategories) ...[
    Setting.header(c.title.toUpperCase()),
    ...c.build(context),
  ],
];

List<Setting> appearanceSettings(BuildContext context) {
  final t = find<ThemeController>();
  return [
    Setting(
      type: SettingType.custom,
      name: 'Theme palette colour scheme',
      builder: (_) => themeDropdown(),
    ),
    Setting(
      type: SettingType.custom,
      name: 'Theme mode light dark system',
      builder: (context) => Row(
        children: [
          Icon(
            Icons.brightness_6_rounded,
            size: 22,
            color: context.colorScheme.primary,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              'Mode',
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          AppSegmented<ThemeModePref>(
            expand: false,
            value: t.mode.value,
            onChanged: t.setThemeMode,
            segments: const [
              AppSegment(
                ThemeModePref.system,
                icon: Icons.brightness_auto_rounded,
              ),
              AppSegment(ThemeModePref.light, icon: Icons.light_mode_rounded),
              AppSegment(ThemeModePref.dark, icon: Icons.dark_mode_rounded),
            ],
          ),
        ],
      ),
    ),
    Setting(
      type: SettingType.switchType,
      name: 'AMOLED black',
      description: 'Pure black surfaces on dark mode',
      icon: Icons.brightness_3_rounded,
      isChecked: t.isOled.value,
      onSwitchChange: t.setOled,
    ),
    Setting(
      type: SettingType.switchType,
      name: 'Glass mode',
      description: 'Frosted surfaces over your library art',
      icon: Icons.blur_on_rounded,
      isChecked: t.useGlassMode.value,
      onSwitchChange: t.setGlassEffect,
    ),
    Setting(
      type: SettingType.normal,
      name: 'Card style',
      description: 'Title placement, size, progress and badges',
      icon: Icons.dashboard_customize_rounded,
      isActivity: true,
      onClick: () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const CardStyleScreen())),
    ),
    Setting(
      type: SettingType.switchType,
      name: 'Material You',
      description: 'Dynamic colour from the system',
      icon: Icons.color_lens_outlined,
      isChecked: t.useMaterialYou.value,
      onSwitchChange: t.setMaterialYou,
    ),
    Setting(
      type: SettingType.normal,
      name: 'Custom accent colour',
      description: t.useMaterialYou.value
          ? 'Turn off Material You to use a custom colour'
          : 'Pick your own primary colour',
      icon: Icons.colorize_rounded,
      isVisible: !t.useMaterialYou.value,
      trailing: CircleAvatar(
        radius: 12,
        backgroundColor: Color(t.customColor.value),
      ),
      onClick: () async {
        final picked = await showColorPickerDialog(
          context,
          Color(t.customColor.value),
          showTransparent: false,
        );
        if (picked != null) {
          t
            ..setUseCustomColor(true)
            ..setCustomColor(picked);
        }
      },
    ),
  ];
}

List<Setting> generalSettings(BuildContext context) => [
  Setting(
    type: SettingType.custom,
    name: 'Language locale translation',
    builder: (_) => languageSwitcher(context),
  ),
];

List<Setting> accountSettings(BuildContext context) {
  final service = find<MediaServiceController>().currentService.value;
  final auth = service.auth;
  final user = auth?.user.value;
  return [
    Setting(
      type: SettingType.normal,
      name: 'Tracking service',
      description: service.name,
      icon: Icons.sync_alt_rounded,
      isActivity: true,
      onClick: () => serviceSwitcher(context),
    ),
    Setting(
      type: SettingType.normal,
      name: auth?.isLoggedIn == true ? 'Sign out' : 'Sign in',
      description: user?.name ?? 'Not signed in',
      icon: auth?.isLoggedIn == true
          ? Icons.logout_rounded
          : Icons.login_rounded,
      isVisible: auth != null,
      onClick: () {
        if (auth == null) return;
        if (auth.isLoggedIn) {
          AlertDialogBuilder(context)
              .setTitle('Sign out')
              .setMessage('Sign out of ${service.name}?')
              .setNegativeButton('Cancel', null)
              .setPositiveButton('Sign out', auth.logout)
              .show();
        } else {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (_) => const LoginScreen()));
        }
      },
    ),
    if (service.settingsView case final view?) ...[
      Setting(type: SettingType.header, name: '${service.name} settings'),
      ...view.build(context),
    ],
  ];
}

List<Setting> updateSettings(BuildContext context) => [
  Setting(
    type: SettingType.switchType,
    name: 'Check for updates',
    description: 'Notify on a new GitHub release',
    icon: Icons.system_update_rounded,
    isChecked: PrefName.checkForUpdates.rx.value,
    onSwitchChange: (v) => PrefName.checkForUpdates.value = v,
  ),
  Setting(
    type: SettingType.custom,
    name: 'Update channel',
    builder: (context) => Row(
      children: [
        Icon(
          Icons.science_rounded,
          size: 22,
          color: context.colorScheme.primary,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            'Channel',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        AppSegmented<UpdateChannel>(
          expand: false,
          value: PrefName.updateChannel.rx.value,
          onChanged: (v) => PrefName.updateChannel.value = v,
          segments: const [
            AppSegment(UpdateChannel.stable, label: 'Stable'),
            AppSegment(UpdateChannel.prerelease, label: 'Pre-release'),
            AppSegment(UpdateChannel.alpha, label: 'Alpha'),
          ],
        ),
      ],
    ),
  ),
  Setting(
    type: SettingType.normal,
    name: 'Check now',
    icon: Icons.refresh_rounded,
    trailingIcon: Icons.chevron_right_rounded,
    onClick: () => find<AppUpdater>().checkForUpdate(force: true),
  ),
];

List<Setting> networkSettings(BuildContext context) {
  final network = find<NetworkManager>();
  return [
    Setting(
      type: SettingType.normal,
      name: 'User-Agent',
      description: PrefName.customUserAgent.rx.value.isEmpty
          ? 'Default'
          : PrefName.customUserAgent.rx.value,
      icon: Icons.badge_outlined,
      isActivity: true,
      onClick: () => _showUaSheet(context, network),
    ),
    Setting(
      type: SettingType.normal,
      name: 'DNS-over-HTTPS',
      description: PrefName.customDnsUrl.rx.value.isEmpty
          ? 'Default (Cloudflare)'
          : PrefName.customDnsUrl.rx.value,
      icon: Icons.dns_outlined,
      isActivity: true,
      onClick: () => _showDnsSheet(context, network),
    ),
    Setting(
      type: SettingType.normal,
      name: 'Proxy',
      description: PrefName.proxyUrl.rx.value.isEmpty
          ? 'None'
          : PrefName.proxyUrl.rx.value,
      icon: Icons.vpn_lock_outlined,
      isActivity: true,
      onClick: () => _showProxySheet(context, network),
    ),
    Setting(
      type: SettingType.normal,
      name: 'Clear cookies',
      description: 'Remove every stored cookie',
      icon: Icons.cookie_outlined,
      onClick: () => AlertDialogBuilder(context)
          .setTitle('Clear cookies')
          .setMessage(
            'Remove all stored cookies? This may sign you out of some sources.',
          )
          .setNegativeButton('Cancel', null)
          .setPositiveButton('Clear', () => network.cookieManager.clear())
          .show(),
    ),
  ];
}

List<Setting> aboutSettings(BuildContext context) => [
  Setting(
    type: SettingType.normal,
    name: 'Version',
    description: settingsAppVersion.value,
    icon: Icons.info_outline_rounded,
  ),
  Setting(
    type: SettingType.normal,
    name: 'GitHub',
    description: 'Source, issues and releases',
    icon: Icons.code_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://github.com/aayush2622/Dartotsu'),
  ),
  Setting(
    type: SettingType.normal,
    name: 'Discord',
    description: 'Community and support',
    icon: Icons.forum_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://discord.gg/eyQdCpdubF'),
  ),
  Setting(
    type: SettingType.normal,
    name: 'Buy me a coffee support donate maintainer',
    description: 'Support development',
    icon: Icons.favorite_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://www.buymeacoffee.com/aayush262'),
  ),
];

List<Setting> categoryMenu(BuildContext context) => [
  for (final c in settingsCategories)
    Setting(
      type: SettingType.normal,
      name: c.title,
      description: c.description,
      iconWidget: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          c.icon,
          size: 21,
          color: context.colorScheme.onPrimaryContainer,
        ),
      ),
      isActivity: true,
      onClick: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => SettingsCategoryScreen(category: c)),
      ),
    ),
];

final settingsAppVersion = ''.obs;

// ---- Network bottom-sheet helpers ----

enum _NetTestState { idle, loading, ok, fail }

class _TestChip extends StatelessWidget {
  final _NetTestState state;
  final String message;
  const _TestChip({required this.state, required this.message});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final (icon, color) = switch (state) {
      _NetTestState.ok => (Icons.check_circle_rounded, scheme.primary),
      _NetTestState.fail => (Icons.cancel_rounded, scheme.error),
      _NetTestState.loading => (null, scheme.onSurfaceVariant),
      _NetTestState.idle => (null, scheme.onSurfaceVariant),
    };

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 220),
      child: state == _NetTestState.idle
          ? const SizedBox.shrink()
          : Container(
              key: ValueKey(state),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: color.withValues(alpha: 0.3)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (state == _NetTestState.loading)
                    SizedBox(
                      width: 12,
                      height: 12,
                      child: CircularProgressIndicator(
                        strokeWidth: 1.5,
                        color: color,
                      ),
                    )
                  else
                    Icon(icon, size: 14, color: color),
                  const SizedBox(width: 5),
                  Text(
                    message,
                    style: context.textTheme.labelSmall?.copyWith(color: color),
                  ),
                ],
              ),
            ),
    );
  }
}

Widget _sheetHandle(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Center(
      child: Container(
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: context.colorScheme.onSurface.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    ),
  );
}

Widget _sheetTitle(BuildContext context, String title) => Padding(
  padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
  child: Text(
    title,
    style: context.textTheme.titleMedium,
    textAlign: TextAlign.center,
  ),
);

Widget _sheetActions(
  BuildContext context, {
  required VoidCallback onSave,
  VoidCallback? onNeutral,
  String neutralLabel = 'Reset',
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
    child: Row(
      children: [
        if (onNeutral != null) ...[
          TextButton(onPressed: onNeutral, child: Text(neutralLabel)),
          const Spacer(),
        ],
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        const SizedBox(width: 8),
        FilledButton(onPressed: onSave, child: const Text('Save')),
      ],
    ),
  );
}

// --- Proxy sheet ---

void _showProxySheet(BuildContext context, NetworkManager network) =>
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: _ProxySheet(network: network),
      ),
    );

class _ProxySheet extends StatefulWidget {
  final NetworkManager network;
  const _ProxySheet({required this.network});

  @override
  State<_ProxySheet> createState() => _ProxySheetState();
}

class _ProxySheetState extends State<_ProxySheet> {
  late final _ctrl = TextEditingController(text: PrefName.proxyUrl.value);
  _NetTestState _testState = _NetTestState.idle;
  String _testMsg = '';

  String get _proxyType {
    final v = _ctrl.text.trim();
    if (v.isEmpty) return 'None';
    if (v.startsWith('socks5://') || v.startsWith('socks://')) return 'SOCKS5';
    return 'HTTP';
  }

  Future<void> _test() async {
    final proxy = _ctrl.text.trim();
    if (proxy.isEmpty) return;
    setState(() {
      _testState = _NetTestState.loading;
      _testMsg = 'Testing…';
    });
    final result = await _testProxyConnection(proxy);
    if (!mounted) return;
    setState(() {
      _testState = result.$1 ? _NetTestState.ok : _NetTestState.fail;
      _testMsg = result.$2;
    });
  }

  void _save() {
    PrefName.proxyUrl.value = _ctrl.text.trim();
    widget.network.reinitialize();
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ThemedContainer(
      color: scheme.surface,
      border: Border.all(width: 0, color: scheme.onSurface.withValues(alpha: 0.1)),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      padding: const EdgeInsets.only(bottom: 24, top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _sheetHandle(context),
          _sheetTitle(context, 'Proxy'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              controller: _ctrl,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'host:port  or  socks5://user:pass@host:port',
                prefixIcon: Icon(Icons.vpn_lock_outlined),
              ),
              onChanged: (_) => setState(() {
                _testState = _NetTestState.idle;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
            child: Row(
              children: [
                ListenableBuilder(
                  listenable: _ctrl,
                  builder: (_, _) {
                    final type = _proxyType;
                    final color = type == 'SOCKS5'
                        ? scheme.tertiary
                        : type == 'HTTP'
                        ? scheme.primary
                        : scheme.onSurfaceVariant;
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 180),
                      child: Container(
                        key: ValueKey(type),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: color.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: color.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Text(
                          type,
                          style: context.textTheme.labelSmall
                              ?.copyWith(color: color),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 12),
                FilledButton.tonalIcon(
                  onPressed:
                      _testState == _NetTestState.loading ? null : _test,
                  icon: const Icon(Icons.wifi_find_rounded, size: 18),
                  label: const Text('Test'),
                ),
                const SizedBox(width: 10),
                _TestChip(state: _testState, message: _testMsg),
              ],
            ),
          ),
          _sheetActions(context, onSave: _save),
        ],
      ),
    );
  }
}

Future<(bool, String)> _testProxyConnection(String proxy) async {
  RhttpClient? c;
  final sw = Stopwatch()..start();
  try {
    final proxySettings = proxy.contains('://')
        ? ProxySettings.proxy(proxy)
        : ProxySettings.proxy('http://$proxy');
    c = RhttpClient.createSync(
      settings: ClientSettings(
        throwOnStatusCode: false,
        tlsSettings: const TlsSettings(verifyCertificates: false),
        timeoutSettings: const TimeoutSettings(
          connectTimeout: Duration(seconds: 8),
          timeout: Duration(seconds: 10),
        ),
        proxySettings: proxySettings,
      ),
    );
    final res = await c.get('https://httpbin.org/ip');
    sw.stop();
    return res.statusCode < 400
        ? (true, '${sw.elapsedMilliseconds} ms')
        : (false, 'HTTP ${res.statusCode}');
  } catch (e) {
    sw.stop();
    final msg = e.toString().split('\n').first;
    return (false, msg.length > 55 ? '${msg.substring(0, 55)}…' : msg);
  } finally {
    c?.dispose();
  }
}

// --- DNS sheet ---

void _showDnsSheet(BuildContext context, NetworkManager network) =>
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: _DnsSheet(network: network),
      ),
    );

class _DnsSheet extends StatefulWidget {
  final NetworkManager network;
  const _DnsSheet({required this.network});

  @override
  State<_DnsSheet> createState() => _DnsSheetState();
}

class _DnsSheetState extends State<_DnsSheet> {
  late final _ctrl = TextEditingController(text: PrefName.customDnsUrl.value);
  _NetTestState _testState = _NetTestState.idle;
  String _testMsg = '';

  Future<void> _test() async {
    final url = _ctrl.text.trim();
    if (url.isEmpty) return;
    setState(() {
      _testState = _NetTestState.loading;
      _testMsg = 'Resolving…';
    });
    final result = await _testDns(url);
    if (!mounted) return;
    setState(() {
      _testState = result.$1 ? _NetTestState.ok : _NetTestState.fail;
      _testMsg = result.$2;
    });
  }

  void _save() {
    PrefName.customDnsUrl.value = _ctrl.text.trim();
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ThemedContainer(
      color: scheme.surface,
      border: Border.all(width: 0, color: scheme.onSurface.withValues(alpha: 0.1)),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      padding: const EdgeInsets.only(bottom: 24, top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _sheetHandle(context),
          _sheetTitle(context, 'DNS-over-HTTPS'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              controller: _ctrl,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'https://cloudflare-dns.com/dns-query',
                prefixIcon: Icon(Icons.dns_outlined),
              ),
              onChanged: (_) =>
                  setState(() => _testState = _NetTestState.idle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
            child: Row(
              children: [
                FilledButton.tonalIcon(
                  onPressed:
                      _testState == _NetTestState.loading ? null : _test,
                  icon: const Icon(Icons.manage_search_rounded, size: 18),
                  label: const Text('Test'),
                ),
                const SizedBox(width: 10),
                _TestChip(state: _testState, message: _testMsg),
              ],
            ),
          ),
          _sheetActions(
            context,
            onSave: _save,
            onNeutral: () {
              _ctrl.clear();
              setState(() => _testState = _NetTestState.idle);
            },
            neutralLabel: 'Reset',
          ),
        ],
      ),
    );
  }
}

Future<(bool, String)> _testDns(String url) async {
  final sw = Stopwatch()..start();
  try {
    final addrs = await DnsManager.resolveWithDoh('google.com', url);
    sw.stop();
    return addrs.isNotEmpty
        ? (true, '${addrs.first} · ${sw.elapsedMilliseconds} ms')
        : (false, 'No A records returned');
  } catch (e) {
    sw.stop();
    final msg = e.toString().split('\n').first;
    return (false, msg.length > 55 ? '${msg.substring(0, 55)}…' : msg);
  }
}

// --- User-Agent sheet ---

void _showUaSheet(BuildContext context, NetworkManager network) =>
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: _UaSheet(network: network),
      ),
    );

class _UaSheet extends StatefulWidget {
  final NetworkManager network;
  const _UaSheet({required this.network});

  @override
  State<_UaSheet> createState() => _UaSheetState();
}

class _UaSheetState extends State<_UaSheet> {
  late final _ctrl = TextEditingController(
    text: PrefName.customUserAgent.value,
  );

  void _save() {
    PrefName.customUserAgent.value = _ctrl.text.trim();
    widget.network.reinitialize();
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ThemedContainer(
      color: scheme.surface,
      border: Border.all(width: 0, color: scheme.onSurface.withValues(alpha: 0.1)),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      padding: const EdgeInsets.only(bottom: 24, top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _sheetHandle(context),
          _sheetTitle(context, 'User-Agent'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              controller: _ctrl,
              autofocus: true,
              maxLines: 3,
              minLines: 1,
              decoration: InputDecoration(
                hintText: widget.network.userAgent,
                prefixIcon: const Icon(Icons.badge_outlined),
                alignLabelWithHint: true,
              ),
            ),
          ),
          _sheetActions(
            context,
            onSave: _save,
            onNeutral: () => _ctrl.clear(),
            neutralLabel: 'Reset',
          ),
        ],
      ),
    );
  }
}
