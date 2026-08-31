/// A [MediaService] that requires (or supports) account login implements this.
/// Services without it are treated as always-available (e.g. the extension
/// aggregator).
abstract interface class LoginHandler {
  bool get isLoggedIn;

  Future<void> login();

  void logout();
}
