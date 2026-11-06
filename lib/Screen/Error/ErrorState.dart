import 'dart:io';

import 'package:flutter/material.dart';

import '../../Core/Preferences/StorageManager.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/CopyToClip.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../MainScreen.dart';

class ErrorState extends ScreenState {
  final String error;
  final String stackTrace;
  final VoidCallback? onClosed;

  ErrorState({required this.error, required this.stackTrace, this.onClosed});

  static const _titles = [
    'Oopsie Woopsie (≧◡≦)',
    'Something Broke (ﾉ≧ڡ≦)',
    'Unexpected Ouch! (ಥ﹏ಥ)',
    'Error Vibes Only (✧∀✧)',
    'Plot Twist Error (•◡•) /',
    'Software Sadness (╥﹏╥)',
    'Skill Issue? (¬‿¬)',
    'Gremlins Did It (ᵔ◡ᵔ)',
  ];

  static const _facts = [
    'Fun Fact: 98% of bugs can be solved by a restart.',
    "This is not a bug, it's an undocumented feature.",
    'Programmer tears detected.',
    'Your code tried its best. It failed.',
    'Oops. Flutter tripped over itself again.',
  ];

  late final List<TextSpan> stackSpans = colorizeErrorText(stackTrace);
  late final String title = ([..._titles]..shuffle()).first;
  late final String fact = ([..._facts]..shuffle()).first;

  @override
  void onClose() => onClosed?.call();

  void goBack() {
    final nav = appNavigator;
    if (nav == null) return;
    if (nav.canPop()) {
      nav.pop();
    } else {
      nav.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const MainScreen()),
        (_) => false,
      );
    }
  }

  Future<void> shareLogFile() async {
    final dir = await StorageManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );
    final logPath = '${dir?.path ?? ''}/appLogs.txt'.fixSeparator;
    if (Platform.isLinux) {
      copyToClipboard(logPath, message: getString.logPathCopied);
    } else {
      shareFile(logPath, 'LogFile');
    }
  }

  void copyLogs() =>
      copyToClipboard('Error: $error\n\nStack Trace:\n$stackTrace');
}

List<TextSpan> colorizeErrorText(String text) {
  final patterns = {
    RegExp(r'\bv?\d+(?:\.\d+)*\b'): const TextStyle(color: Colors.amberAccent),
    RegExp(r'\b(?:dart:[\w/.]+|package:[\w./_]+|https?://\S+)\b'):
        const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500),
    RegExp(r'(/[\w./_-]+\.\w+|\w+\.java:\d+)'): const TextStyle(
      color: Colors.lightGreen,
      fontStyle: FontStyle.italic,
    ),
    RegExp(r'\b(?:[a-z_]+\.)*[A-Z][a-zA-Z0-9_]*(?:\.[a-zA-Z0-9_]+)*\b'):
        const TextStyle(color: Colors.tealAccent, fontWeight: FontWeight.w300),
    RegExp(r'\b(Exception|Error|Failure|Failed|Unhandled)\b'): const TextStyle(
      color: Colors.redAccent,
      fontWeight: FontWeight.bold,
    ),
    RegExp(r'\bnull\b'): const TextStyle(color: Colors.deepOrangeAccent),
    RegExp(r'\bawait|async|Future\b'): const TextStyle(
      color: Colors.cyanAccent,
    ),
    RegExp(r'\bmissing|not found\b'): const TextStyle(
      color: Colors.orangeAccent,
    ),
  };

  final spans = <TextSpan>[];

  while (text.isNotEmpty) {
    RegExpMatch? earliestMatch;
    RegExp? matchedPattern;

    for (final entry in patterns.entries) {
      final match = entry.key.firstMatch(text);
      if (match != null &&
          (earliestMatch == null || match.start < earliestMatch.start)) {
        earliestMatch = match;
        matchedPattern = entry.key;
      }
    }

    if (earliestMatch == null) {
      spans.add(
        TextSpan(
          text: text,
          style: const TextStyle(color: Colors.white70),
        ),
      );
      break;
    }

    if (earliestMatch.start > 0) {
      spans.add(
        TextSpan(
          text: text.substring(0, earliestMatch.start),
          style: const TextStyle(color: Colors.white70),
        ),
      );
    }

    spans.add(
      TextSpan(
        text: earliestMatch.group(0),
        style:
            patterns[matchedPattern] ?? const TextStyle(color: Colors.white70),
      ),
    );

    text = text.substring(earliestMatch.end);
  }

  return spans;
}
