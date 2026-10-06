import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Character.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Screens/EntityHost.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import 'Mapper.dart';

bool entityHasNext(Object? connection) =>
    ((connection as Map?)?['pageInfo'] as Map?)?['hasNextPage'] == true;

List<Media> mapEntityMedia(Map<String, dynamic>? connection, String roleKey) {
  final edges = (connection?['edges'] as List? ?? const [])
      .cast<Map<String, dynamic>>();
  return [
    for (final e in edges)
      if (e['node'] != null)
        mapAnilistMedia(
          e['node'] as Map<String, dynamic>,
          relation: (e[roleKey] as String?)?.replaceAll('_', ' ').titleCase,
        ),
  ];
}

List<Character> mapStaffCharacters(Map<String, dynamic>? connection) {
  final edges = (connection?['edges'] as List? ?? const [])
      .cast<Map<String, dynamic>>();
  return [
    for (final e in edges)
      if (e['node'] != null)
        _staffCharacter(
          e['node'] as Map<String, dynamic>,
          e['role'] as String?,
          (e['media'] as List? ?? const []).cast<Map<String, dynamic>>(),
        ),
  ];
}

Character _staffCharacter(
  Map<String, dynamic> node,
  String? role,
  List<Map<String, dynamic>> media,
) {
  final image = node['image'] as Map?;
  return Character(
    id: node['id'].toString(),
    name: (node['name'] as Map?)?['userPreferred'] as String?,
    image: image?['large'] as String? ?? image?['medium'] as String?,
    role: role,
    roles: [for (final m in media) mapAnilistMedia(m)],
  );
}

Map<String, List<Author>> voiceActorsByLanguage(
  Map<String, dynamic>? animeConnection,
) {
  final result = <String, Map<String, Author>>{};
  final edges = (animeConnection?['edges'] as List? ?? const [])
      .cast<Map<String, dynamic>>();
  for (final e in edges) {
    final title = (e['node'] as Map?)?['title'] as Map?;
    final mediaName =
        title?['userPreferred'] as String? ??
        title?['romaji'] as String? ??
        title?['english'] as String?;
    for (final v
        in (e['voiceActors'] as List? ?? const [])
            .cast<Map<String, dynamic>>()) {
      final language = v['languageV2'] as String? ?? 'Other';
      final image = v['image'] as Map?;
      result
          .putIfAbsent(language, () => {})
          .putIfAbsent(
            v['id'].toString(),
            () => Author(
              id: v['id'].toString(),
              name: (v['name'] as Map?)?['userPreferred'] as String?,
              image: image?['large'] as String? ?? image?['medium'] as String?,
              role: mediaName,
            ),
          );
    }
  }
  final languages = result.keys.toList()
    ..sort((a, b) {
      if (a == 'Japanese') return -1;
      if (b == 'Japanese') return 1;
      return a.compareTo(b);
    });
  return {for (final l in languages) l: result[l]!.values.toList()};
}

String? anilistDate(Map<String, dynamic>? date) {
  if (date == null) return null;
  final year = (date['year'] as num?)?.toInt();
  final month = (date['month'] as num?)?.toInt();
  final day = (date['day'] as num?)?.toInt();
  if (year == null && month == null && day == null) return null;
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  return [
    if (month != null && month >= 1 && month <= 12) months[month - 1],
    ?day,
    ?year,
  ].join(' ');
}

EntityProfile studioProfile(Map<String, dynamic> json) => EntityProfile(
  id: json['id'].toString(),
  name: json['name'] as String? ?? '',
  subtitle: json['isAnimationStudio'] == true ? 'Animation studio' : 'Studio',
  favourites: (json['favourites'] as num?)?.toInt(),
  isFavourite: json['isFavourite'] == true,
  url: json['siteUrl'] as String?,
);

EntityProfile characterProfile(Map<String, dynamic> json) {
  final name = json['name'] as Map<String, dynamic>? ?? const {};
  final image = json['image'] as Map?;
  final age = json['age']?.toString();
  return EntityProfile(
    id: json['id'].toString(),
    name: name['userPreferred'] as String? ?? name['full'] as String? ?? '',
    nativeName: name['native'] as String?,
    alternatives: _names(name['alternative']),
    spoilerAlternatives: _names(name['alternativeSpoiler']),
    image: image?['large'] as String? ?? image?['medium'] as String?,
    subtitle: 'Character',
    favourites: (json['favourites'] as num?)?.toInt(),
    isFavourite: json['isFavourite'] == true,
    url: json['siteUrl'] as String?,
    description: json['description'] as String?,
    facts: [
      if (json['gender'] != null) ('Gender', json['gender'] as String),
      if (age != null && age.isNotEmpty) ('Age', age),
      if (anilistDate(json['dateOfBirth'] as Map<String, dynamic>?) != null)
        (
          'Birthday',
          anilistDate(json['dateOfBirth'] as Map<String, dynamic>?)!,
        ),
      if (json['bloodType'] != null)
        ('Blood type', json['bloodType'] as String),
    ],
  );
}

EntityProfile staffProfile(Map<String, dynamic> json) {
  final name = json['name'] as Map<String, dynamic>? ?? const {};
  final image = json['image'] as Map?;
  final language = json['languageV2'] as String?;
  final born = anilistDate(json['dateOfBirth'] as Map<String, dynamic>?);
  final died = anilistDate(json['dateOfDeath'] as Map<String, dynamic>?);
  final years = (json['yearsActive'] as List? ?? const []).cast<num>();
  final age = (json['age'] as num?)?.toInt();
  return EntityProfile(
    id: json['id'].toString(),
    name: name['userPreferred'] as String? ?? name['full'] as String? ?? '',
    nativeName: name['native'] as String?,
    alternatives: _names(name['alternative']),
    image: image?['large'] as String? ?? image?['medium'] as String?,
    subtitle: language == null ? 'Staff' : 'Staff · $language',
    favourites: (json['favourites'] as num?)?.toInt(),
    isFavourite: json['isFavourite'] == true,
    url: json['siteUrl'] as String?,
    description: json['description'] as String?,
    tags: _names(json['primaryOccupations']),
    facts: [
      if (json['gender'] != null) ('Gender', json['gender'] as String),
      if (age != null) ('Age', '$age'),
      ?born == null ? null : ('Born', born),
      ?died == null ? null : ('Died', died),
      if (years.isNotEmpty)
        (
          'Years active',
          years.length == 1
              ? '${years.first.toInt()} – present'
              : '${years.first.toInt()} – ${years.last.toInt()}',
        ),
      if (json['homeTown'] != null) ('Hometown', json['homeTown'] as String),
      if (json['bloodType'] != null)
        ('Blood type', json['bloodType'] as String),
      if (language != null) ('Language', language),
    ],
  );
}

List<String> _names(Object? raw) => [
  for (final n in (raw as List? ?? const []))
    if (n != null && '$n'.trim().isNotEmpty) '$n'.trim(),
];
