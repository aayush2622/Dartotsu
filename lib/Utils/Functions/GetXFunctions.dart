import 'package:get/get.dart';

T find<T>() => Get.find<T>();

T put<T>(T dependency, {String? tag, bool permanent = false}) =>
    Get.put<T>(dependency, tag: tag, permanent: permanent);

/// Registers a builder that runs on first [find] — genuinely lazy: the object
/// is not constructed until then.
void lazyPut<T>(T Function() builder, {String? tag, bool fenix = false}) =>
    Get.lazyPut<T>(builder, tag: tag, fenix: fenix);

T? tryFind<T>({String? tag}) =>
    isRegistered<T>(tag: tag) ? Get.find<T>(tag: tag) : null;

T getOrPut<T>(T dependency, {String? tag, bool permanent = false}) =>
    isRegistered<T>(tag: tag)
        ? Get.find<T>(tag: tag)
        : Get.put<T>(dependency, tag: tag, permanent: permanent);

T getOrLazyPut<T>(T Function() builder, {String? tag, bool fenix = false}) {
  if (!isRegistered<T>(tag: tag)) {
    Get.lazyPut<T>(builder, tag: tag, fenix: fenix);
  }
  return Get.find<T>(tag: tag);
}

void delete<T>({String? tag}) => Get.delete<T>(tag: tag);

bool isRegistered<T>({String? tag}) => Get.isRegistered<T>(tag: tag);
