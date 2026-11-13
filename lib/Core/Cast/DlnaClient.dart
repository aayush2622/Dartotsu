import 'package:xml/xml.dart';

import 'CastHttp.dart';

const _service = 'urn:schemas-upnp-org:service:AVTransport:1';

String xmlEscape(String input) => input
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&apos;');

String clock(Duration d) {
  String two(int v) => v.toString().padLeft(2, '0');
  return '${two(d.inHours)}:${two(d.inMinutes.remainder(60))}:${two(d.inSeconds.remainder(60))}';
}

Duration? _parseClock(String? text) {
  if (text == null) return null;
  final parts = text.split(':');
  if (parts.length != 3) return null;
  final h = int.tryParse(parts[0]);
  final m = int.tryParse(parts[1]);
  final s = double.tryParse(parts[2]);
  if (h == null || m == null || s == null) return null;
  return Duration(seconds: h * 3600 + m * 60 + s.floor());
}

class DlnaPosition {
  final Duration position;
  final Duration duration;
  final String state;

  const DlnaPosition(this.position, this.duration, this.state);
}

const _rendering = 'urn:schemas-upnp-org:service:RenderingControl:1';

class DlnaClient {
  final String controlUrl;
  final String? volumeUrl;

  const DlnaClient(this.controlUrl, {this.volumeUrl});

  Future<String?> _rendered(String action, [String arguments = '']) {
    final url = volumeUrl;
    if (url == null) return Future.value(null);
    return castPost(
      url,
      headers: {
        'Content-Type': 'text/xml; charset="utf-8"',
        'SOAPACTION': '"$_rendering#$action"',
      },
      body:
          '<?xml version="1.0" encoding="utf-8"?>'
          '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" '
          's:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">'
          '<s:Body><u:$action xmlns:u="$_rendering">'
          '<InstanceID>0</InstanceID>$arguments'
          '</u:$action></s:Body></s:Envelope>',
    );
  }

  Future<double?> volume() async {
    final reply = await _rendered('GetVolume', '<Channel>Master</Channel>');
    if (reply == null) return null;
    try {
      final level = int.tryParse(
        XmlDocument.parse(reply)
                .findAllElements('CurrentVolume')
                .firstOrNull
                ?.innerText ??
            '',
      );
      return level == null ? null : (level / 100).clamp(0.0, 1.0);
    } catch (_) {
      return null;
    }
  }

  Future<bool> setVolume(double level) async =>
      await _rendered(
        'SetVolume',
        '<Channel>Master</Channel>'
            '<DesiredVolume>${(level.clamp(0.0, 1.0) * 100).round()}</DesiredVolume>',
      ) !=
      null;

  Future<String?> _call(String action, [String arguments = '']) => castPost(
    controlUrl,
    headers: {
      'Content-Type': 'text/xml; charset="utf-8"',
      'SOAPACTION': '"$_service#$action"',
    },
    body:
        '<?xml version="1.0" encoding="utf-8"?>'
        '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" '
        's:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">'
        '<s:Body><u:$action xmlns:u="$_service">'
        '<InstanceID>0</InstanceID>$arguments'
        '</u:$action></s:Body></s:Envelope>',
  );

  String _didl({
    required String url,
    required String title,
    required bool hls,
    String? mime,
    String? subtitle,
  }) {
    final type = hls ? 'application/vnd.apple.mpegurl' : (mime ?? 'video/mp4');
    final features = hls
        ? '*'
        : 'DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000';
    final sub = subtitle == null
        ? ''
        : '<res protocolInfo="http-get:*:text/vtt:*">${xmlEscape(subtitle)}</res>'
              '<sec:CaptionInfoEx xmlns:sec="http://www.sec.co.kr/" sec:type="vtt">${xmlEscape(subtitle)}</sec:CaptionInfoEx>';
    return '<DIDL-Lite xmlns="urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/" '
        'xmlns:dc="http://purl.org/dc/elements/1.1/" '
        'xmlns:upnp="urn:schemas-upnp-org:metadata-1-0/upnp/" '
        'xmlns:dlna="urn:schemas-dlna-org:metadata-1-0/" '
        'xmlns:sec="http://www.sec.co.kr/">'
        '<item id="1" parentID="0" restricted="1">'
        '<dc:title>${xmlEscape(title)}</dc:title>'
        '<upnp:class>object.item.videoItem</upnp:class>'
        '<res protocolInfo="http-get:*:$type:$features">${xmlEscape(url)}</res>'
        '$sub</item></DIDL-Lite>';
  }

  Future<bool> load({
    required String url,
    required String title,
    required bool hls,
    String? mime,
    String? subtitle,
  }) async {
    final meta = _didl(
      url: url,
      title: title,
      hls: hls,
      mime: mime,
      subtitle: subtitle,
    );
    final set = await _call(
      'SetAVTransportURI',
      '<CurrentURI>${xmlEscape(url)}</CurrentURI>'
          '<CurrentURIMetaData>${xmlEscape(meta)}</CurrentURIMetaData>',
    );
    return set != null;
  }

  Future<bool> play() async => await _call('Play', '<Speed>1</Speed>') != null;

  Future<String> state() async {
    final info = await _call('GetTransportInfo');
    if (info == null) return '';
    try {
      return XmlDocument.parse(info)
              .findAllElements('CurrentTransportState')
              .firstOrNull
              ?.innerText ??
          '';
    } catch (_) {
      return '';
    }
  }

  Future<bool> playWhenReady() async {
    for (var i = 0; i < 12; i++) {
      final now = await state();
      if (now == 'PLAYING') return true;
      if (now != 'TRANSITIONING' && now != 'NO_MEDIA_PRESENT') {
        if (await play()) return true;
      }
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }
    return false;
  }

  Future<bool> pause() async => await _call('Pause') != null;

  Future<bool> stop() async => await _call('Stop') != null;

  Future<bool> seek(Duration to) async =>
      await _call(
        'Seek',
        '<Unit>REL_TIME</Unit><Target>${clock(to)}</Target>',
      ) !=
      null;

  Future<DlnaPosition?> poll() async {
    final info = await _call('GetPositionInfo');
    if (info == null) return null;
    final transport = await _call('GetTransportInfo');
    try {
      final doc = XmlDocument.parse(info);
      String? text(XmlDocument d, String tag) =>
          d.findAllElements(tag).firstOrNull?.innerText;
      final state = transport == null
          ? ''
          : text(XmlDocument.parse(transport), 'CurrentTransportState') ?? '';
      return DlnaPosition(
        _parseClock(text(doc, 'RelTime')) ?? Duration.zero,
        _parseClock(text(doc, 'TrackDuration')) ?? Duration.zero,
        state,
      );
    } catch (_) {
      return null;
    }
  }
}
