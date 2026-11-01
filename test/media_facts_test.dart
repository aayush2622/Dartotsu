import 'package:dartotsu/Core/Services/Model/Anime.dart';
import 'package:dartotsu/Core/Services/Model/Manga.dart';
import 'package:dartotsu/Core/Services/Model/Media.dart';
import 'package:dartotsu/Widgets/Shelf/MediaRows.dart';
import 'package:flutter_test/flutter_test.dart';

Media anime({int? total, int? next, int? progress}) => Media(
  id: '1',
  shareLink: '',
  anime: Anime(totalEpisodes: total, nextAiringEpisode: next),
  userProgress: progress,
);

Media manga({int? total, int? progress}) => Media(
  id: '2',
  shareLink: '',
  manga: Manga(totalChapters: total),
  userProgress: progress,
);

void main() {
  test('airing anime counts only aired episodes as unwatched', () {
    final facts = MediaRowFacts(anime(total: 12, next: 6, progress: 2));
    expect(facts.released, 5);
    expect(facts.unread, 3);
    expect(facts.counts, '5 | 12');
    expect(facts.listed, '2 | 5 | 12');
  });

  test('finished anime uses its total', () {
    final facts = MediaRowFacts(anime(total: 12, progress: 12));
    expect(facts.released, 12);
    expect(facts.unread, isNull);
    expect(facts.counts, '12');
  });

  test('an anime that has not aired yet has nothing released', () {
    final facts = MediaRowFacts(anime(total: 12, next: 1, progress: 0));
    expect(facts.released, isNull);
    expect(facts.unread, isNull);
    expect(facts.counts, '12');
  });

  test('titles that are not on the list get no counter', () {
    expect(MediaRowFacts(anime(total: 12)).unread, isNull);
    expect(MediaRowFacts(manga(total: 80)).unread, isNull);
  });

  test('manga uses the known chapter total', () {
    final facts = MediaRowFacts(manga(total: 80, progress: 75));
    expect(facts.unread, 5);
    expect(facts.progress, closeTo(75 / 80, 1e-9));
    expect(facts.progressText, '75 / 80');
  });

  test('manga with no total and no other source shows tildes', () {
    final facts = MediaRowFacts(manga(progress: 4));
    expect(facts.released, isNull);
    expect(facts.counts, '~');
    expect(facts.listed, '4 | ~');
  });

  test('counts from the service itself are not marked as estimated', () {
    expect(MediaRowFacts(manga(total: 80, progress: 1)).estimated, isFalse);
    expect(MediaRowFacts(anime(total: 12, next: 6)).estimated, isFalse);
    expect(MediaRowFacts(manga(progress: 4)).estimated, isFalse);
  });
}
