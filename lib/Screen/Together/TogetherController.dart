import 'dart:async';
import 'dart:math';

import 'package:flutter/widgets.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Logger.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Functions/CopyToClip.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Player/Components/PlayerSeekBar.dart';
import '../Player/Engine/PlayerEngine.dart';
import '../Player/PlayerState.dart';
import 'TogetherBackend.dart';
import 'TogetherLink.dart';
import 'TogetherOpener.dart';
import 'TogetherPrefs.dart';
import 'TogetherStream.dart';

enum TogetherStatus { off, connecting, connected, failed }

enum TogetherRole { host, guest }

class ChatLine {
  final String user;
  final String text;
  final bool mine;
  final bool system;
  final DateTime at = DateTime.now();

  ChatLine(this.user, this.text, {this.mine = false, this.system = false});
}

class TogetherController extends AppController {
  static const _rewind = 3.0;
  static const _fastForward = 3.0;
  static const _slowdown = 1.5;
  static const _slowRate = 0.95;

  PlayerState? _player;
  final playerOpen = false.live;

  TogetherBackend client = TogetherBackends.create(TogetherPref.backend.value);
  final role = TogetherRole.host.live;
  final status = TogetherStatus.off.live;
  final users = <TogetherUser>[].liveList;
  final chat = <ChatLine>[].liveList;
  final unread = 0.live;
  final error = Live<String?>(null);
  final latency = 0.live;
  bool sheetOpen = false;

  StreamSubscription<TogetherEvent>? _events;
  Timer? _poll;
  Timer? _reconnect;
  Timer? _detachTimer;
  Timer? _hostGone;
  Timer? _waitTimer;
  AppLifecycleListener? _lifecycle;
  bool _announced = false;
  final _unshared = <String>{};
  int _attempt = 0;
  bool _fatalError = false;
  bool _wanted = false;
  TogetherPlaystate? _hostPlay;
  DateTime _hostAt = DateTime.now();
  double? _hostRtt;
  DateTime _lastRttShare = DateTime.fromMillisecondsSinceEpoch(0);
  DateTime _selfChange = DateTime.fromMillisecondsSinceEpoch(0);
  DateTime _lastAsk = DateTime.fromMillisecondsSinceEpoch(0);
  bool _fresh = false;
  bool _greeted = false;
  bool _switching = false;
  String? _hostName;
  Disposer? _engineBinding;
  bool _needSync = false;
  bool _slowed = false;
  double _baseRate = 1.0;
  bool? _lastPaused;
  double _lastPos = 0;
  DateTime _lastAt = DateTime.now();
  DateTime _lastSend = DateTime.fromMillisecondsSinceEpoch(0);
  String? _sentFile;
  String _host = '';
  int _port = 0;
  String _room = '';
  String _name = '';
  final _streams = <String, TogetherStream>{};
  TogetherStream? _myStream;
  String? _openedId;
  String? _trackedKey;
  DateTime _lastWant = DateTime.fromMillisecondsSinceEpoch(0);
  DateTime _lastShare = DateTime.fromMillisecondsSinceEpoch(0);

  bool get connected => status.value == TogetherStatus.connected;
  bool get isGuest => role.value == TogetherRole.guest;
  bool get isHost => role.value == TogetherRole.host;

  TogetherUser? get hostUser =>
      users.where((u) => u.isHost && u.name != client.username).firstOrNull;

  TogetherTag? get hostTag => hostUser?.file.tag;

  bool get following => isGuest && connected;

  double get delay => ((_hostRtt ?? client.rtt) + client.rtt) / 2;

  bool get hosting => isHost && connected;
  bool get active => status.value != TogetherStatus.off;
  String get room => _room;
  String get serverLabel => '$_host:$_port';
  PlayerEngine? get _engine => _player?.engine;
  double get _duration => (_engine?.duration.value.inMilliseconds ?? 0) / 1000;
  double get _position => (_engine?.position.value.inMilliseconds ?? 0) / 1000;

  @override
  void onInit() {
    _lifecycle = AppLifecycleListener(onResume: _resumed);
  }

  void _resumed() {
    if (!_wanted || connected || status.value == TogetherStatus.connecting) {
      return;
    }
    _attempt = 0;
    _reconnect?.cancel();
    unawaited(_open());
  }

