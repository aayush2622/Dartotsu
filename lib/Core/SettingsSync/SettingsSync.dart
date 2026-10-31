import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/widgets.dart';

import '../../Logger.dart';
import '../Preferences/IsarDataClasses/KeyValue/KeyValues.dart';
import '../Preferences/PrefManager.dart';
import '../State/State.dart';
import 'GistTransport.dart';
import 'SettingsMerge.dart';
import 'SettingsScope.dart';
import 'SyncChannel.dart';
import 'SyncVault.dart';
import 'TitleScope.dart';

enum SettingsSyncPhase { off, idle, syncing, failed }

enum SecretsOutcome { ok, wrong, mismatch, failed }

class RemoteInfo {
  final DateTime at;
  final String platform;
  final bool mine;
  final Map<PrefLocation, int> counts;
  final Set<String> keys;

  const RemoteInfo(this.at, this.platform, this.mine, this.counts, this.keys);

  int get total => counts.values.fold(0, (a, b) => a + b);
}

class TitlesInfo {
  final DateTime at;
  final String platform;
  final bool mine;
  final int records;
  final int resume;

  const TitlesInfo(
    this.at,
    this.platform,
    this.mine,
    this.records,
    this.resume,
  );
}

class SyncedSetting {
  final String key;
  final String name;
  final Object? value;
  final bool onServer;

  const SyncedSetting(this.key, this.name, this.value, this.onServer);
}

class SettingsSync extends AppController with WidgetsBindingObserver {
  static const _deviceKey = '__settingsSyncDevice';
  static const _poll = Duration(minutes: 15);

  static final titleHooks = <void Function()>[];
  static final secretHooks = <void Function()>[];

  final phase = SettingsSyncPhase.off.live;
  final lastSync = Live<DateTime?>(null);
  final error = Live<String?>(null);
  final remote = Live<RemoteInfo?>(null);
  final titles = Live<TitlesInfo?>(null);
  final serverHasSecrets = false.live;
  final secretsError = Live<String?>(null);

  late final SyncChannel _settings = SyncChannel(
    file: GistTransport.settingsFile,
    stampsKey: '__settingsSyncStamps',
    active: () => true,
    syncable: SettingsScope.syncable,
    includes: SettingsScope.includes,
    strip: _portable,
    restore: _incoming,
    delay: const Duration(seconds: 2),
  );

  late final SyncChannel _titles = SyncChannel(
    file: 'dartotsu-titles.json',
    stampsKey: '__settingsSyncTitleStamps',
    active: () => TitleScope.enabled,
    syncable: TitleScope.syncable,
    includes: TitleScope.includes,
    strip: TitleScope.strip,
    restore: TitleScope.restore,
    combine: TitleScope.combine,
    delay: const Duration(seconds: 45),
    throttle: true,
    applied: () {
      for (final hook in titleHooks) {
        hook();
      }
    },
  );

  static const secretsFile = 'dartotsu-secrets.json';

  late final SyncChannel _secrets = SyncChannel(
    file: secretsFile,
    stampsKey: '__settingsSyncSecretStamps',
    active: () => secretsOn,
    syncable: SettingsScope.secret,
    includes: SettingsScope.secret,
    strip: (_, json) => json,
    restore: (_, json) => KeyValue.fromJson(json),
    delay: const Duration(seconds: 8),
    secret: true,
    seal: (plain) => SyncVault.seal(plain, _passphrase),
    unseal: (raw) => SyncVault.open(raw, _passphrase),
    applied: () {
      for (final hook in secretHooks) {
        hook();
      }
    },
  );

  List<SyncChannel> get _channels => [_settings, _titles, _secrets];

  String get _passphrase => PrefName.settingsSyncPassphrase.value;

  bool get secretsOn => _passphrase.isNotEmpty;

  Timer? _poller;
  bool _running = false;
  bool _again = false;
  bool _started = false;

  bool get configured => PrefName.githubToken.value.isNotEmpty;

  bool get enabled => PrefName.settingsSync.value && configured;

  GistTransport get _transport => GistTransport();

  String get _device => loadCustomData<String>(_deviceKey) ?? _newDevice();

  String _newDevice() {
    final id = List.generate(
      8,
      (_) => Random.secure().nextInt(36).toRadixString(36),
    ).join();
    saveCustomData(_deviceKey, id);
    return id;
  }

  void start() {
    if (_started) return;
    _started = true;
    for (final c in _channels) {
      c.load();
    }
    PrefManager.onLocalChange = _changed;
    WidgetsBinding.instance.addObserver(this);
    onAnyChange([
      PrefName.settingsSync.rx,
      PrefName.githubToken.rx,
      PrefName.settingsSyncCategories.rx,
      PrefName.settingsSyncTitles.rx,
      PrefName.settingsSyncPassphrase.rx,
    ], _refresh);
    _refresh();
  }

