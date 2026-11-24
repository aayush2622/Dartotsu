import AuthenticationServices
import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
    if let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "DartotsuAuth") {
      AuthChannel.register(messenger: registrar.messenger())
    }
  }
}

final class AuthChannel: NSObject, ASWebAuthenticationPresentationContextProviding {
  private static let shared = AuthChannel()
  private var session: ASWebAuthenticationSession?

  static func register(messenger: FlutterBinaryMessenger) {
    let channel = FlutterMethodChannel(name: "dartotsu/auth", binaryMessenger: messenger)
    channel.setMethodCallHandler { call, result in shared.handle(call, result) }
  }

  private func handle(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
    switch call.method {
    case "authenticate":
      authenticate(call.arguments as? [String: Any], result)
    case "cancel":
      session?.cancel()
      session = nil
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func authenticate(_ args: [String: Any]?, _ result: @escaping FlutterResult) {
    guard let text = args?["url"] as? String,
      let url = URL(string: text),
      let scheme = args?["scheme"] as? String
    else {
      result(FlutterError(code: "args", message: "url and scheme required", details: nil))
      return
    }
    session?.cancel()
    let started = ASWebAuthenticationSession(url: url, callbackURLScheme: scheme) {
      [weak self] callback, error in
      self?.session = nil
      if let callback = callback {
        result(callback.absoluteString)
        return
      }
      let cancelled = (error as? ASWebAuthenticationSessionError)?.code == .canceledLogin
      result(
        FlutterError(
          code: cancelled ? "CANCELED" : "ERROR",
          message: error?.localizedDescription ?? "Sign-in failed",
          details: nil))
    }
    started.presentationContextProvider = self
    started.prefersEphemeralWebBrowserSession = (args?["ephemeral"] as? Bool) ?? false
    session = started
    if !started.start() {
      session = nil
      result(FlutterError(code: "ERROR", message: "Could not start the sign-in session", details: nil))
    }
  }

  func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
    let windows = UIApplication.shared.connectedScenes
      .compactMap { $0 as? UIWindowScene }
      .flatMap { $0.windows }
    return windows.first { $0.isKeyWindow } ?? windows.first ?? ASPresentationAnchor()
  }
}
