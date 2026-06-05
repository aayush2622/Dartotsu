import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:win32/win32.dart';

final _hive = HKEY_CURRENT_USER;

class WindowsProtocolHandler extends ProtocolHandler {
  @override
  void register(
    String scheme, {
    String? executable,
    List<String>? arguments,
  }) {
    if (defaultTargetPlatform != TargetPlatform.windows) return;

    final prefix = _regPrefix(scheme);
    final capitalized = scheme[0].toUpperCase() + scheme.substring(1);

    final args = getArguments(arguments).map(_sanitize);
    final cmd =
        '${executable ?? Platform.resolvedExecutable} ${args.join(' ')}';

    _regCreateStringKey(_hive, prefix, '', 'URL:$capitalized');
    _regCreateStringKey(_hive, prefix, 'URL Protocol', '');
    _regCreateStringKey(_hive, '$prefix\\shell\\open\\command', '', cmd);
  }

  @override
  void unregister(String scheme) {
    if (defaultTargetPlatform != TargetPlatform.windows) return;

    final keyPtr = _regPrefix(scheme).toNativeUtf16();

    try {
      RegDeleteTree(
        HKEY_CURRENT_USER,
        PCWSTR(keyPtr),
      );
    } finally {
      calloc.free(keyPtr);
    }
  }

  String _regPrefix(String scheme) => 'SOFTWARE\\Classes\\$scheme';

  WIN32_ERROR _regCreateStringKey(
    HKEY hKey,
    String key,
    String valueName,
    String data,
  ) {
    final keyPtr = key.toNativeUtf16();
    final valuePtr = valueName.toNativeUtf16();
    final dataPtr = data.toNativeUtf16();

    try {
      return RegSetKeyValue(
        hKey,
        PCWSTR(keyPtr),
        PCWSTR(valuePtr),
        REG_SZ,
        dataPtr,
        (data.length + 1) * 2,
      );
    } finally {
      calloc.free(keyPtr);
      calloc.free(valuePtr);
      calloc.free(dataPtr);
    }
  }

  String _sanitize(String value) {
    value = value.replaceAll(r'%s', '%1').replaceAll(r'"', r'\"');
    return '"$value"';
  }
}

abstract class ProtocolHandler {
  void register(
    String scheme, {
    String? executable,
    List<String>? arguments,
  });

  void unregister(String scheme);

  List<String> getArguments(List<String>? arguments) {
    if (arguments == null) return ['%s'];

    if (arguments.isEmpty || !arguments.any((e) => e.contains('%s'))) {
      throw ArgumentError(
        'arguments must contain at least 1 instance of "%s"',
      );
    }

    return arguments;
  }
}

class WindowsFileAssociationHandler {
  void register(
    String extension,
    String progId, {
    String? description,
    String? executable,
    List<String>? arguments,
  }) {
    if (defaultTargetPlatform != TargetPlatform.windows) return;

    if (!extension.startsWith('.')) {
      throw ArgumentError('extension must start with "."');
    }

    final exe = executable ?? Platform.resolvedExecutable;
    final args = (arguments ?? ['"%1"']).join(' ');

    _regCreateStringKey(
      _hive,
      'SOFTWARE\\Classes\\$extension',
      '',
      progId,
    );

    _regCreateStringKey(
      _hive,
      'SOFTWARE\\Classes\\$progId',
      '',
      description ?? progId,
    );

    _regCreateStringKey(
      _hive,
      'SOFTWARE\\Classes\\$progId\\DefaultIcon',
      '',
      exe,
    );

    _regCreateStringKey(
      _hive,
      'SOFTWARE\\Classes\\$progId\\shell\\open\\command',
      '',
      '"$exe" $args',
    );
  }

  WIN32_ERROR _regCreateStringKey(
    HKEY hKey,
    String key,
    String valueName,
    String data,
  ) {
    final keyPtr = key.toNativeUtf16();
    final valuePtr = valueName.toNativeUtf16();
    final dataPtr = data.toNativeUtf16();

    try {
      return RegSetKeyValue(
        hKey,
        PCWSTR(keyPtr),
        PCWSTR(valuePtr),
        REG_SZ,
        dataPtr,
        (data.length + 1) * 2,
      );
    } finally {
      calloc.free(keyPtr);
      calloc.free(valuePtr);
      calloc.free(dataPtr);
    }
  }
}

void registerProtocolHandler(
  String scheme, {
  String? executable,
  List<String>? arguments,
}) {
  WindowsProtocolHandler().register(
    scheme,
    executable: executable,
    arguments: arguments,
  );
}

void registerFileAssociation(
  String extension,
  String progId, {
  String? description,
  String? executable,
  List<String>? arguments,
}) {
  WindowsFileAssociationHandler().register(
    extension,
    progId,
    description: description,
    executable: executable,
    arguments: arguments,
  );
}
