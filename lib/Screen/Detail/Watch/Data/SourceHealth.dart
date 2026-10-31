import '../../../../Logger.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../../Core/NetworkManager/CookieManager.dart';
import '../../../../Core/NetworkManager/NetworkManager.dart';
import '../../../../Core/State/State.dart';

enum ProbeResult { ok, challenge, blocked, failed }

class SourceProbe {
  final ProbeResult result;
  final int? status;
  final CloudflareResult? solve;

  const SourceProbe(this.result, this.status, [this.solve]);

  bool get passedByItself => result == ProbeResult.ok && solve?.cleared == true;

  CloudflareFailure? get failure => solve?.failure;
}

class SourceHealth {
  final String? url;
  final String host;
  final int cookies;
  final StoredCookie? clearance;
  final bool clearanceStale;
  final String userAgent;
  final bool customAgent;

  const SourceHealth({
    required this.url,
    required this.host,
    required this.cookies,
    required this.clearance,
    required this.clearanceStale,
    required this.userAgent,
    required this.customAgent,
  });

  static SourceHealth read(Source source) {
    final net = find<NetworkManager>();
    final url = source.baseUrl?.trim();
    final uri = url == null || url.isEmpty ? null : Uri.tryParse(url);
    final host = uri?.host ?? '';
    final jar = host.isEmpty
        ? const <StoredCookie>[]
        : net.cookieManager
              .getCookiesForDomain(host)
              .where((c) => !c.isExpired)
              .toList();
    final clearance = jar
        .where((c) => c.name == CookieManager.clearanceName)
        .firstOrNull;
    return SourceHealth(
      url: uri == null ? null : url,
      host: host,
      cookies: jar.length,
      clearance: clearance,
      clearanceStale:
          clearance != null && net.cookieManager.isStaleClearance(clearance),
      userAgent: net.userAgent,
      customAgent: net.userAgent != net.defaultUserAgent,
    );
  }

  static Uri? _uri(Source source) {
    final url = source.baseUrl?.trim();
    if (url == null || url.isEmpty) return null;
    return Uri.tryParse(url);
  }

  static CloudflareResult? lastSolve(Source source) {
    final host = _uri(source)?.host;
    return host == null || host.isEmpty
        ? null
        : CloudflareSolver.lastResult(host);
  }

  static Future<SourceProbe> test(Source source) async {
    final uri = _uri(source);
    if (uri == null) return const SourceProbe(ProbeResult.failed, null);
    final first = await _get(uri);
    if (first.result != ProbeResult.challenge) return first;

    final solve = await CloudflareSolver.attempt(uri, interactive: false);
    if (!solve.cleared && !solve.noChallenge) {
      return SourceProbe(ProbeResult.challenge, first.status, solve);
    }
    final second = await _get(uri);
    return SourceProbe(second.result, second.status, solve);
  }

  static Future<CloudflareResult?> solve(Source source) async {
    final uri = _uri(source);
    if (uri == null) return null;
    return CloudflareSolver.attempt(uri, force: true);
  }

  static Future<SourceProbe> _get(Uri uri) async {
    try {
      final res = await find<NetworkManager>().get(
        uri.toString(),
        decodeJson: false,
      );
      final mitigated = res.headers.entries.any(
        (e) => e.key.toLowerCase() == 'cf-mitigated',
      );
      final body = res.data is String ? res.data as String : '';
      final challenge =
          mitigated ||
          body.contains('Just a moment') ||
          body.contains('challenge-platform');
      if (res.statusCode < 400 && !challenge) {
        return SourceProbe(ProbeResult.ok, res.statusCode);
      }
      if (challenge) return SourceProbe(ProbeResult.challenge, res.statusCode);
      if (res.statusCode == 403 || res.statusCode == 429) {
        return SourceProbe(ProbeResult.blocked, res.statusCode);
      }
      return SourceProbe(ProbeResult.failed, res.statusCode);
    } catch (e, st) {
      logError('SourceHealth', e, st);
      return const SourceProbe(ProbeResult.failed, null);
    }
  }
}
