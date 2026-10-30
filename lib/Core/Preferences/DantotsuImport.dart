import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Api/Discord/Mobile/TokenManager.dart';
import '../../Api/Services/Anilist/Auth.dart';
import '../../Api/Services/MyAnimeList/Auth.dart';
import '../../Api/Services/MyAnimeList/Prefs.dart';
import '../../Logger.dart';
import '../NetworkManager/DnsManager.dart';
import '../../Screen/Player/Engine/PlayerSettings.dart';
import '../State/State.dart';
import '../ThemeManager/ThemeController.dart';
import '../ThemeManager/ThemeMode.dart';
import 'PrefManager.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';

enum DantotsuGroup { accounts, appearance, extensions, app, player }

class DantotsuItem {
  final String id;
  final DantotsuGroup group;
  final String detail;
  final Future<String?> Function() apply;

  const DantotsuItem(this.id, this.group, this.detail, this.apply);
}

class DantotsuBackup {
  final Map<String, Map<String, Object?>> sections;

  const DantotsuBackup(this.sections);

  static bool encryptedName(String path) =>
      path.toLowerCase().endsWith('.sani');

  static Future<DantotsuBackup> read(String path, {String? password}) async {
    final bytes = await File(path).readAsBytes();
    final text = encryptedName(path)
        ? await decrypt(bytes, password ?? '')
        : utf8.decode(bytes);
    return parse(text);
  }

  static DantotsuBackup parse(String text) {
    final raw = jsonDecode(text);
    if (raw is! Map) throw const FormatException('Not a Dantotsu backup');
    return DantotsuBackup({
      for (final e in raw.entries)
        if (e.value is Map)
          '${e.key}': {
            for (final x in (e.value as Map).entries) '${x.key}': x.value,
          },
    });
  }

  static String keyPassword(String typed) {
    final text = typed.trim();
    final clipped = text.length > 16 ? text.substring(0, 16) : text;
    return clipped.padRight(16, '0');
  }

  static Future<SecretKey> _key(String password, List<int> salt) => Pbkdf2(
    macAlgorithm: Hmac.sha256(),
    iterations: 10000,
    bits: 256,
  ).deriveKey(secretKey: SecretKey(utf8.encode(password)), nonce: salt);

  static final _cbc = AesCbc.with256bits(macAlgorithm: MacAlgorithm.empty);

  static Future<String> decrypt(Uint8List bytes, String password) async {
    if (bytes.length <= 32) throw const FormatException('Too short');
    final key = await _key(keyPassword(password), bytes.sublist(0, 16));
    final out = await _cbc.decrypt(
      SecretBox(bytes.sublist(16), nonce: List.filled(16, 0), mac: Mac.empty),
      secretKey: key,
    );
    return utf8.decode(out);
  }

  static Future<Uint8List> encrypt(
    String text,
    String password,
    List<int> salt,
  ) async {
    final key = await _key(keyPassword(password), salt);
    final box = await _cbc.encrypt(
      utf8.encode(text),
      secretKey: key,
      nonce: List.filled(16, 0),
    );
    return Uint8List.fromList([...salt, ...box.cipherText]);
  }

  T? get<T>(String section, String key) {
    final entry = sections[section]?[key];
    final value = entry is Map ? entry['value'] : null;
    if (value is T) return value;
    if (T == double && value is num) return value.toDouble() as T;
    return null;
  }

  T? first<T>(List<(String, String)> places) {
    for (final (section, key) in places) {
      final v = get<T>(section, key);
      if (v != null) return v;
    }
    return null;
  }

  List<String> urls(String key) {
    final raw = get<List>('General', key);
    return [
      for (final e in raw ?? const [])
        if ('$e'.startsWith('http')) '$e',
    ];
  }
}

const dantotsuSpeeds = [
  0.25,
  0.33,
  0.5,
  0.66,
  0.75,
  1.0,
  1.15,
  1.25,
  1.33,
  1.5,
  1.66,
  1.75,
  2.0,
];

const dantotsuCursedSpeeds = [
  1.0,
  1.25,
  1.5,
  1.75,
  2.0,
  2.5,
  3.0,
  4.0,
  5.0,
  10.0,
  25.0,
  50.0,
];

const dantotsuActivityMinutes = [0, 30, 60, 120, 240, 360, 720, 1440];
const dantotsuCommentMinutes = [0, 480, 720, 1440];

double? dantotsuSpeed(int index, {required bool cursed}) {
  final list = cursed ? dantotsuCursedSpeeds : dantotsuSpeeds;
  return index >= 0 && index < list.length ? list[index] : null;
}

