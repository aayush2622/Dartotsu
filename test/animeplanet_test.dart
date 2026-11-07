import 'dart:convert';
import 'dart:io';

import 'package:dartotsu/Api/Services/AnimePlanet/Data/Parser.dart';
import 'package:dartotsu/Screen/Settings/Sync/Data/SyncIdIndex.dart';
import 'package:dartotsu/Screen/Settings/Sync/Data/SyncModels.dart';
import 'package:flutter_test/flutter_test.dart';

String _fixture(String name) =>
    File('test/fixtures/animeplanet_$name.html').readAsStringSync();

void main() {
  test('listing cards carry id, title, cover, format, score and episodes', () {
    final page = parseAnimePlanetListing(_fixture('listing'));
    expect(page.items, isNotEmpty);
    expect(page.pages, greaterThanOrEqualTo(1));
    final first = page.items.first;
    expect(first.id, startsWith('anime/'));
    expect(first.name, isNotEmpty);
    expect(first.cover, startsWith('https://cdn.anime-planet.com/'));
    expect(first.shareLink, 'https://www.anime-planet.com/${first.id}');
    final shippuden = page.items.firstWhere(
      (m) => m.id == 'anime/naruto-shippuden',
    );
    expect(shippuden.format, 'TV');
    expect(shippuden.anime?.totalEpisodes, 500);
    expect(shippuden.meanScore, closeTo(84, 2));
    expect(shippuden.genres, isNotEmpty);
    expect(shippuden.startDate?.year, 2007);
  });

  test('anime detail has title, stats, tags, cast, staff, relations', () {
    final m = parseAnimePlanetDetail(
      _fixture('anime'),
      'anime',
      'cowboy-bebop',
    )!;
    expect(m.id, 'anime/cowboy-bebop');
    expect(m.name, 'Cowboy Bebop');
    expect(m.synonyms, ['カウボーイビバップ']);
    expect(m.description, startsWith('Follow interstellar'));
    expect(m.meanScore, closeTo(87, 1));
    expect(m.anime?.totalEpisodes, 26);
    expect(m.anime?.studio?.name, 'Sunrise');
    expect(m.anime?.season, 'SPRING');
    expect(m.anime?.seasonYear, 1998);
    expect(m.startDate?.year, 1998);
    expect(m.status, 'FINISHED');
    expect(m.genres, contains('Action'));
    expect(m.characters, isNotEmpty);
    expect(m.characters!.first.name, 'Edward');
    expect(
      m.characters!.first.image,
      startsWith('https://cdn.anime-planet.com/'),
    );
    expect(m.characters!.first.voiceActor!.first.name, 'Aoi Tada');
    expect(m.staff, isNotEmpty);
    expect(
      m.relations!.any((r) => r.id == 'anime/cowboy-bebop-the-movie'),
      isTrue,
    );
    expect(m.recommendations, isNotEmpty);
    final extras = animePlanetExtras[m]!;
    expect(extras.rank, 126);
    expect(extras.votes, 56251);
  });

  test('manga detail reads chapters, publisher and open end', () {
    final m = parseAnimePlanetDetail(_fixture('manga'), 'manga', 'berserk')!;
    expect(m.id, 'manga/berserk');
    expect(m.name, 'Berserk');
    expect(m.manga?.totalChapters, 401);
    expect(m.status, 'RELEASING');
    expect(animePlanetExtras[m]!.publisher, contains('Young Animal'));
    expect(m.description, startsWith('Born beneath the gallows tree'));
  });

  test('filters list the type and tag ids', () {
    final facets = parseAnimePlanetFacets(_fixture('facets'));
    expect(facets.types.firstWhere((t) => t.name == 'TV').id, '6');
    expect(facets.tags.firstWhere((t) => t.name == 'Action').id, '211');
  });

  test('page count is the highest page link', () {
    expect(
      parseAnimePlanetPages(
        '<a href="/anime/all?page=2"></a><a href="/anime/all?name=a&page=771"></a>',
      ),
      771,
    );
    expect(
      parseAnimePlanetPages('<a href="/manga/all?sort=x&amp;page=12"></a>'),
      12,
    );
    expect(parseAnimePlanetPages('nothing'), 1);
  });

  test('list pages carry status, progress and score', () {
    final items = parseAnimePlanetList(_fixture('list_anime'));
    final akiba = items.firstWhere((m) => m.name!.startsWith('Akiba'));
    expect(akiba.userStatus, 'CURRENT');
    expect(akiba.userProgress, 10);
    expect(akiba.userScore, 90);
    expect(items.every((m) => m.userStatus != null), isTrue);
    final manga = parseAnimePlanetList(_fixture('list_manga'));
    final elfen = manga.firstWhere((m) => m.name == 'Elfen Lied');
    expect(elfen.id, startsWith('manga/'));
    expect(elfen.userStatus, 'CURRENT');
    expect(elfen.userProgress, 11);
    final azumanga = manga.firstWhere((m) => m.name!.startsWith('Azumanga'));
    expect(azumanga.userProgress, isNull);
  });

  test(
    'your own list pages (no theirList block) still give status and progress',
    () {
      final items = parseAnimePlanetList(_fixture('list_own'));
      expect(items, isNotEmpty);
      expect(items.every((m) => m.userStatus == 'CURRENT'), isTrue);
      expect(items.first.userProgress, isNotNull);
    },
  );

  test('the signed-in user name is read from the page variables', () {
    expect(
      parseAnimePlanetUser('window.AP_VARS = { USER_NAME: "kamenoko" }'),
      'kamenoko',
    );
    expect(parseAnimePlanetUser('{"USER_NAME":"Ladie_burd"}'), 'Ladie_burd');
    expect(parseAnimePlanetUser('window.AP_VARS = {\n }'), isNull);
  });

  test('character page has facts, tags, roles and voice actors', () {
    final e = parseAnimePlanetCharacter(_fixture('character'), 'edward')!;
    expect(e.profile.name, 'Edward');
    expect(e.profile.alternatives, contains('Radical Edward'));
    expect(
      e.profile.facts.any((f) => f.$1 == 'Gender' && f.$2 == 'Female'),
      isTrue,
    );
    expect(
      e.profile.facts.any((f) => f.$1 == 'Blood Type' && f.$2 == 'AB'),
      isTrue,
    );
    expect(e.profile.tags, contains('Hackers'));
    final anime = e.sections.firstWhere((s) => s.title == 'Anime Roles');
    expect(anime.media.first.id, 'anime/cowboy-bebop');
    expect(anime.media.first.relation, 'Main');
    expect(e.voices.any((v) => v.id == 'aoi-tada'), isTrue);
  });

  test('person page has details and work sections', () {
    final e = parseAnimePlanetPerson(
      _fixture('person'),
      'shinichirou-watanabe',
    )!;
    expect(e.profile.name, 'Shinichirou WATANABE');
    expect(e.profile.facts.any((f) => f.$1 == 'Blood Type'), isTrue);
    expect(e.profile.description, contains('best known for directing'));
    final known = e.sections.firstWhere((s) => s.title == 'Known for');
    expect(known.media.first.id, 'anime/cowboy-bebop');
    expect(e.sections.any((s) => s.title == 'Director'), isTrue);
  });

  test('studio page names the studio', () {
    final p = parseAnimePlanetStudio(_fixture('studio'), 'sunrise')!;
    expect(p.name, 'Sunrise');
  });

  test('reviews carry author, score and text', () {
    final reviews = parseAnimePlanetReviews(_fixture('reviews'), 'anime');
    expect(reviews, isNotEmpty);
    expect(reviews.first.user?.name, isNotEmpty);
    expect(reviews.first.body, isNotEmpty);
    expect(reviews.first.score, isNotNull);
  });

  test('ids split into kind and slug', () {
    expect(splitAnimePlanetId('anime/cowboy-bebop'), ('anime', 'cowboy-bebop'));
    expect(splitAnimePlanetId('cowboy-bebop'), isNull);
    expect(splitAnimePlanetId('book/x'), isNull);
  });

  test('entry page gives the numeric id and the session token', () {
    final body = _fixture('entry');
    expect(parseAnimePlanetEntryId(body), 14);
    expect(
      parseAnimePlanetToken(body),
      '95e98760ce00c06c7ec21fd42643505b15836b5e',
    );
    expect(parseAnimePlanetToken("<script>var TOKEN = '';</script>"), isNull);
    expect(parseAnimePlanetEntryId('<html></html>'), isNull);
  });

  test('cards keep the numeric id for list writes', () {
    final first = parseAnimePlanetListing(_fixture('listing')).items.first;
    expect(animePlanetExtras[first]?.entryId, isNotNull);
  });

  test('Fribb slugs become stable ids that expand to the other services', () {
    const raw =
        '[{"anilist_id":185874,"mal_id":60636,"kitsu_id":49444,'
        '"anime-planet_id":"bleach-thousand-year-blood-war-part-iv-the-calamity"}]';
    final key = syncSlugKey(
      'bleach-thousand-year-blood-war-part-iv-the-calamity',
    );
    expect(key, greaterThan(0));
    expect(
      key,
      syncSlugKey('bleach-thousand-year-blood-war-part-iv-the-calamity'),
    );
    final index = SyncIdIndex(compactAnimeIndex(raw));
    final ids = index.expand({SyncKey.animeplanet: key});
    expect(ids[SyncKey.mal], 60636);
    expect(ids[SyncKey.anilist], 185874);
    expect(index.expand({SyncKey.mal: 60636})[SyncKey.animeplanet], key);
    expect(compactAnimeSlugs(raw)['$key'], startsWith('bleach-'));
  });

  test('a private main entry makes the target private when it can be', () {
    SyncItem item({bool priv = false}) => SyncItem(
      id: 'anime/1',
      ids: const {SyncKey.anilist: 1},
      title: 'x',
      status: 'CURRENT',
      progress: 3,
      isPrivate: priv,
    );
    SyncPair pair({required bool privacy, required bool target}) => SyncPair(
      main: item(priv: true),
      targetId: 'anime/1',
      target: item(priv: target),
      state: SyncStatus.synced,
      privacy: privacy,
    );
    expect(pair(privacy: true, target: false).diffs, contains('private'));
    expect(pair(privacy: true, target: true).diffs, isEmpty);
    expect(pair(privacy: false, target: false).diffs, isEmpty);
    expect(SyncItem.fromJson(item(priv: true).toJson()).isPrivate, isTrue);
    expect(item(priv: true).toMedia(anime: true).isListPrivate, isTrue);
  });

  test('custom lists give a title, a path and the kind of media', () {
    final lists = parseAnimePlanetCustomLists(_fixture('custom_lists'));
    expect(lists, isNotEmpty);
    expect(lists.first.title, isNotEmpty);
    expect(lists.first.path, startsWith('/users/'));
    expect(lists.first.kind, anyOf('anime', 'manga'));
  });

  test('a custom list page gives its titles', () {
    final items = parseAnimePlanetCustomList(_fixture('custom_list'));
    expect(items, isNotEmpty);
    expect(items.first.id, startsWith('anime/'));
    expect(items.first.name, isNotEmpty);
    expect(items.first.cover, isNotNull);
  });

  test('won\'t watch is read as its own status', () {
    final body = _fixture('list_anime')
        .replaceFirst(RegExp(r'status[1-5]'), 'status6');
    final items = parseAnimePlanetList(body);
    expect(items.map((m) => m.userStatus), contains('WONT'));
  });

  test(
    'custom list rows give their item ids and the session gives the user id',
    () {
      final body = File('test/fixtures/animeplanet_custom_list.html')
          .readAsStringSync();
      final items = parseAnimePlanetCustomListItems(body);
      expect(items['anime/lord-of-mysteries'], 427073565);
      expect(items['anime/old-neils-mysticism-class'], 427073566);
      final payload = base64Url
          .encode(utf8.encode('{"iss":"ap","sub":8593497}'))
          .replaceAll('=', '');
      expect(parseAnimePlanetSessionUserId('h.$payload.s'), 8593497);
      expect(parseAnimePlanetSessionUserId('nope'), isNull);
    },
  );
}
