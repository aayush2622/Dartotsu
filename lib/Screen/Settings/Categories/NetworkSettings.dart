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
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';

List<Setting> networkSettings(BuildContext context) {
  final network = find<NetworkManager>();
  return [
    Setting.header(getString.sectionRequests),
    Setting.normal(
      name: getString.userAgent,
      description: PrefName.customUserAgent.rx.value.isEmpty
          ? getString.settingDefault
          : PrefName.customUserAgent.rx.value,
      icon: Icons.badge_outlined,
      isActivity: true,
      onClick: () => _showUaSheet(context, network),
    ),
    Setting.header(getString.sectionDnsProxy),
    Setting.normal(
      name: getString.dnsOverHttps,
      description: PrefName.customDnsUrl.rx.value.isEmpty
          ? getString.dnsDefault
          : PrefName.customDnsUrl.rx.value,
      icon: Icons.dns_outlined,
      isActivity: true,
      onClick: () => _showDnsSheet(context, network),
    ),
    Setting.normal(
      name: getString.proxy,
      description: PrefName.proxyUrl.rx.value.isEmpty
          ? getString.none
          : PrefName.proxyUrl.rx.value,
      icon: Icons.vpn_lock_outlined,
      isActivity: true,
      onClick: () => _showProxySheet(context, network),
    ),
    Setting.header(getString.sectionCache),
    Setting.normal(
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

typedef _ParsedProxy = ({
  String protocol,
  String host,
  String port,
  String user,
  String pass,
});

_ParsedProxy _parseProxyUrl(String raw) {
  if (raw.isEmpty) {
    return (protocol: 'http', host: '', port: '', user: '', pass: '');
  }
  try {
    final uri = Uri.parse(raw.contains('://') ? raw : 'http://$raw');
    final protocol = uri.scheme.startsWith('socks') ? 'socks5' : 'http';
    final userInfo = uri.userInfo.split(':');
    return (
      protocol: protocol,
      host: uri.host,
      port: uri.hasPort ? uri.port.toString() : '',
      user: userInfo.isNotEmpty ? userInfo[0] : '',
      pass: userInfo.length > 1 ? userInfo.sublist(1).join(':') : '',
    );
  } catch (_) {
    return (protocol: 'http', host: raw, port: '', user: '', pass: '');
  }
}

class _ProxySheetState extends State<_ProxySheet> {
  late String _protocol;
  late final TextEditingController _host;
  late final TextEditingController _port;
  late final TextEditingController _user;
  late final TextEditingController _pass;
  bool _obscurePass = true;
  _NetTestState _testState = _NetTestState.idle;
  String _testMsg = '';

  @override
  void initState() {
    super.initState();
    final parsed = _parseProxyUrl(PrefName.proxyUrl.value);
    _protocol = parsed.protocol;
    _host = TextEditingController(text: parsed.host);
    _port = TextEditingController(text: parsed.port);
    _user = TextEditingController(text: parsed.user);
    _pass = TextEditingController(text: parsed.pass);
  }

  String get _composedUrl {
    final host = _host.text.trim();
    if (host.isEmpty) return '';
    final port = _port.text.trim();
    final user = _user.text.trim();
    final pass = _pass.text.trim();
    final auth = user.isEmpty ? '' : '$user${pass.isEmpty ? '' : ':$pass'}@';
    return '$_protocol://$auth$host${port.isEmpty ? '' : ':$port'}';
  }

  Future<void> _test() async {
    final proxy = _composedUrl;
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
    PrefName.proxyUrl.value = _composedUrl;
    widget.network.reinitialize();
    popPage(context);
  }

  void _resetTest() => setState(() => _testState = _NetTestState.idle);

  @override
  void dispose() {
    _host.dispose();
    _port.dispose();
    _user.dispose();
    _pass.dispose();
    super.dispose();
  }

  InputDecoration _decoration(
    BuildContext context,
    String hint, {
    Widget? suffixIcon,
  }) {
    final scheme = context.colorScheme;
    return InputDecoration(
      hintText: hint,
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: scheme.surfaceContainerHigh,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomBottomDialog(
      title: getString.proxy,
      negativeText: getString.cancel,
      negativeCallback: () => popPage(context),
      positiveText: getString.save,
      positiveCallback: _save,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 120,
                child: LabeledField(
                  label: getString.proxyProtocol,
                  child: DropdownButtonFormField<String>(
                    initialValue: _protocol,
                    isExpanded: true,
                    onChanged: (v) => setState(() {
                      _protocol = v!;
                      _resetTest();
                    }),
                    decoration: _decoration(context, ''),
                    items: const [
                      DropdownMenuItem(value: 'http', child: Text('HTTP')),
                      DropdownMenuItem(value: 'socks5', child: Text('SOCKS5')),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: LabeledField(
                  label: getString.proxyHost,
                  child: TextField(
                    controller: _host,
                    autofocus: true,
                    decoration: _decoration(context, 'proxy.example.com'),
                    onChanged: (_) => _resetTest(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LabeledField(
                  label: getString.proxyPort,
                  child: TextField(
                    controller: _port,
                    keyboardType: TextInputType.number,
                    decoration: _decoration(context, '1080'),
                    onChanged: (_) => _resetTest(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: LabeledField(
                  label: getString.proxyUsername,
                  child: TextField(
                    controller: _user,
                    decoration: _decoration(context, getString.optional),
                    onChanged: (_) => _resetTest(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LabeledField(
                  label: getString.proxyPassword,
                  child: TextField(
                    controller: _pass,
                    obscureText: _obscurePass,
                    decoration: _decoration(
                      context,
                      getString.optional,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePass
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () =>
                            setState(() => _obscurePass = !_obscurePass),
                      ),
                    ),
                    onChanged: (_) => _resetTest(),
                  ),
                ),
              ),
            ],
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
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final p in DohProvider.values)
                ChoiceChip(
                  label: Text(p.name),
                  selected: _ctrl.text.trim() == p.url,
                  onSelected: (_) => setState(() {
                    _ctrl.text = p.url;
                    _testState = _NetTestState.idle;
                  }),
                ),
            ],
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
    final addrs = await DnsManager.resolveWithDoh(
      'google.com',
      url,
      bootstrapIps: DohProvider.forUrl(url)?.bootstrapIps ?? const [],
    );
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
          child: Text(
            getString.currentlyUsing(widget.network.userAgent),
            style: context.textTheme.labelSmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TextField(
            controller: _ctrl,
            autofocus: true,
            maxLines: 3,
            minLines: 1,
            decoration: InputDecoration(
              hintText: widget.network.defaultUserAgent,
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
