

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

Widget cachedNetworkImage({
  required String imageUrl,
  BoxFit? fit,
  double? width,
  double? height,
  Widget Function(BuildContext, String)? placeholder,
  Widget Function(BuildContext, String, Object)? errorWidget,
}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    fit: fit,
    width: width,
    height: height,
    placeholder: placeholder ?? (context, url) => const SizedBox.shrink(),
    errorWidget: errorWidget ?? (context, url, error) => const SizedBox.shrink(),
  );
}