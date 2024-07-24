
import 'dart:async';

import 'package:flutter/cupertino.dart';

Future<bool> imageLoaded(String? imageUrl) async {
  if (imageUrl == null) return false;
  final Completer<bool> completer = Completer();
  final Image image = Image.network(imageUrl);
  final ImageStreamListener listener = ImageStreamListener((ImageInfo info, bool syncCall) {
    completer.complete(true);
  }, onError: (dynamic exception, StackTrace? stackTrace) {
    completer.complete(false);
  });
  image.image.resolve(const ImageConfiguration()).addListener(listener);
  return completer.future;
}

