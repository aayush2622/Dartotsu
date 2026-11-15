import 'package:dartotsu/Api/Services/Trakt/Data/Mapper.dart';
import 'package:dartotsu/Api/Services/Trakt/Sync.dart';
import 'package:dartotsu/Screen/Settings/Sync/Data/SyncModels.dart';
import 'package:flutter_test/flutter_test.dart';

SyncItem item(String status) =>
    SyncItem(id: 'x', ids: const {}, title: 't', status: status, progress: 3);

void main() {
  test('movie and show ids share one integer space without colliding', () {
    final movie = traktSyncKey(TraktKind.movies, 42);
    final show = traktSyncKey(TraktKind.shows, 42);
    expect(movie, isNot(show));
    expect(traktFromSyncKey(movie), (TraktKind.movies, 42));
    expect(traktFromSyncKey(show), (TraktKind.shows, 42));
  });

  test('imdb ids round trip through their number', () {
    expect(imdbNumber('tt0245429'), 245429);
    expect(imdbLabel(245429), 'tt0245429');
    expect(imdbLabel(12345678), 'tt12345678');
    expect(imdbNumber(null), isNull);
  });

  test('a status the target cannot hold folds into the one it can', () {
    final pair = SyncPair(
      main: item('PAUSED'),
      targetId: 'shows/1',
      target: item('CURRENT'),
      state: SyncStatus.synced,
      statusFold: const {'PAUSED': 'CURRENT', 'DROPPED': 'CURRENT'},
    );
    expect(pair.diffs, isNot(contains('status')));
    final plain = SyncPair(
      main: item('PAUSED'),
      targetId: 'shows/1',
      target: item('CURRENT'),
      state: SyncStatus.synced,
    );
    expect(plain.diffs, contains('status'));
  });
}
