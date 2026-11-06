import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import 'PlayRequest.dart';

class StreamFeed {
  final videos = Live<List<v.Video>>(const []);
  final done = Live<bool>(false);
  final failure = Live<Object?>(null);

  final _complete = Completer<List<v.Video>>();
  StreamSubscription<List<v.Video>>? _subscription;
  final _waiters = <_Waiter>[];

  StreamFeed.ready(List<v.Video> list) {
    shareSubtitles(list);
    videos.value = list;
    _finish();
  }

  StreamFeed.stream(Stream<List<v.Video>> batches) {
    _complete.future.ignore();
    _subscription = batches.listen(
      _add,
      onError: (Object e, StackTrace st) {
        logger(
          'Streams failed: $e\n$st',
          logLevel: LogLevel.error,
          tag: 'STREAMS',
        );
        if (videos.value.isEmpty) failure.value = e;
        _finish();
      },
      onDone: _finish,
      cancelOnError: true,
    );
  }

  factory StreamFeed.of(Source source, DEpisode episode) =>
      StreamFeed.stream(source.methods.getVideoStream(episode));

  Future<List<v.Video>> get all => _complete.future;

  Future<List<v.Video>> until(bool Function(List<v.Video> list) ready) {
    if (done.value) return all;
    if (ready(videos.value)) return Future.value(videos.value);
    final waiter = _Waiter(ready);
    _waiters.add(waiter);
    return waiter.completer.future;
  }

  void cancel() {
    unawaited(_subscription?.cancel());
    _subscription = null;
    _finish();
  }

  void _add(List<v.Video> batch) {
    if (batch.isEmpty) return;
    final next = [...videos.value, ...batch];
    shareSubtitles(next);
    videos.value = next;
    for (final waiter in _waiters.toList()) {
      if (waiter.ready(next)) {
        _waiters.remove(waiter);
        waiter.completer.complete(next);
      }
    }
  }

  void _finish() {
    if (done.value) return;
    done.value = true;
    final list = videos.value;
    final error = failure.value;
    for (final waiter in _waiters) {
      if (error != null) {
        waiter.completer.completeError(error);
      } else {
        waiter.completer.complete(list);
      }
    }
    _waiters.clear();
    if (error != null) {
      _complete.completeError(error);
    } else {
      _complete.complete(list);
    }
  }
}

class _Waiter {
  final bool Function(List<v.Video> list) ready;
  final completer = Completer<List<v.Video>>();

  _Waiter(this.ready);
}
