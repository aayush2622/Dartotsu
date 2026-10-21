import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:rhttp/rhttp.dart' as rhttp;

import '../../../Logger.dart';
import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';

class ReaderImageLoader {
  ReaderImageLoader._();

  static final manager = CacheManager(
    Config(
      'readerPages',
      stalePeriod: const Duration(days: 14),
      maxNrOfCacheObjects: 600,
      fileService: _PagedFileService(),
    ),
  );

  static final _errors = <String, String>{};
  static final _processors = <String, Future<Uint8List> Function(Uint8List)>{};

  static void _remember(PageUrl page) {
    final process = page.process;
    if (process != null) _processors[page.url] = process;
  }

  static final _progress = <String, Live<double?>>{};

  static Live<double?> progressOf(String url) =>
      _progress.putIfAbsent(url, () => Live<double?>(null));

  static void _report(String url, int received, int total) {
    if (received <= 0) return;
    progressOf(url).value = total > 0
        ? (received / total).clamp(0.0, 1.0)
        : null;
  }

  static void _finished(String url) => _progress.remove(url);

  static var _epoch = 0;

  static void cancelAll() => _epoch++;

  static String? errorOf(PageUrl page) => _errors[page.url];

  static bool _local(String url) =>
      !url.startsWith('http') && File(url).isAbsolute;

  static ImageProvider providerFor(PageUrl page) {
    if (_local(page.url)) return FileImage(File(page.url));
    _remember(page);
    return CachedNetworkImageProvider(
      page.url,
      headers: page.headers,
      cacheManager: manager,
    );
  }

  static Future<void> prefetch(PageUrl page) async {
    if (_local(page.url)) return;
    _remember(page);
    try {
      final cached = await manager.getFileFromCache(page.url);
      if (cached != null && cached.validTill.isAfter(DateTime.now())) return;
      await manager.downloadFile(page.url, authHeaders: page.headers);
    } catch (e, st) {
      logError('ReaderImageLoader', e, st);
    }
  }

  static Future<Uint8List?> loadBytes(PageUrl page) async {
    try {
      if (_local(page.url)) {
        final f = File(page.url);
        if (await f.exists()) return await f.readAsBytes();
        return null;
      }
      final cached = await manager.getFileFromCache(page.url);
      if (cached != null && await cached.file.exists()) {
        return await cached.file.readAsBytes();
      }
      final downloaded = await manager.downloadFile(page.url, authHeaders: page.headers);
      return await downloaded.file.readAsBytes();
    } catch (e, st) {
      logError('ReaderImageLoader.loadBytes', e, st);
      return null;
    }
  }

  static Future<void> forget(PageUrl page) async {
    _errors.remove(page.url);
    if (_local(page.url)) return;
    await manager.removeFile(page.url);
    await providerFor(page).evict();
  }
}

class _PagedFileService extends FileService {
  static const _spacing = Duration(milliseconds: 180);
  static const _maxCooldown = Duration(seconds: 5);

  final _cooldown = <String, DateTime>{};
  final _lastStart = <String, DateTime>{};

  _PagedFileService() {
    concurrentFetches = 2;
  }

  Future<void> _pace(String host) async {
    final now = DateTime.now();
    final cool = _cooldown[host];
    final next = (_lastStart[host] ?? now).add(_spacing);
    var until = next.isAfter(now) ? next : now;
    if (cool != null && cool.isAfter(until)) until = cool;
    _lastStart[host] = until;
    final wait = until.difference(now);
    if (wait > Duration.zero) await Future<void>.delayed(wait);
  }

  @override
  Future<FileServiceResponse> get(
    String url, {
    Map<String, String>? headers,
  }) async {
    final epoch = ReaderImageLoader._epoch;
    void ensureOpen() {
      if (epoch != ReaderImageLoader._epoch) {
        throw const HttpException('Cancelled');
      }
    }

    ensureOpen();
    final host = Uri.tryParse(url)?.host ?? '';
    await _pace(host);
    ensureOpen();
    try {
      final res = await find<NetworkManager>().client.getBytes(
        url,
        headers: headers == null ? null : rhttp.HttpHeaders.rawMap(headers),
        onReceiveProgress: (count, total) =>
            ReaderImageLoader._report(url, count, total),
      );
      ensureOpen();
      final code = res.statusCode;
      if (code >= 200 && code < 300 && res.body.isNotEmpty) {
        ReaderImageLoader._errors.remove(url);
        final process = ReaderImageLoader._processors[url];
        if (process == null) {
          return _BytesResponse(res.body, res.headerMap['content-type'], url);
        }
        final processed = await process(Uint8List.fromList(res.body));
        ensureOpen();
        return _BytesResponse(processed, 'image/png', url);
      }
      if (code == 429) {
        final after = int.tryParse(res.headerMap['retry-after'] ?? '');
        final wait = Duration(seconds: after ?? 2);
        _cooldown[host] = DateTime.now().add(
          wait > _maxCooldown ? _maxCooldown : wait,
        );
      }
      throw HttpException('HTTP $code', uri: Uri.tryParse(url));
    } catch (e) {
      if (epoch == ReaderImageLoader._epoch) {
        ReaderImageLoader._errors[url] = e is HttpException ? e.message : '$e';
        logger('Reader image failed: $e $url', tag: 'READER');
      }
      rethrow;
    } finally {
      ReaderImageLoader._finished(url);
    }
  }
}

class _BytesResponse implements FileServiceResponse {
  final List<int> _bytes;
  final String? _type;
  final String _url;
  final DateTime _received = DateTime.now();

  _BytesResponse(this._bytes, this._type, this._url);

  @override
  Stream<List<int>> get content => Stream.value(_bytes);

  @override
  int? get contentLength => _bytes.length;

  @override
  int get statusCode => 200;

  @override
  DateTime get validTill => _received.add(const Duration(days: 14));

  @override
  String? get eTag => null;

  @override
  String get fileExtension {
    final type = _type?.split(';').first.trim().toLowerCase();
    return switch (type) {
      'image/webp' => '.webp',
      'image/png' => '.png',
      'image/jpeg' => '.jpg',
      'image/gif' => '.gif',
      'image/avif' => '.avif',
      _ => () {
        final ext = Uri.tryParse(_url)?.path.split('.').last ?? '';
        return ext.length <= 5 && ext.isNotEmpty ? '.$ext' : '.img';
      }(),
    };
  }
}