int? dantotsuMinutes(int index, List<int> table) =>
    index >= 0 && index < table.length ? table[index] : null;

int dantotsuColor(int value, {bool opaque = true}) {
  final v = value & 0xFFFFFFFF;
  return opaque ? (v | 0xFF000000) : v;
}

String? dantotsuDns(int index) {
  if (index < 1 || index > DohProvider.values.length) return null;
  final provider = DohProvider.values[index - 1];
  return provider == DohProvider.cloudflare ? '' : provider.url;
}

String _hex(int argb) =>
    '#${(argb & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';

List<DantotsuItem> planDantotsu(DantotsuBackup b) {
  final items = <DantotsuItem>[];

  void add(
    String id,
    DantotsuGroup group,
    String detail,
    Future<String?> Function() apply,
  ) => items.add(DantotsuItem(id, group, detail, apply));

  Future<String?> guard(String id, Future<String?> Function() body) async {
    try {
      return await body();
    } catch (e, st) {
      logError('DantotsuImport', e, st, 'import $id failed');
      return '$e';
    }
  }

  final aniToken = b.get<String>('Protected', 'AnilistToken') ?? '';
  if (aniToken.isNotEmpty) {
    add(
      'anilist',
      DantotsuGroup.accounts,
      b.get<String>('Protected', 'AnilistUserName') ?? '',
      () => guard('anilist', () async {
        final ok = await find<AnilistAuth>().loginWithToken(aniToken);
        return ok ? null : getString.importTokenRejected;
      }),
    );
  }

  final malToken = b.get<String>('Protected', 'MALToken') ?? '';
  if (malToken.isNotEmpty) {
    add(
      'mal',
      DantotsuGroup.accounts,
      b.get<String>('Protected', 'MALUserName') ?? '',
      () => guard('mal', () async {
        MalPref.token.value = malToken;
        final auth = find<MalAuth>();
        await auth.refreshUser();
        if (auth.user.value != null) return null;
        MalPref.token.value = '';
        return getString.importTokenRejected;
      }),
    );
  }

  final discord = b.get<String>('General', 'DiscordToken') ?? '';
  if (discord.isNotEmpty) {
    add(
      'discord',
      DantotsuGroup.accounts,
      b.get<String>('General', 'DiscordUserName') ??
          b.get<String>('Protected', 'DiscordUserName') ??
          '',
      () => guard('discord', () async {
        MobileTokenManager.saveAuthToken(discord);
        return null;
      }),
    );
  }

  final themeName = b.get<String>('UI', 'Theme');
  final custom = b.get<bool>('UI', 'UseCustomTheme') ?? false;
  final customInt = b.get<int>('UI', 'CustomThemeInt');
  final darkMode = b.get<int>('UI', 'DarkMode');
  final oled = b.get<bool>('UI', 'UseOLED');
  final materialYou = b.get<bool>('UI', 'UseMaterialYou');
  final palette = switch (themeName) {
    'ORIAX' => 'oriax',
    'SAIKOU' => 'saikou',
    _ => null,
  };
  if (darkMode != null ||
      oled != null ||
      materialYou != null ||
      (custom && customInt != null) ||
      palette != null) {
    final parts = [
      if (custom && customInt != null) _hex(dantotsuColor(customInt)),
      if (!custom && palette != null) palette,
      switch (darkMode) {
        1 => 'light',
        2 => 'dark',
        0 => 'system',
        _ => null,
      },
      if (oled == true) 'OLED',
      if (materialYou == true) 'Material You',
    ].whereType<String>();
    add(
      'theme',
      DantotsuGroup.appearance,
      parts.join(' · '),
      () => guard('theme', () async {
        final theme = find<ThemeController>();
        if (materialYou == true) {
          theme.setMaterialYou(true);
        } else if (custom && customInt != null) {
          theme.setCustomColor(Color(dantotsuColor(customInt)));
          theme.setUseCustomColor(true);
        } else if (palette != null) {
          theme.setTheme(palette);
        }
        if (darkMode != null) {
          theme.setThemeMode(switch (darkMode) {
            1 => ThemeModePref.light,
            2 => ThemeModePref.dark,
            _ => ThemeModePref.system,
          });
        }
        if (oled != null) theme.setOled(oled);
        return null;
      }),
    );
  }

  for (final (key, type, id) in [
    ('AnimeExtensionRepos', ItemType.anime, 'repos-anime'),
    ('MangaExtensionRepos', ItemType.manga, 'repos-manga'),
    ('NovelExtensionRepos', ItemType.novel, 'repos-novel'),
  ]) {
    final urls = b.urls(key);
    if (urls.isEmpty) continue;
    add(
      id,
      DantotsuGroup.extensions,
      '${urls.length}',
      () => guard(id, () async {
        final manager = find<ExtensionManager>();
        final failed = <String>[];
        for (final url in urls) {
          try {
            await manager[type].addRepo(url, type).drain<void>();
          } catch (e, st) {
            logError('DantotsuImport', e, st, 'repo $url failed');
            failed.add(url);
          }
        }
        return failed.isEmpty ? null : failed.join('\n');
      }),
    );
  }

  final update = b.get<bool>('General', 'CheckUpdate');
  if (update != null) {
    add(
      'updates',
      DantotsuGroup.app,
      update ? 'on' : 'off',
      () => guard('updates', () async {
        PrefName.checkForUpdates.value = update;
        return null;
      }),
    );
  }

  final comments = b.get<int>('General', 'CommentsEnabled');
  final sort = b.first<String>([
    ('UI', 'CommentSortOrder'),
    ('General', 'CommentSortOrder'),
  ]);
  final commentPoll = b.get<int>('General', 'CommentNotificationInterval');
  if (comments != null || sort != null || commentPoll != null) {
    add(
      'comments',
      DantotsuGroup.app,
      [if (comments != null) comments == 1 ? 'on' : 'off', ?sort].join(' · '),
      () => guard('comments', () async {
        if (comments != null) PrefName.commentsEnabled.value = comments == 1;
        if (sort != null) PrefName.commentsSort.value = sort;
        final minutes = commentPoll == null
            ? null
            : dantotsuMinutes(commentPoll, dantotsuCommentMinutes);
        if (minutes != null) {
          PrefName.commentsAlerts.value = minutes > 0;
          if (minutes > 0) PrefName.commentsPollMinutes.value = minutes;
        }
        return null;
      }),
    );
  }

  final activity = b.get<int>('General', 'AnilistNotificationInterval');
  final activityMinutes = activity == null
      ? null
      : dantotsuMinutes(activity, dantotsuActivityMinutes);
  if (activityMinutes != null) {
    add(
      'activity',
      DantotsuGroup.app,
      activityMinutes == 0 ? 'off' : '$activityMinutes min',
      () => guard('activity', () async {
        PrefName.activityAlerts.value = activityMinutes > 0;
        if (activityMinutes > 0) {
          PrefName.activityPollMinutes.value = activityMinutes;
        }
        return null;
      }),
    );
  }

  final doh = b.get<int>('General', 'DohProvider');
  final dns = doh == null ? null : dantotsuDns(doh);
  if (dns != null) {
    add(
      'dns',
      DantotsuGroup.app,
      dns.isEmpty
          ? DohProvider.cloudflare.name
          : DohProvider.values[doh! - 1].name,
      () => guard('dns', () async {
        PrefName.customDnsUrl.value = dns;
        return null;
      }),
    );
  }

  final speedIndex = b.get<int>('Player', 'DefaultSpeed');
  final cursed = b.get<bool>('Player', 'CursedSpeeds') ?? false;
  final speed = speedIndex == null
      ? null
      : dantotsuSpeed(speedIndex, cursed: cursed);
  final subtitles = b.get<bool>('Player', 'Subtitles');
  final primary = b.get<int>('Player', 'PrimaryColor');
  final secondary = b.get<int>('Player', 'SecondaryColor');
  final background = b.get<int>('Player', 'SubBackground');
  if (speed != null ||
      subtitles != null ||
      primary != null ||
      secondary != null) {
    add(
      'player',
      DantotsuGroup.player,
      [
        if (speed != null) '${speed}x',
        if (cursed) 'extra speeds',
        if (primary != null) _hex(primary),
      ].join(' · '),
      () => guard('player', () async {
        PlayerPrefs.update((s) {
          if (speed != null) s.speed = speed;
          s.cursedSpeed = cursed;
          if (subtitles != null) s.showSubtitle = subtitles;
          if (primary != null) s.subtitleColor = dantotsuColor(primary);
          if (secondary != null) {
            s.subtitleOutlineColor = dantotsuColor(secondary);
          }
          if (background != null && (background & 0xFF000000) != 0) {
            s.subtitleBackgroundColor = dantotsuColor(
              background,
              opaque: false,
            );
          }
        });
        return null;
      }),
    );
  }

  return items;
}
