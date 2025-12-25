import 'dart:math';
import 'dart:typed_data';

import 'package:rhttp/rhttp.dart';

class DnsManager {
  static Future<List<String>> resolveWithBinaryDoh(
    String host,
  ) async {
    final query = buildDnsQuery(host);

    final res = await Rhttp.requestBytes(
      method: HttpMethod.post,
      url: DohProvider.google.url,
      headers: const HttpHeaders.map({
        HttpHeaderName.contentType: 'application/dns-message',
        HttpHeaderName.accept: 'application/dns-message',
      }),
      body: HttpBody.bytes(query),
    );

    final bytes = res.body;
    if (bytes.isEmpty) {
      throw Exception('Empty DoH response');
    }

    final answers = parseDnsResponse(bytes);
    if (answers.isEmpty) {
      throw Exception('No A records for $host');
    }

    return answers;
  }

  static List<String> parseDnsResponse(Uint8List data) {
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

  static Uint8List buildDnsQuery(String host) {
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
  cloudflare('https://cloudflare-dns.com/dns-query'),
  google('https://dns.google/dns-query'),
  adguard('https://dns-unfiltered.adguard.com/dns-query'),
  quad9('https://dns.quad9.net/dns-query'),
  alidns('https://dns.alidns.com/dns-query'),
  dnspod('https://doh.pub/dns-query'),
  dns360('https://doh.360.cn/dns-query'),
  quad101('https://dns.twnic.tw/dns-query'),
  mullvad('https://doh.mullvad.net/dns-query'),
  controld('https://freedns.controld.com/p0'),
  njalla('https://dns.njal.la/dns-query'),
  shecan('https://free.shecan.ir/dns-query'),
  libredns('https://doh.libredns.gr/dns-query');

  const DohProvider(this.url);
  final String url;
}
