/// Base class for every long-lived controller resolved through the locator.
/// [onInit] runs once when the locator builds it, [onClose] when it is deleted.
abstract class AppController {
  void onInit() {}

  void onClose() {}
}
