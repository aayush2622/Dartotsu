import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

T find<T>() => Get.find<T>();
T put<T>(T dependency, {String? tag, bool permanent = false}) =>
    Get.put<T>(dependency, tag: tag, permanent: permanent);

void lazyPut<T>(T Function() builder, {String? tag, bool fenix = false}) =>
    Get.lazyPut<T>(builder, tag: tag, fenix: fenix);

T? tryFind<T>({String? tag}) =>
    isRegistered<T>(tag: tag) ? Get.find<T>(tag: tag) : null;

T getOrPut<T>(T builder, {String? tag, bool permanent = false}) {
  if (isRegistered<T>(tag: tag)) {
    return Get.find<T>(tag: tag);
  } else {
    return Get.put<T>(builder, tag: tag, permanent: permanent);
  }
}

T getOrLazyPut<T>(T Function() builder, {String? tag, bool fenix = false}) {
  if (isRegistered<T>(tag: tag)) {
    return Get.find<T>(tag: tag);
  } else {
    Get.lazyPut<T>(builder, tag: tag, fenix: fenix);
    return Get.find<T>(tag: tag);
  }
}

void delete<T>({String? tag}) => Get.delete<T>(tag: tag);
bool isRegistered<T>({String? tag}) => Get.isRegistered<T>(tag: tag);