  void attach(PlayerState player) {
    _detachTimer?.cancel();
    _player = player;
    _switching = false;
    playerOpen.value = true;
    _sentFile = null;
    _trackedKey = null;
    _myStream = null;
    _needSync = isGuest;
    _hostPlay = null;
    _lastPaused = null;
    _lastAt = DateTime.now();
    _lastPos = _position;
    _bindEngine();
    _checkFollow();
  }

  void detach(PlayerState player) {
    if (!identical(_player, player)) return;
    _engineBinding?.dispose();
    _engineBinding = null;
    _resetRate();
    _player = null;
    playerOpen.value = false;
    _sentFile = null;
    _myStream = null;
    if (_switching || !active) return;
    _detachTimer?.cancel();
    _detachTimer = Timer(const Duration(seconds: 3), () {
      if (_player == null && active && !_switching) unawaited(leave());
    });
  }

  static String randomRoom() {
    const letters = 'abcdefghjkmnpqrstuvwxyz23456789';
    final random = Random.secure();
    return 'dartotsu-${List.generate(8, (_) => letters[random.nextInt(letters.length)]).join()}';
  }

  static String resolveName() {
    final saved = TogetherPref.name.value.trim();
    if (saved.isNotEmpty) return saved;
    final account = tryFind<MediaServiceController>()
        ?.currentService
        .value
        .auth
        ?.user
        .value
        ?.name;
    if (account != null && account.trim().isNotEmpty) return account.trim();
    var guest = TogetherPref.guest.value;
    if (guest.isEmpty) {
      guest = 'Guest-${1000 + Random().nextInt(9000)}';
      TogetherPref.guest.value = guest;
    }
    return guest;
  }

  Future<void> connect({
    required String server,
    required String room,
    required String name,
    TogetherRole as = TogetherRole.host,
  }) async {
    final cut = server.lastIndexOf(':');
    _host = cut < 0 ? server : server.substring(0, cut);
    _port = cut < 0 ? 8999 : int.tryParse(server.substring(cut + 1)) ?? 8999;
    role.value = as;
    chat.clear();
    users.clear();
    unread.value = 0;
    _greeted = false;
    _hostName = null;
    _openedId = null;
    _announced = false;
    _unshared.clear();
    _hostGone?.cancel();
    _waitTimer?.cancel();
    _streams.clear();
    _room = room;
    _name = name;
    _wanted = true;
    _attempt = 0;
    await _open();
  }

  Future<void> startHosting() async {
    if (active && isHost) return;
    if (active) await leave();
    await connect(
      server: client.defaultServer,
      room: randomRoom(),
      name: resolveName(),
      as: TogetherRole.host,
    );
    copyToClipboard(
      roomLink(_room, serverLabel, client.defaultServer),
      message: getString.togetherInviteCopied,
    );
  }

  Future<void> join(String room, {String? server}) async {
    if (active) await leave();
    await connect(
      server: server ?? client.defaultServer,
      room: room,
      name: resolveName(),
      as: TogetherRole.guest,
    );
  }

  Future<void> _open() async {
    _fatalError = false;
    status.value = TogetherStatus.connecting;
    error.value = null;
    await _events?.cancel();
    _events = client.events.listen(_onEvent);
    try {
      await client.connect(server: '$_host:$_port', room: _room, name: _name);
    } catch (e) {
      _fail('$e');
    }
  }

  void _fail(String message) {
    error.value = message;
    _poll?.cancel();
    if (_wanted && !_fatalError && _attempt < 8) {
      status.value = TogetherStatus.connecting;
      final delay = Duration(seconds: [2, 4, 8, 15, 15, 15, 15, 15][_attempt]);
      _attempt++;
      _reconnect?.cancel();
      _reconnect = Timer(delay, () {
        if (_wanted) unawaited(_open());
      });
    } else {
      status.value = TogetherStatus.failed;
      snackString(getString.togetherFailed(message), simple: true);
    }
  }

  Future<void> leave() async {
    final closing = isHost && connected;
    if (closing) {
      client.sendData('X:close');
      await Future<void>.delayed(const Duration(milliseconds: 250));
    }
    _wanted = false;
    _reconnect?.cancel();
    _detachTimer?.cancel();
    _hostGone?.cancel();
    _waitTimer?.cancel();
    _poll?.cancel();
    await _events?.cancel();
    _events = null;
    await client.close();
    status.value = TogetherStatus.off;
    users.clear();
    _sentFile = null;
    _openedId = null;
    _myStream = null;
    _hostPlay = null;
    _hostRtt = null;
    _hostName = null;
    chat.clear();
    unread.value = 0;
    _resetRate();
  }

