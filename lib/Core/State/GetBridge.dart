import 'package:get/get.dart';

/// Interop with GetX, which the extension bridge package still uses for its
/// own observables and registry. Nothing else in the app touches GetX.

/// Reads of a GetX observable made while a [ForeignScope] is active are
/// recorded here instead of going to GetX's own widgets.
class _Probe implements RxInterface<dynamic> {
  static ForeignScope? active;

  @override
  bool get canUpdate => true;

  @override
  void addListener(GetStream<dynamic> rxGetx) => active?._add(rxGetx);

  @override
  void close() {}

  @override
  LightSubscription<dynamic> listen(
    void Function(dynamic event) onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) => throw UnsupportedError('probe has no stream');
}

final _probe = _Probe();

/// Tracks the GetX observables one build reads and rebuilds when they change.
class ForeignScope {
  Set<GetStream<dynamic>>? _read;
  final _subs = <GetStream<dynamic>, LightSubscription<dynamic>>{};
  RxInterface<dynamic>? _prevProxy;
  ForeignScope? _prevActive;

  void _add(GetStream<dynamic> stream) => (_read ??= {}).add(stream);

  void begin() {
    _read = null;
    _prevProxy = RxInterface.proxy;
    _prevActive = _Probe.active;
    RxInterface.proxy = _probe;
    _Probe.active = this;
  }

  void end(void Function() onChange) {
    RxInterface.proxy = _prevProxy;
    _Probe.active = _prevActive;
    final read = _read;
    if (read == null) {
      if (_subs.isNotEmpty) dispose();
      return;
    }
    _subs.removeWhere((stream, sub) {
      if (read.contains(stream)) return false;
      sub.cancel();
      return true;
    });
    for (final stream in read) {
      _subs.putIfAbsent(
        stream,
        () => stream.listen((_) => onChange(), cancelOnError: false),
      );
    }
  }

  void dispose() {
    for (final sub in _subs.values) {
      sub.cancel();
    }
    _subs.clear();
  }
}

T? foreignFind<T>({String? tag}) =>
    Get.isRegistered<T>(tag: tag) ? Get.find<T>(tag: tag) : null;
