import 'dart:async';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:flutter_test/flutter_test.dart';

import 'package:dartotsu/Screen/Player/Engine/StreamFeed.dart';

v.Video _video(String title) => v.Video(title, 'https://x/$title', '1080p');

List<String> _titles(List<v.Video> list) => [for (final e in list) e.title!];

void main() {
  test('batches accumulate in arrival order and finish with all', () async {
    final source = StreamController<List<v.Video>>();
    final feed = StreamFeed.stream(source.stream);

    source.add([_video('a'), _video('b')]);
    await Future<void>.delayed(Duration.zero);
    expect(_titles(feed.videos.value), ['a', 'b']);
    expect(feed.done.value, isFalse);

    source.add([_video('c')]);
    await source.close();

    expect(_titles(await feed.all), ['a', 'b', 'c']);
    expect(feed.done.value, isTrue);
  });

  test('until resolves as soon as the condition holds', () async {
    final source = StreamController<List<v.Video>>();
    final feed = StreamFeed.stream(source.stream);

    final early = feed.until((l) => l.any((e) => e.title == 'b'));
    source.add([_video('a')]);
    await Future<void>.delayed(Duration.zero);
    source.add([_video('b')]);

    expect(_titles(await early), ['a', 'b']);
    expect(feed.done.value, isFalse);
    feed.cancel();
  });

  test('until resolves with what exists when the stream ends first', () async {
    final source = StreamController<List<v.Video>>();
    final feed = StreamFeed.stream(source.stream);

    final waiting = feed.until((l) => l.any((e) => e.title == 'never'));
    source.add([_video('a')]);
    await source.close();

    expect(_titles(await waiting), ['a']);
  });

  test('an error with nothing received fails the feed', () async {
    final source = StreamController<List<v.Video>>();
    final feed = StreamFeed.stream(source.stream);

    source.addError(StateError('boom'));

    await expectLater(feed.all, throwsStateError);
    expect(feed.failure.value, isA<StateError>());
  });

  test('an error after some streams keeps the ones already found', () async {
    final source = StreamController<List<v.Video>>();
    final feed = StreamFeed.stream(source.stream);

    source.add([_video('a')]);
    await Future<void>.delayed(Duration.zero);
    source.addError(StateError('late'));

    expect(_titles(await feed.all), ['a']);
    expect(feed.failure.value, isNull);
  });

  test('cancel stops listening and completes with the current list', () async {
    final source = StreamController<List<v.Video>>();
    final feed = StreamFeed.stream(source.stream);

    source.add([_video('a')]);
    await Future<void>.delayed(Duration.zero);
    feed.cancel();

    expect(_titles(await feed.all), ['a']);
    expect(source.hasListener, isFalse);
  });

  test('ready feeds are finished immediately', () async {
    final feed = StreamFeed.ready([_video('a')]);

    expect(feed.done.value, isTrue);
    expect(_titles(await feed.all), ['a']);
  });

  test('subtitles found on one stream are shared with the others', () async {
    final first = _video('a')
      ..subtitles = [v.Track(file: 'https://x/en.vtt', label: 'English')];
    final feed = StreamFeed.stream(
      Stream.fromIterable([
        [first],
        [_video('b')],
      ]),
    );

    final list = await feed.all;

    expect(list.last.subtitles!.single.label, 'English');
  });
}