  @override
  void onClose() {
    PrefManager.onLocalChange = null;
    WidgetsBinding.instance.removeObserver(this);
    for (final c in _channels) {
      c.timer?.cancel();
    }
    _poller?.cancel();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && enabled) syncNow();
    if (state == AppLifecycleState.paused) {
      PrefManager.flush();
      if (enabled) syncNow();
    }
  }

  void _refresh() {
    _poller?.cancel();
    for (final c in _channels) {
      c.timer?.cancel();
      c.timer = null;
    }
    if (!enabled) {
      phase.value = SettingsSyncPhase.off;
      error.value = null;
      if (configured) unawaited(peek());
      return;
    }
    if (phase.value == SettingsSyncPhase.off) {
      phase.value = SettingsSyncPhase.idle;
    }
    _poller = Timer.periodic(_poll, (_) => syncNow());
    syncNow();
  }

  void _changed(String key, bool deleted) {
    if (!enabled) return;
    for (final c in _channels) {
      if (!c.active() || !c.includes(key)) continue;
      c.stamp(key);
      if (c.throttle) {
        c.timer ??= Timer(c.delay, syncNow);
      } else {
        c.timer?.cancel();
        c.timer = Timer(c.delay, syncNow);
      }
    }
  }

  Map<String, dynamic> _portable(String key, Map<String, dynamic> json) {
    final value = json['value'];
    if (value is! Map || !SettingsScope.splitsFields(key)) return json;
    return {
      ...json,
      'value': SettingsScope.portable(key, value.cast<String, dynamic>()),
    };
  }

  KeyValue _incoming(String key, Map<String, dynamic> json) {
    final value = json['value'];
    if (value is! Map || !SettingsScope.splitsFields(key)) {
      return KeyValue.fromJson(json);
    }
    final location = SettingsScope.locationOf(key)!;
    final local = PrefManager.getCustomVal<Map>(
      SettingsScope.nameOf(key),
      location: location,
    );
    return KeyValue.fromJson({
      ...json,
      'value': SettingsScope.withLocalFields(
        key,
        value.cast<String, dynamic>(),
        local,
      ),
    });
  }

  void _publishSettings(Map<String, SyncEntry> entries, RemoteFile file) {
    final counts = <PrefLocation, int>{};
    for (final e in entries.entries) {
      final location = SettingsScope.locationOf(e.key);
      if (location != null && !e.value.deleted) {
        counts[location] = (counts[location] ?? 0) + 1;
      }
    }
    remote.value = file.at == 0
        ? null
        : RemoteInfo(
            DateTime.fromMillisecondsSinceEpoch(file.at),
            file.platform,
            file.device == _device,
            counts,
            {
              for (final e in entries.entries)
                if (!e.value.deleted) e.key,
            },
          );
  }

  void _publishTitles(Map<String, SyncEntry> entries, RemoteFile file) {
    titles.value = file.at == 0
        ? null
        : TitlesInfo(
            DateTime.fromMillisecondsSinceEpoch(file.at),
            file.platform,
            file.device == _device,
            TitleScope.recordCount(entries),
            TitleScope.resumeCount(entries),
          );
  }

  List<SyncedSetting> syncedIn(PrefLocation category) {
    PrefManager.flush();
    final onServer = remote.value?.keys ?? const <String>{};
    final result = <SyncedSetting>[];
    for (final kv in PrefManager.allEntries()) {
      if (!SettingsScope.syncable(kv.key) ||
          SettingsScope.locationOf(kv.key) != category) {
        continue;
      }
      final name = _humanize(SettingsScope.nameOf(kv.key));
      final value = kv.value;
      final onIt = onServer.contains(kv.key);
      if (value is Map && SettingsScope.splitsFields(kv.key)) {
        final fields = SettingsScope.portable(
          kv.key,
          value.cast<String, dynamic>(),
        );
        for (final f in fields.entries) {
          result.add(
            SyncedSetting(kv.key, '$name: ${_humanize(f.key)}', f.value, onIt),
          );
        }
      } else {
        result.add(SyncedSetting(kv.key, name, value, onIt));
      }
    }
    return result..sort((a, b) => a.name.compareTo(b.name));
  }

  static String _humanize(String name) {
    final spaced = name.replaceAllMapped(
      RegExp(r'(?<=[a-z0-9])(?=[A-Z])'),
      (_) => ' ',
    );
    return spaced.isEmpty
        ? name
        : spaced[0].toUpperCase() + spaced.substring(1).toLowerCase();
  }

  Future<void> peek() async {
    if (!configured) return;
    try {
      final files = await _transport.readAll();
      serverHasSecrets.value = files.containsKey(secretsFile);
      final settings = _decodeFile(_settings, files);
      _publishSettings(settings.entries, settings);
      final titleFile = _decodeFile(_titles, files);
      _publishTitles(titleFile.entries, titleFile);
    } catch (e, st) {
      logError('SettingsSync', e, st);
    }
  }

  RemoteFile _decodeFile(SyncChannel channel, Map<String, String> files) {
    final raw = files[channel.file];
    return raw == null ? RemoteFile.empty : channel.decode(raw);
  }

  Future<String?> _syncChannel(
    SyncChannel channel,
    Map<String, String> files,
    int now,
  ) async {
    final raw = files[channel.file];
    final data = raw == null
        ? RemoteFile.empty
        : await channel.decodeAsync(raw);
    final local = channel.local();
    final result = channel.secret
        ? mergeSecrets(local, data.entries, now)
        : mergeSettings(local, data.entries, now, combine: channel.combine);
    final apply = {
      for (final e in result.apply.entries)
        if (channel.includes(e.key)) e.key: e.value,
    };

    PrefManager.applyRemote(
      [
        for (final e in apply.entries)
          if (!e.value.deleted) channel.restore(e.key, e.value.json!),
      ],
      [
        for (final e in apply.entries)
          if (e.value.deleted) e.key,
      ],
    );
    if (apply.isNotEmpty) channel.applied();
    channel.stamps = {
      for (final e in channel.stamps.entries)
        if (!channel.includes(e.key) || result.signedOut.contains(e.key))
          e.key: e.value,
      for (final e in result.merged.entries)
        if (channel.includes(e.key) && !result.signedOut.contains(e.key))
          e.key: e.value.stamp,
    };
    channel.save();

    final write = result.dirty || data.stale;
    final shown = write ? result.merged : data.entries;
    final file = write
        ? RemoteFile(shown, now, _device, Platform.operatingSystem)
        : data;
    if (identical(channel, _settings)) {
      _publishSettings(shown, file);
    } else if (identical(channel, _titles)) {
      _publishTitles(shown, file);
    }
    return write ? channel.encodeAsync(result.merged, now, _device) : null;
  }

  Future<SecretsOutcome> enableSecrets(String pass, {String? confirm}) async {
    try {
      final files = await _transport.readAll();
      final existing = files[secretsFile];
      if (existing != null) {
        await SyncVault.open(existing, pass);
      } else if (confirm != pass) {
        return SecretsOutcome.mismatch;
      }
      secretsError.value = null;
      PrefName.settingsSyncPassphrase.value = pass;
      return SecretsOutcome.ok;
    } on WrongPassphrase {
      return SecretsOutcome.wrong;
    } catch (e, st) {
      logError('SettingsSync', e, st);
      return SecretsOutcome.failed;
    }
  }

  Future<void> disableSecrets({bool deleteRemote = false}) async {
    PrefName.settingsSyncPassphrase.value = '';
    SyncVault.forget();
    secretsError.value = null;
    _secrets.timer?.cancel();
    _secrets.stamps = {};
    _secrets.save();
    if (!deleteRemote || !configured) return;
    try {
      await _transport.writeFiles({secretsFile: null});
      serverHasSecrets.value = false;
    } catch (e, st) {
      logError('SettingsSync', e, st);
      error.value = e.toString();
    }
  }

  Future<void> syncNow() async {
    if (!enabled) return;
    if (_running) {
      _again = true;
      return;
    }
    _running = true;
    for (final c in _channels) {
      c.timer?.cancel();
      c.timer = null;
    }
    phase.value = SettingsSyncPhase.syncing;
    try {
      PrefManager.flush();
      final transport = _transport;
      final files = await transport.readAll();
      final now = DateTime.now().millisecondsSinceEpoch;
      final writes = <String, String>{};
      serverHasSecrets.value = files.containsKey(secretsFile);
      for (final channel in _channels) {
        if (!channel.active()) continue;
        if (!identical(channel, _secrets)) {
          final content = await _syncChannel(channel, files, now);
          if (content != null) writes[channel.file] = content;
          continue;
        }
        try {
          final content = await _syncChannel(channel, files, now);
          if (content != null) writes[channel.file] = content;
          secretsError.value = null;
        } on WrongPassphrase catch (e) {
          secretsError.value = e.toString();
        }
      }
      await transport.writeFiles(writes);
      if (writes.containsKey(secretsFile)) serverHasSecrets.value = true;

      lastSync.value = DateTime.now();
      error.value = null;
      phase.value = SettingsSyncPhase.idle;
    } catch (e, st) {
      logError('SettingsSync', e, st);
      error.value = e.toString();
      phase.value = SettingsSyncPhase.failed;
    } finally {
      _running = false;
      if (_again) {
        _again = false;
        _settings.timer = Timer(_settings.delay, syncNow);
      }
    }
  }
}
