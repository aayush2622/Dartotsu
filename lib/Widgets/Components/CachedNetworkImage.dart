import 'dart:io';
import 'dart:ui' show PlatformDispatcher;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:precached_network_image/precached_network_image.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';

const _maxDecode = 1440;

Widget cachedNetworkImage({
  required String? imageUrl,
  BoxFit? fit,
  double? width,
  double? height,
  int? cacheWidth,
  Widget Function(BuildContext, String)? placeholder,
  Widget Function(BuildContext, String, dynamic)? errorWidget,
}) {
  if ((imageUrl == null || imageUrl.isEmpty)) {
    if (placeholder != null) {
      return SizedBox(
        width: width,
        height: height,
        child: placeholder.call(appContext!, imageUrl ?? ""),
      );
    }
    return SizedBox(width: width, height: height);
  }
  if (File(imageUrl).isAbsolute) {
    return Image.file(
      File(imageUrl),
      fit: fit,
      width: width,
      height: height,
      errorBuilder: (context, _, _) =>
          errorWidget?.call(context, imageUrl, null) ??
          SizedBox(width: width, height: height),
    );
  }
  if (PrefName.useDifferentCacheManager.value) {
    return PrecachedNetworkImage(
      url: imageUrl,
      width: width ?? 100,
      height: height ?? 100,
      precache: true,
      fit: fit ?? BoxFit.cover,
      placeholder: placeholder ?? (context, url) => const SizedBox.shrink(),
      errorWidget:
          errorWidget ?? (context, url, error) => const SizedBox.shrink(),
    );
  }
  final ratio = PlatformDispatcher.instance.views.isEmpty
      ? 2.0
      : PlatformDispatcher.instance.views.first.devicePixelRatio.clamp(
          1.0,
          3.0,
        );
  final decodeWidth =
      cacheWidth ??
      ((width != null && width.isFinite)
          ? (width * ratio).ceil()
          : (height != null && height.isFinite ? null : _maxDecode));
  return CachedNetworkImage(
    filterQuality: FilterQuality.low,
    imageUrl: imageUrl,
    fit: fit,
    width: width,
    height: height,
    memCacheWidth: decodeWidth,
    memCacheHeight: decodeWidth == null && height != null && height.isFinite
        ? (height * ratio).ceil()
        : null,
    placeholder: placeholder ?? (context, url) => const SizedBox.shrink(),
    errorWidget:
        errorWidget ?? (context, url, error) => const SizedBox.shrink(),
  );
}
