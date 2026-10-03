import 'package:flutter/material.dart';
import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/DnsManager.dart';
import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';

List<Setting> networkSettings(BuildContext context) {
  final network = find<NetworkManager>();
  return [
    Setting.header(getString.sectionRequests),
    Setting(
      type: SettingType.normal,
      name: getString.userAgent,
      description: PrefName.customUserAgent.rx.value.isEmpty
          ? getString.settingDefault
          : PrefName.customUserAgent.rx.value,
      icon: Icons.badge_outlined,
      isActivity: true,
      onClick: () => _showUaSheet(context, network),
    ),
    Setting.header(getString.sectionDnsProxy),
    Setting(
      type: SettingType.normal,
      name: getString.dnsOverHttps,
      description: PrefName.customDnsUrl.rx.value.isEmpty
          ? getString.dnsDefault
          : PrefName.customDnsUrl.rx.value,
      icon: Icons.dns_outlined,
      isActivity: true,
      onClick: () => _showDnsSheet(context, network),
    ),
    Setting(
      type: SettingType.normal,
      name: getString.proxy,
      description: PrefName.proxyUrl.rx.value.isEmpty
          ? getString.none
          : PrefName.proxyUrl.rx.value,
      icon: Icons.vpn_lock_outlined,
      isActivity: true,
      onClick: () => _showProxySheet(context, network),
    ),
    Setting.header(getString.sectionCache),
    Setting(
      type: SettingType.normal,
      name: getString.clearCookies,
      description: getString.clearCookiesDesc,
      icon: Icons.cookie_outlined,
      onClick: () => AlertDialogBuilder(context)
          .setTitle(getString.clearCookies)
          .setMessage(getString.clearCookiesConfirm)
          .setNegativeButton(getString.cancel, null)
          .setPositiveButton(
            getString.clear,
            () => network.cookieManager.clear(),
          )
          .show(),
    ),
  ];
}

// ─── test chip ────────────────────────────────────────────────────────────────

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

// ─── proxy sheet ──────────────────────────────────────────────────────────────

void _showProxySheet(BuildContext context, NetworkManager network) =>
    showCustomBottomDialog<void>(
      context,
      Builder(
        builder: (ctx) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: _ProxySheet(network: network),
        ),
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

  Future<void> _test() async {
    final proxy = _ctrl.text.trim();
    if (proxy.isEmpty) return;
    setState(() {
      _testState = _NetTestState.loading;
      _testMsg = getString.testing;
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
    popPage(context);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return CustomBottomDialog(
      title: getString.proxy,
      negativeText: getString.cancel,
      negativeCallback: () => popPage(context),
      positiveText: getString.save,
      positiveCallback: _save,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: TextField(
            controller: _ctrl,
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'host:port  or  socks5://user:pass@host:port',
              prefixIcon: const Icon(Icons.vpn_lock_outlined),
              filled: true,
              fillColor: scheme.surfaceContainerHigh,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (_) => setState(() => _testState = _NetTestState.idle),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            runSpacing: 8,
            children: [
              ListenableBuilder(
                listenable: _ctrl,
                builder: (context, _) {
                  final v = _ctrl.text.trim();
                  final type = v.isEmpty
                      ? getString.none
                      : v.startsWith('socks5://') || v.startsWith('socks://')
                      ? 'SOCKS5'
                      : 'HTTP';
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
                        border: Border.all(color: color.withValues(alpha: 0.3)),
                      ),
                      child: Text(
                        type,
                        style: context.textTheme.labelSmall?.copyWith(
                          color: color,
                        ),
                      ),
                    ),
                  );
                },
              ),
              FilledButton.tonalIcon(
                onPressed: _testState == _NetTestState.loading ? null : _test,
                icon: const Icon(Icons.wifi_find_rounded, size: 18),
                label: Text(getString.test),
              ),
              _TestChip(state: _testState, message: _testMsg),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
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

// ─── DNS sheet ────────────────────────────────────────────────────────────────

void _showDnsSheet(BuildContext context, NetworkManager network) =>
    showCustomBottomDialog<void>(
      context,
      Builder(
        builder: (ctx) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: _DnsSheet(network: network),
        ),
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
      _testMsg = getString.resolving;
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
    popPage(context);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return CustomBottomDialog(
      title: getString.dnsOverHttps,
      negativeText: getString.cancel,
      negativeCallback: () => popPage(context),
      positiveText: getString.save,
      positiveCallback: _save,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: TextField(
            controller: _ctrl,
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'https://cloudflare-dns.com/dns-query',
              prefixIcon: const Icon(Icons.dns_outlined),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear_rounded),
                onPressed: () {
                  _ctrl.clear();
                  setState(() => _testState = _NetTestState.idle);
                },
              ),
              filled: true,
              fillColor: scheme.surfaceContainerHigh,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (_) => setState(() => _testState = _NetTestState.idle),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            runSpacing: 8,
            children: [
              FilledButton.tonalIcon(
                onPressed: _testState == _NetTestState.loading ? null : _test,
                icon: const Icon(Icons.manage_search_rounded, size: 18),
                label: Text(getString.test),
              ),
              _TestChip(state: _testState, message: _testMsg),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
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

// ─── user-agent sheet ─────────────────────────────────────────────────────────

void _showUaSheet(BuildContext context, NetworkManager network) =>
    showCustomBottomDialog<void>(
      context,
      Builder(
        builder: (ctx) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: _UaSheet(network: network),
        ),
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
    popPage(context);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return CustomBottomDialog(
      title: getString.userAgent,
      negativeText: getString.cancel,
      negativeCallback: () => popPage(context),
      positiveText: getString.save,
      positiveCallback: _save,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TextField(
            controller: _ctrl,
            autofocus: true,
            maxLines: 3,
            minLines: 1,
            decoration: InputDecoration(
              hintText: widget.network.userAgent,
              prefixIcon: const Icon(Icons.badge_outlined),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear_rounded),
                onPressed: _ctrl.clear,
              ),
              alignLabelWithHint: true,
              filled: true,
              fillColor: scheme.surfaceContainerHigh,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
