import 'package:get/get.dart';

/// Interop with GetX, which the extension bridge package still uses for its
/// own observables and registry. Nothing else in the app touches GetX.

/// Reads of a GetX observable made between [ForeignProbe.enter] and
/// [ForeignProbe.leave] are recorded instead of going to GetX's own widgets.
class _Probe implements RxInterface<dynamic> {
  @override
  bool get canUpdate => true;

  @override
  void addListener(GetStream<dynamic> rxGetx) {
    final reads = ForeignProbe._reads ??= <GetStream<dynamic>>[];
    if (!reads.contains(rxGetx)) reads.add(rxGetx);
  }

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

typedef ForeignReads = List<GetStream<dynamic>>;

/// Brackets one build. Nothing is allocated unless the build reads a GetX
/// observable.
class ForeignProbe {
  static final _proxies = <RxInterface<dynamic>?>[];
  static final _outer = <ForeignReads?>[];
  static ForeignReads? _reads;

  static void enter() {
    _proxies.add(RxInterface.proxy);
    _outer.add(_reads);
    RxInterface.proxy = _probe;
    _reads = null;
  }

  static ForeignReads? leave() {
    final reads = _reads;
    RxInterface.proxy = _proxies.removeLast();
    _reads = _outer.removeLast();
    return reads;
  }
}

/// The GetX observables one widget's build reads, and the subscriptions that
/// rebuild it when they change.
class ForeignScope {
  final _subs = <GetStream<dynamic>, LightSubscription<dynamic>>{};

  void update(ForeignReads? read, void Function() onChange) {
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