  @override
  void onClose() {
    _wanted = false;
    _lifecycle?.dispose();
    _detachTimer?.cancel();
    _hostGone?.cancel();
    _waitTimer?.cancel();
    _reconnect?.cancel();
    _poll?.cancel();
    unawaited(_events?.cancel());
    unawaited(client.close());
  }

  void sendChat(String text) {
    final message = text.trim();
    if (message.isEmpty || !connected) return;
    client.chat(message);
  }

  String? get currentFileName {
    final player = _player;
    if (player == null) return null;
    final media = player.request.media?.mainName;
    final item = player.item.title;
    return media == null || media.isEmpty ? item : '$media - $item';
  }

  TogetherStream? _streamOf(PlayerState player) {
    final item = player.item;
    final video = item.hasFixedStreams ? item.fixed.first : player.video;
    if (video == null) return null;
    return TogetherStream.from(currentFileName ?? item.title, video);
  }

  bool get canShare {
    final player = _player;
    if (player == null) return false;
    final item = player.item;
    final url = item.hasFixedStreams ? item.fixed.first.url : player.video?.url;
    return url != null && TogetherStream.shareable(url);
  }

  void openHost() {
    final id = hostTag?.id;
    final stream = id == null ? null : _streams[id];
    if (stream == null) {
      _want(force: true);
      return;
    }
    _openedId = stream.id;
    unawaited(_follow(stream));
  }

  void _want({bool force = false}) {
    final id = hostTag?.id;
    final now = DateTime.now();
    if (id == null || _unshared.contains(id)) return;
    if (!force && now.difference(_lastWant) < const Duration(seconds: 3)) {
      return;
    }
    _lastWant = now;
    client.sendData('W:$id');
  }

  void _share({bool force = false}) {
    final stream = _myStream;
    if (!isHost || stream == null) return;
    final now = DateTime.now();
    if (!force && now.difference(_lastShare) < const Duration(seconds: 2)) {
      return;
    }
    _lastShare = now;
    client.sendData('S:${stream.encode()}');
  }

  void _checkFollow() {
    if (!following) return;
    final tag = hostTag;
    if (tag == null) return;
    if (_player != null && _myStream?.id == tag.id) {
      _openedId = tag.id;
      return;
    }
    final stream = _streams[tag.id];
    if (stream == null) {
      _want();
      return;
    }
    if (_openedId == tag.id && _player != null) return;
    _openedId = tag.id;
    unawaited(_follow(stream));
  }

  Future<void> _follow(TogetherStream stream) async {
    final player = _player;
    if (player != null) {
      if (_myStream?.id == stream.id) return;
      _switching = true;
      player.pop();
      await Future<void>.delayed(const Duration(milliseconds: 450));
    }
    final failure = await openTogetherStream(stream);
    _switching = false;
    if (failure != null) {
      logger('Together follow failed: $failure', tag: 'TOGETHER');
      snackString(failure, simple: true);
    }
  }

  void _onEvent(TogetherEvent event) {
    switch (event) {
      case TogetherConnected():
        _attempt = 0;
        error.value = null;
        status.value = TogetherStatus.connected;
        if (!_announced) {
          _announced = true;
          _system(getString.togetherConnectedTo(_room));
        }
        _startPoll();
      case TogetherDisconnected(:final reason):
        logger('Together disconnected: $reason', tag: 'TOGETHER');
        if (_wanted) _fail(reason ?? getString.togetherConnectionLost);
      case TogetherPlaystate():
        _onPlaystate(event);
      case TogetherUsers(:final users):
        this.users.value = users;
        final host = hostUser;
        if (host != null) {
          _hostName = host.name;
          _hostGone?.cancel();
          _waitTimer?.cancel();
        }
        if (isGuest && !_greeted) {
          _greeted = true;
          if (host == null) {
            _waitTimer?.cancel();
            _waitTimer = Timer(const Duration(seconds: 8), () {
              if (isGuest && connected && _player == null && hostUser == null) {
                snackString(getString.togetherWaitingHost, simple: true);
              }
            });
          }
        }
        _checkFollow();
      case TogetherUserEvent():
        _onUserEvent(event);
      case TogetherReady():
        break;
      case TogetherChat():
        final mine = event.user == client.username;
        chat.add(ChatLine(event.user, event.message, mine: mine));
        if (!sheetOpen && !mine) {
          unread.value++;
          snackString('${event.user}: ${event.message}', simple: true);
        }
      case TogetherData(:final user, :final payload):
        final fromHost = _fromHost(user);
        if (payload.startsWith('S:')) {
          final stream = fromHost
              ? TogetherStream.decode(payload.substring(2))
              : null;
          if (stream != null) {
            _streams[stream.id] = stream;
            _checkFollow();
          }
        } else if (payload.startsWith('T:')) {
          final ms = int.tryParse(payload.substring(2));
          if (ms != null && user != client.username) _hostRtt = ms / 1000;
        } else if (payload.startsWith('W:')) {
          if (isHost && _player != null && _myStream == null) {
            client.sendData('N:${payload.substring(2)}');
          } else {
            _share();
          }
        } else if (payload.startsWith('N:')) {
          final id = payload.substring(2);
          if (isGuest && _unshared.add(id)) {
            snackString(getString.togetherFollowFailed, simple: true);
          }
        } else if (payload == 'X:close') {
          if (isGuest && fromHost) _closeFromHost();
        } else if (payload.startsWith('R:') && isHost) {
          final text = payload == 'R:pause'
              ? getString.togetherWantsPause(user)
              : getString.togetherWantsResume(user);
          snackString(text, simple: true);
        }
      case TogetherError():
        _fatalError = true;
        error.value = event.message;
        _system(event.message);
    }
  }

