import 'package:dartotsu/Api/Services/MangaBaka/Data/Mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('maps a recommendation with the fields the endpoint sends', () {
    final media = mapMangaBakaRecommendation({
      'id': 12,
      'titles': [
        {'title': 'Berserk', 'is_primary': true},
      ],
      'cover_image': 'https://cdn.example/12.jpg',
      'media_type': 'manhwa',
      'score': 9.4,
      'published_year': 1989,
      'canonical_url': 'https://mangabaka.org/12',
    });
    expect(media.id, '12');
    expect(media.name, 'Berserk');
    expect(media.cover, 'https://cdn.example/12.jpg');
    expect(media.meanScore, 9);
    expect(media.format, 'MANHWA');
    expect(media.startDate?.year, 1989);
    expect(media.shareLink, 'https://mangabaka.org/12');
    expect(media.isAdult, isFalse);
  });

  test('reads a cover object the way series covers are read', () {
    final media = mapMangaBakaRecommendation({
      'id': 3,
      'cover': {
        'x350': {'x1': 'https://cdn.example/small.jpg'},
      },
    });
    expect(media.cover, 'https://cdn.example/small.jpg');
  });

  test('flags adult content ratings', () {
    final media = mapMangaBakaRecommendation({
      'id': 7,
      'content_rating': 'erotica',
    });
    expect(media.isAdult, isTrue);
    expect(mangaBakaExtras[media]?.contentRating, 'erotica');
  });

  test('keeps working with only an id', () {
    final media = mapMangaBakaRecommendation({'id': 5});
    expect(media.id, '5');
    expect(media.format, 'MANGA');
    expect(media.cover, isNull);
  });
}
