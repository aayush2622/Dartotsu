import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:precached_network_image/precached_network_image.dart';

Widget cachedNetworkImage({
  required String? imageUrl,
  BoxFit? fit,
  double? width,
  double? height,
  Widget Function(BuildContext, String)? placeholder,
  Widget Function(BuildContext, String, dynamic)? errorWidget,
}) {
  if ((imageUrl == null || imageUrl.isEmpty)) {
    if (placeholder != null) {
      return SizedBox(
        width: width,
        height: height,
        child: placeholder.call(Get.context!, imageUrl ?? ""),
      );
    }
    return SizedBox(
      width: width,
      height: height,
    );
  }
  var useDifferentCacheManager =
      loadCustomData<bool>('useDifferentCacheManager') ?? false;
  if (useDifferentCacheManager) {
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
  return CachedNetworkImage(
    filterQuality: FilterQuality.high,
    imageUrl: imageUrl,
    fit: fit,
    width: width,
    height: height,
    placeholder: placeholder ?? (context, url) => const SizedBox.shrink(),
    errorWidget:
        errorWidget ?? (context, url, error) => const SizedBox.shrink(),
  );
}