  bool _fromHost(String user) {
    if (user == client.username) return false;
    final host = hostUser?.name ?? _hostName;
    return host == null || host == user;
  }

  void _onUserEvent(TogetherUserEvent event) {
    if (event.name == client.username) return;
    if (event.joined) {
      if (isGuest && event.name == _hostName) _hostGone?.cancel();
      _share(force: true);
      _system(getString.togetherJoined(event.name));
      if (!sheetOpen) {
        snackString(getString.togetherJoined(event.name), simple: true);
      }
    } else if (event.left) {
      if (isGuest && event.name == _hostName) {
        _hostGone?.cancel();
        _hostGone = Timer(const Duration(seconds: 12), () {
          if (isGuest && hostUser == null) _closeFromHost();
        });
        return;
      }
      _system(getString.togetherLeft(event.name));
      if (!sheetOpen) {
        snackString(getString.togetherLeft(event.name), simple: true);
      }
    }
  }

  void _closeFromHost() {
    if (!active || isHost) return;
    snackString(getString.togetherHostClosed, simple: true);
    final player = _player;
    _switching = true;
    player?.pop();
    unawaited(leave().whenComplete(() => _switching = false));
  }

  void _system(String text) => chat.add(ChatLine('', text, system: true));

  void _startPoll() {
    _poll?.cancel();
    _lastPaused = null;
    _lastAt = DateTime.now();
    _lastPos = _position;
    _poll = Timer.periodic(const Duration(milliseconds: 100), (_) => _tick());
  }

  void _tick() {
    if (!connected) return;
    final player = _player;
    final engine = _engine;
    final duration = _duration;
    final now = DateTime.now();
    final key = player?.itemKey;
    final switching =
        player != null && (player.loading.value || key != _trackedKey);
    if (switching) {
      _trackedKey = player.loading.value ? _trackedKey : key;
      _myStream = null;
      _sentFile = null;
      _needSync = isGuest;
      _lastPaused = null;
      _lastPos = _position;
      _lastAt = now;
    }
    latency.value = (client.rtt * 1000).round();
    if (engine == null || duration <= 0 || switching) {
      _idle(now);
      return;
    }
    final name = currentFileName;
    _myStream ??= _streamOf(player!);
    final stream = _myStream;
    final tag = TogetherTag(
      host: isHost,
      id: stream?.id ?? TogetherStream.idOf(player!.itemKey),
    );
    final announced = '$name${tag.text}';
    if (name != null && _sentFile != announced) {
      _sentFile = announced;
      client.setFile(name, duration, tag: tag);
      _share(force: true);
    }
    final pos = _position;
    final paused = !engine.playing.value;
    if (!isHost) {
      if (now.difference(_lastSend) >= const Duration(seconds: 1)) {
        client.sendState(pos, _hostPlay?.paused ?? paused);
        _lastSend = now;
      }
      _lastPaused = paused;
      _lastPos = pos;
      _lastAt = now;
      _syncGuest();
      return;
    }
    if (now.difference(_lastRttShare) >= const Duration(seconds: 10) &&
        client.rtt > 0) {
      _lastRttShare = now;
      client.sendData('T:${(client.rtt * 1000).round()}');
    }
    final dt = now.difference(_lastAt).inMilliseconds / 1000;
    final expected = _lastPos + (paused ? 0 : dt * engine.rate.value);
    if (_lastPaused != null && (pos - expected).abs() > 1.5) {
      client.sendState(pos, paused, seek: true, local: true);
      _lastSend = now;
    } else if (_lastPaused != null && paused != _lastPaused) {
      _sendPlaystate();
    }
    _lastPaused = paused;
    _lastPos = pos;
    _lastAt = now;
    if (now.difference(_lastSend) >= const Duration(seconds: 1)) {
      client.sendState(pos, paused);
      _lastSend = now;
    }
  }

