import 'dart:math';
import 'dart:typed_data';

import 'package:rhttp/rhttp.dart';

import 'LogInterceptor.dart';

class DnsManager {
  /// Resolves [host] via DoH at [dnsUrl]. [dnsUrl]'s own hostname still needs
  /// resolving to make that request in the first place - [bootstrapIps]
  /// (e.g. [DohProvider.bootstrapIps]) breaks that chicken-and-egg problem by
  /// connecting to the DoH endpoint directly by IP (with a `Host` header) if
  /// the normal hostname request fails, so DoH keeps working even when
  /// regular system DNS is down or blocked.
  static Future<List<String>> resolveWithDoh(
    String host,
    String dnsUrl, {
    List<String> bootstrapIps = const [],
  }) async {
    final query = _buildDnsQuery(host);
    final dnsHost = Uri.parse(dnsUrl).host;

    Object? lastError;
    for (final url in [
      dnsUrl,
      ...bootstrapIps.map((ip) => _withHost(dnsUrl, ip)),
    ]) {
      try {
        final res = await Rhttp.requestBytes(
          interceptors: [LogInterceptor()],
          method: HttpMethod.post,
          url: url,
          headers: HttpHeaders.map({
            HttpHeaderName.contentType: 'application/dns-message',
            HttpHeaderName.accept: 'application/dns-message',
            if (url != dnsUrl) HttpHeaderName.host: dnsHost,
          }),
          body: HttpBody.bytes(query),
        );

        final bytes = res.body;
        if (bytes.isEmpty) throw Exception('Empty DoH response');

        final answers = _parseDnsResponse(bytes);
        if (answers.isEmpty) throw Exception('No A records for $host');

        return answers;
      } catch (e) {
        lastError = e;
      }
    }
    throw lastError ?? Exception('No A records for $host');
  }

  static String _withHost(String url, String ip) =>
      Uri.parse(url).replace(host: ip).toString();

  static List<String> _parseDnsResponse(Uint8List data) {
    // something is  happening here idk myself
    int offset = 12; // skip header

    // Skip question
    while (data[offset] != 0) {
      offset += data[offset] + 1;
    }
    offset += 5;

    final results = <String>[];

    while (offset < data.length) {
      // name (pointer or inline)
      if ((data[offset] & 0xC0) == 0xC0) {
        offset += 2;
      } else {
        while (data[offset] != 0) {
          offset += data[offset] + 1;
        }
        offset++;
      }

      final type = (data[offset] << 8) | data[offset + 1];
      offset += 8; // TYPE + CLASS + TTL
      final rdLength = (data[offset] << 8) | data[offset + 1];
      offset += 2;

      if (type == 1 && rdLength == 4) {
        results.add(
          '${data[offset]}.${data[offset + 1]}.${data[offset + 2]}.${data[offset + 3]}',
        );
      }

      offset += rdLength;
    }

    return results;
  }

  static Uint8List _buildDnsQuery(String host) {
    // something is  happening here tooo
    final rand = Random.secure();
    final bytes = BytesBuilder();

    // Header
    bytes.add([
      rand.nextInt(256), rand.nextInt(256),
      0x01, 0x00, // standard query, recursion desired
      0x00, 0x01, // QDCOUNT = 1
      0x00, 0x00, // ANCOUNT
      0x00, 0x00, // NSCOUNT
      0x00, 0x00, // ARCOUNT
    ]);

    // Question
    for (final label in host.split('.')) {
      bytes.add([label.length]);
      bytes.add(label.codeUnits);
    }
    bytes.add([0x00]); // end of name
    bytes.add([0x00, 0x01]); // QTYPE = A
    bytes.add([0x00, 0x01]); // QCLASS = IN

    return bytes.toBytes();
  }
}

enum DohProvider {
  cloudflare('https://cloudflare-dns.com/dns-query', ['1.1.1.1', '1.0.0.1']),
  google('https://dns.google/dns-query', ['8.8.8.8', '8.8.4.4']),
  adguard('https://dns-unfiltered.adguard.com/dns-query', [
    '94.140.14.140',
    '94.140.14.141',
  ]),
  quad9('https://dns.quad9.net/dns-query', ['9.9.9.9', '149.112.112.112']),
  alidns('https://dns.alidns.com/dns-query', ['223.5.5.5', '223.6.6.6']),
  dnspod('https://doh.pub/dns-query', ['1.12.12.12', '120.53.53.53']),
  dns360('https://doh.360.cn/dns-query'),
  quad101('https://dns.twnic.tw/dns-query', [
    '101.101.101.101',
    '101.102.103.104',
  ]),
  mullvad('https://doh.mullvad.net/dns-query', ['194.242.2.2']),
  controld('https://freedns.controld.com/p0', ['76.76.2.0', '76.76.10.0']),
  njalla('https://dns.njal.la/dns-query'),
  shecan('https://free.shecan.ir/dns-query'),
  libredns('https://doh.libredns.gr/dns-query');

  const DohProvider(this.url, [this.bootstrapIps = const []]);
  final String url;

  /// Known IPs for this provider's own hostname, so [DnsManager.resolveWithDoh]
  /// can still reach it even when system DNS can't resolve that hostname.
  final List<String> bootstrapIps;

  static DohProvider? forUrl(String url) {
    for (final p in values) {
      if (p.url == url) return p;
    }
    return null;
  }
}
