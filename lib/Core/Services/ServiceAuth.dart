import 'package:get/get.dart';

abstract class ServiceUser {
  int get id;
  String get name;
  String? get avatar;
  String? get banner;
  int get episodesWatched;
  int get chaptersRead;
  int get unreadNotifications;
}

/// Account layer. `MediaService.auth == null` means the service needs no login
/// (e.g. the on-device extension aggregator).
abstract class ServiceAuth {
  /// Holds the signed-in user (`null` when logged out). Stored as
  /// `Rxn<ServiceUser>` so concrete services can upcast their own user type
  /// into it.
  Rxn<ServiceUser> get user;

  bool get isLoggedIn;

  /// Interactive OAuth / web-auth flow. Returns whether it succeeded.
  Future<bool> login();

  /// Manual token entry fallback.
  Future<bool> loginWithToken(String token);

  void logout();

  Future<void> refreshUser();
}