  void _idle(DateTime now) {
    if (now.difference(_lastSend) < const Duration(seconds: 1)) return;
    _lastSend = now;
    final host = _hostPlay;
    if (_player == null) {
      client.sendKeepAlive();
    } else if (isHost) {
      client.sendState(_lastPos, true);
    } else if (host != null) {
      final elapsed = host.paused
          ? 0.0
          : DateTime.now().difference(_hostAt).inMilliseconds / 1000;
      client.sendState(host.position + elapsed, host.paused);
    } else {
      client.sendKeepAlive();
    }
  }

  void _sendPlaystate() {
    final engine = _engine;
    if (!connected || !isHost || engine == null || _duration <= 0) return;
    if (_player?.loading.value ?? true) return;
    final paused = !engine.playing.value;
    client.sendState(_position, paused, local: true);
    _lastSend = DateTime.now();
    _lastPaused = paused;
  }

  void _bindEngine() {
    _engineBinding?.dispose();
    final engine = _engine;
    if (engine == null) return;
    _engineBinding = onChange(engine.playing, (playing) {
      if (isHost) return _sendPlaystate();
      final now = DateTime.now();
      if (!connected ||
          now.difference(_selfChange) < const Duration(milliseconds: 800) ||
          now.difference(_lastAsk) < const Duration(seconds: 1)) {
        return;
      }
      _lastAsk = now;
      client.sendData(playing ? 'R:resume' : 'R:pause');
    });
  }

  void _onPlaystate(TogetherPlaystate s) {
    if (isHost) return;
    _hostPlay = s;
    _hostAt = DateTime.now();
    _fresh = true;
    _syncGuest();
  }

  void _syncGuest() {
    final s = _hostPlay;
    final engine = _engine;
    if (s == null || engine == null || _duration <= 0) return;
    if (_player?.loading.value ?? false) return;
    final mine = _myStream?.id;
    final theirs = hostTag?.id;
    if (theirs != null && mine != theirs) return;
    final elapsed = s.paused
        ? 0.0
        : DateTime.now().difference(_hostAt).inMilliseconds / 1000;
    final target = s.position + (s.paused ? 0 : elapsed + delay);
    final diff = _position - target;
    final fresh = _fresh;
    _fresh = false;
    final who = s.setBy;
    final shows = fresh && who != null && who != client.username;
    final playing = engine.playing.value;
    if (s.paused && playing) {
      _selfChange = DateTime.now();
      unawaited(engine.pause());
      if (shows) snackString(getString.togetherPaused(who), simple: true);
    } else if (!s.paused && !playing) {
      _selfChange = DateTime.now();
      unawaited(engine.play());
      if (shows) snackString(getString.togetherResumed(who), simple: true);
    }
    final first = _needSync;
    _needSync = false;
    final seek = fresh && s.doSeek;
    final resumed = fresh && !s.paused && !playing && diff.abs() > 0.25;
    final settled = s.paused && diff.abs() > 0.5;
    if (seek ||
        first ||
        resumed ||
        settled ||
        diff < -_fastForward ||
        diff > _rewind) {
      unawaited(
        engine.seek(Duration(milliseconds: (max(0, target) * 1000).round())),
      );
      _resetRate();
      if (shows && seek) {
        snackString(
          getString.togetherSeeked(who, formatClock(target.round())),
          simple: true,
        );
      }
    } else if (!s.paused && diff > _slowdown && !_slowed) {
      _slowed = true;
      _baseRate = engine.rate.value;
      unawaited(engine.setRate(_baseRate * _slowRate));
    } else if (_slowed && diff < 0.1) {
      _resetRate();
    }
  }

  void _resetRate() {
    if (!_slowed) return;
    _slowed = false;
    unawaited(_engine?.setRate(_baseRate));
  }
}
