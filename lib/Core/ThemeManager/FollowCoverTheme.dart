import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Functions/GetXFunctions.dart';
import '../Preferences/PrefManager.dart';
import '../Services/MediaServiceController.dart';
import 'GlassBackgroundSource.dart';
import 'Themes/DynamicThemes.dart';

class FollowCoverTheme {
  final enabled = PrefName.followCover.rx;
  final tick = 0.obs;

  final _glassBackgroundUrl = PrefName.glassBackgroundUrl.rx;
  final _coverUrl = RxnString();
  final _workers = <Worker>[];
  Object? _coverOwner;
  String? _imageUrl;
  ColorScheme? _light;
  ColorScheme? _dark;
  StreamSubscription<void>? _userSub;

  ColorScheme? schemeFor(Brightness brightness) =>
      enabled.value ? (brightness == Brightness.dark ? _dark : _light) : null;

  void init() {
    _workers.add(
      everAll([enabled, _glassBackgroundUrl, _coverUrl], (_) => _sync()),
    );
    final services = tryFind<MediaServiceController>();
    if (services != null) {
      _workers.add(ever(services.currentService, (_) => _bindUser()));
      _bindUser();
    }
    unawaited(_sync());
  }

  void dispose() {
    for (final worker in _workers) {
      worker.dispose();
    }
    _userSub?.cancel();
  }

  void set(Object owner, String? url) {
    _coverOwner = owner;
    _coverUrl.value = url;
  }

  void clear(Object owner) {
    if (_coverOwner != owner) return;
    _coverOwner = null;
    _coverUrl.value = null;
  }

  void _bindUser() {
    _userSub?.cancel();
    _userSub = tryFind<MediaServiceController>()
        ?.currentService
        .value
        .auth
        ?.user
        .stream
        .listen((_) => _sync());
    unawaited(_sync());
  }

  Future<void> _sync() async {
    if (!enabled.value) {
      if (_imageUrl != null) {
        _imageUrl = null;
        _light = null;
        _dark = null;
        tick.value++;
      }
      return;
    }
    final url = _coverUrl.value ?? resolveGlassBackground();
    if (url == _imageUrl) return;
    _imageUrl = url;
    final schemes =
        await _schemesFor(url) ??
        (url == kFallbackGlassBackground
            ? null
            : await _schemesFor(kFallbackGlassBackground));
    if (_imageUrl != url || schemes == null) return;
    _light = schemes.$1;
    _dark = schemes.$2;
    tick.value++;
  }

  Future<(ColorScheme, ColorScheme)?> _schemesFor(String url) async {
    try {
      final light = await getImageMainColor(url, Brightness.light);
      final dark = await getImageMainColor(url, Brightness.dark);
      return (light, dark);
    } catch (_) {
      return null;
    }
  }
}
