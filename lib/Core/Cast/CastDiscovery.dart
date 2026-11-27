import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:xml/xml.dart';

import 'CastDevice.dart';
import 'CastHttp.dart';

class CastDiscovery {
  static const _network = MethodChannel('dartotsu/network');

  final void Function(CastDevice device) onDevice;
  final _sockets = <RawDatagramSocket>[];
  final _resolving = <String>{};

  CastDiscovery(this.onDevice);

  Future<void> run({Duration window = const Duration(seconds: 5)}) async {
    stop();
    final multicastLocked = await _acquireMulticastLock();
    final resend = <void Function()>[];
    final rounds = <Timer>[];
    try {
      await Future.wait([_mdns(resend), _ssdp(resend)]);
      rounds.addAll([
        for (final delay in const [1200, 2600])
          Timer(Duration(milliseconds: delay), () {
            for (final send in resend) {
              try {
                send();
              } catch (_) {}
            }
          }),
      ]);
      await Future<void>.delayed(window);
    } finally {
      for (final timer in rounds) {
        timer.cancel();
      }
      stop();
      if (multicastLocked) await _releaseMulticastLock();
    }
  }

  static Future<bool> _acquireMulticastLock() async {
    if (!Platform.isAndroid) return false;
    try {
      return await _network.invokeMethod<bool>('acquireMulticastLock') ?? false;
    } catch (_) {
      return false;
    }
  }

  static Future<void> _releaseMulticastLock() async {
    try {
      await _network.invokeMethod<void>('releaseMulticastLock');
    } catch (_) {}
  }

  void stop() {
    for (final socket in _sockets) {
      socket.close();
    }
    _sockets.clear();
    _resolving.clear();
  }

  Future<RawDatagramSocket?> _socket() async {
    try {
      final socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, 0);
      socket.broadcastEnabled = true;
      _sockets.add(socket);
      return socket;
    } catch (_) {
      return null;
    }
  }

  static void _send(
    RawDatagramSocket socket,
    List<int> data,
    String address,
    int port,
  ) {
    try {
      socket.send(data, InternetAddress(address), port);
    } on SocketException catch (_) {}
  }

  Future<void> _mdns(List<void Function()> resend) async {
    final socket = await _socket();
    if (socket == null) return;
    void ask() => _send(
      socket,
      _mdnsQuery('_googlecast._tcp.local'),
      '224.0.0.251',
      5353,
    );
    ask();
    resend.add(ask);
    socket.listen((event) {
      if (event != RawSocketEvent.read) return;
      final datagram = socket.receive();
      if (datagram == null) return;
      final text = String.fromCharCodes(datagram.data);
      if (!text.contains('googlecast') && !text.contains('Google Cast')) {
        return;
      }
      final host = datagram.address.address;
      onDevice(
        CastDevice(
          id: 'chromecast-$host',
          name: _mdnsName(text) ?? 'Chromecast ($host)',
          host: host,
          port: 8009,
          protocol: CastProtocol.chromecast,
        ),
      );
    }, onError: (_, _) {});
  }

  static String? _mdnsName(String raw) {
    for (final key in const ['fn', 'md']) {
      final match = RegExp('$key=([^\\x00-\\x1f]+)').firstMatch(raw);
      final name = match?.group(1)?.trim();
      if (name != null && name.isNotEmpty) return name;
    }
    return null;
  }

  static Uint8List _mdnsQuery(String service) {
    final out = BytesBuilder()..add([0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]);
    for (final part in service.split('.')) {
      final bytes = utf8.encode(part);
      out
        ..addByte(bytes.length)
        ..add(bytes);
    }
    out
      ..addByte(0)
      ..add([0, 12, 0, 1]);
    return out.toBytes();
  }

  Future<void> _ssdp(List<void Function()> resend) async {
    final socket = await _socket();
    if (socket == null) return;
    void ask() {
      for (final target in const [
        'roku:ecp',
        'urn:schemas-upnp-org:device:MediaRenderer:1',
      ]) {
        _send(
          socket,
          utf8.encode(
            'M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nMAN: "ssdp:discover"\r\nMX: 3\r\nST: $target\r\n\r\n',
          ),
          '239.255.255.250',
          1900,
        );
      }
    }

    ask();
    resend.add(ask);
    socket.listen((event) {
      if (event != RawSocketEvent.read) return;
      final datagram = socket.receive();
      if (datagram == null) return;
      final text = String.fromCharCodes(datagram.data);
      final host = datagram.address.address;
      final lower = text.toLowerCase();
      if (lower.contains('roku')) {
        if (_resolving.add('roku-$host')) unawaited(_roku(host));
        return;
      }
      final location = RegExp(
        r'LOCATION:\s*(\S+)',
        caseSensitive: false,
      ).firstMatch(text)?.group(1);
      if (location != null &&
          (lower.contains('mediarenderer') || lower.contains('avtransport')) &&
          _resolving.add(location)) {
        unawaited(_renderer(location, host));
      }
    }, onError: (_, _) {});
  }

  Future<void> _roku(String host) async {
    var name = 'Roku ($host)';
    final body = await castGet('http://$host:8060/query/device-info');
    if (body != null) {
      try {
        final doc = XmlDocument.parse(body);
        String? text(String tag) =>
            doc.findAllElements(tag).firstOrNull?.innerText.trim();
        name = [
          text('user-device-name'),
          text('friendly-device-name'),
          text('model-name'),
        ].firstWhere((e) => e != null && e.isNotEmpty, orElse: () => name)!;
      } catch (_) {}
    }
    onDevice(
      CastDevice(
        id: 'roku-$host',
        name: name,
        host: host,
        port: 8060,
        protocol: CastProtocol.roku,
      ),
    );
  }

  Future<void> _renderer(String location, String host) async {
    final body = await castGet(location);
    if (body == null) return;
    try {
      final doc = XmlDocument.parse(body);
      final base = Uri.parse(location);
      final name = doc
          .findAllElements('friendlyName')
          .firstOrNull
          ?.innerText
          .trim();
      String? control;
      String? volume;
      for (final service in doc.findAllElements('service')) {
        final type = service.getElement('serviceType')?.innerText ?? '';
        if (type.contains('AVTransport')) {
          final path = service.getElement('controlURL')?.innerText.trim();
          if (path != null) control = base.resolve(path).toString();
        } else if (type.contains('RenderingControl')) {
          final path = service.getElement('controlURL')?.innerText.trim();
          if (path != null) volume = base.resolve(path).toString();
        }
      }
      if (control == null) return;
      onDevice(
        CastDevice(
          id: 'dlna-$host-${name ?? ''}',
          name: name == null || name.isEmpty ? 'TV ($host)' : name,
          host: host,
          port: base.port,
          protocol: CastProtocol.dlna,
          controlUrl: control,
          volumeUrl: volume,
        ),
      );
    } catch (_) {}
  }
}
