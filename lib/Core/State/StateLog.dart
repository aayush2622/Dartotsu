import 'package:flutter/foundation.dart';

/// Debug logging for the state layer, in the style of GetX's `[GETX]` lines.
/// Lifecycle lines (created / initialized / deleted) are on in debug builds;
/// [verbose] adds the chatty ones (watch rebuilds, subscriptions).
class StateLog {
  static bool enabled = kDebugMode;
  static bool verbose = false;

  static void log(String message) {
    if (enabled) debugPrint('[STATE] $message');
  }

  static void trace(String Function() message) {
    if (enabled && verbose) debugPrint('[STATE] ${message()}');
  }
}
