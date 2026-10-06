import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Character.dart';
import '../../../../Core/Services/Model/Social.dart';
import '../../../../Core/Services/Model/Studio.dart';
import 'Mapper.dart';

const anilistUserBriefFields =
    'id name bannerImage isFollowing isFollower avatar { medium large }';

const anilistActivityLikes = 'likes { $anilistUserBriefFields }';

UserBrief mapUserBrief(Map<String, dynamic> json) {
  final avatar = json['avatar'] as Map?;
  return UserBrief(
    id: json['id'].toString(),
    name: json['name'] as String? ?? '',
    avatar: avatar?['large'] as String? ?? avatar?['medium'] as String?,
    banner: json['bannerImage'] as String?,
    isFollowing: json['isFollowing'] == true,
    isFollower: json['isFollower'] == true,
  );
}

List<UserBrief> mapUserBriefs(Object? list) => [
  for (final u in (list as List? ?? const []))
    if (u is Map<String, dynamic>) mapUserBrief(u),
];

SocialUser mapSocialUser(
  Map<String, dynamic> json, {
  int followers = 0,
  int following = 0,
}) {
  final avatar = json['avatar'] as Map?;
  final stats = json['statistics'] as Map?;
  final anime = stats?['anime'] as Map?;
  final manga = stats?['manga'] as Map?;
  int num0(Map? m, String k) => (m?[k] as num?)?.toInt() ?? 0;
  double dbl(Map? m, String k) => (m?[k] as num?)?.toDouble() ?? 0;
  return SocialUser(
    id: json['id'].toString(),
    name: json['name'] as String? ?? '',
    avatar: avatar?['large'] as String? ?? avatar?['medium'] as String?,
    banner: json['bannerImage'] as String?,
    about: json['about'] as String?,
    siteUrl: json['siteUrl'] as String?,
    isFollowing: json['isFollowing'] == true,
    isFollower: json['isFollower'] == true,
    isBlocked: json['isBlocked'] == true,
    followers: followers,
    following: following,
    animeCount: num0(anime, 'count'),
    mangaCount: num0(manga, 'count'),
    episodesWatched: num0(anime, 'episodesWatched'),
    minutesWatched: num0(anime, 'minutesWatched'),
    animeMeanScore: dbl(anime, 'meanScore'),
    chaptersRead: num0(manga, 'chaptersRead'),
    volumesRead: num0(manga, 'volumesRead'),
    mangaMeanScore: dbl(manga, 'meanScore'),
  );
}

SocialFavourites mapSocialFavourites(Map<String, dynamic>? favourites) {
  List<Map<String, dynamic>> nodes(String key) =>
      ((favourites?[key] as Map?)?['nodes'] as List? ?? const [])
          .cast<Map<String, dynamic>>();
  String? image(Map<String, dynamic> n) {
    final i = n['image'] as Map?;
    return i?['large'] as String? ?? i?['medium'] as String?;
  }

  String? name(Map<String, dynamic> n) =>
      (n['name'] as Map?)?['userPreferred'] as String? ??
      (n['name'] as Map?)?['full'] as String?;

  return SocialFavourites(
    anime: [for (final n in nodes('anime')) mapAnilistMedia(n)],
    manga: [for (final n in nodes('manga')) mapAnilistMedia(n)],
    characters: [
      for (final n in nodes('characters'))
        Character(id: n['id'].toString(), name: name(n), image: image(n)),
    ],
    staff: [
      for (final n in nodes('staff'))
        Author(id: n['id'].toString(), name: name(n), image: image(n)),
    ],
    studios: [
      for (final n in nodes('studios'))
        Studio(id: n['id'].toString(), name: n['name'] as String? ?? ''),
    ],
  );
}

Activity? mapActivity(Map<String, dynamic> json) {
  final type = json['__typename'] as String?;
  final kind = switch (type) {
    'TextActivity' => ActivityKind.text,
    'ListActivity' => ActivityKind.list,
    'MessageActivity' => ActivityKind.message,
    _ => null,
  };
  if (kind == null) return null;
  UserBrief? brief(String key) => json[key] is Map<String, dynamic>
      ? mapUserBrief(json[key] as Map<String, dynamic>)
      : null;
  final media = json['media'] is Map<String, dynamic>
      ? mapAnilistMedia(json['media'] as Map<String, dynamic>)
      : null;
  return Activity(
    id: json['id'].toString(),
    kind: kind,
    user: kind == ActivityKind.message ? brief('messenger') : brief('user'),
    recipient: brief('recipient'),
    mediaType: (json['media'] as Map?)?['type'] as String?,
    text: kind == ActivityKind.message
        ? json['message'] as String?
        : json['text'] as String?,
    html: json['html'] as String?,
    status: json['status'] as String?,
    progress: json['progress'] as String?,
    media: media,
    replyCount: (json['replyCount'] as num?)?.toInt() ?? 0,
    likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
    isLiked: json['isLiked'] == true,
    isPrivate: json['isPrivate'] == true,
    isLocked: json['isLocked'] == true,
    isSubscribed: json['isSubscribed'] == true,
    createdAt: (json['createdAt'] as num?)?.toInt() ?? 0,
    siteUrl: json['siteUrl'] as String?,
    likes: mapUserBriefs(json['likes']),
  );
}

ActivityReply mapActivityReply(Map<String, dynamic> json) => ActivityReply(
  id: json['id'].toString(),
  activityId: json['activityId'].toString(),
  user: mapUserBrief(
    (json['user'] as Map<String, dynamic>?) ?? const {'id': 0},
  ),
  text: json['text'] as String? ?? '',
  html: json['html'] as String?,
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  isLiked: json['isLiked'] == true,
  createdAt: (json['createdAt'] as num?)?.toInt() ?? 0,
  likes: mapUserBriefs(json['likes']),
);

const _statCategories = <(String key, String title, String field)>[
  ('formats', 'Format', 'format'),
  ('statuses', 'Status', 'status'),
  ('scores', 'Score', 'score'),
  ('lengths', 'Length', 'length'),
  ('releaseYears', 'Release year', 'releaseYear'),
  ('startYears', 'Start year', 'startYear'),
  ('genres', 'Genre', 'genre'),
  ('tags', 'Tag', 'tag'),
  ('countries', 'Country', 'country'),
  ('voiceActors', 'Voice actor', 'voiceActor'),
  ('staff', 'Staff', 'staff'),
  ('studios', 'Studio', 'studio'),
];

String _entryLabel(Map<String, dynamic> e, String field) {
  final value = e[field];
  if (value is Map) {
    final name = value['name'];
    if (name is Map) {
      return name['userPreferred'] as String? ?? name['full'] as String? ?? '';
    }
    return name?.toString() ?? '';
  }
  return value?.toString() ?? '';
}

String? _entryId(Map<String, dynamic> e, String field) {
  final value = e[field];
  return value is Map ? value['id']?.toString() : null;
}

UserStatSet mapStatSet(Map<String, dynamic>? json) {
  if (json == null) return const UserStatSet();
  final categories = <StatCategory>[];
  for (final (key, title, field) in _statCategories) {
    final rows = (json[key] as List? ?? const []).cast<Map<String, dynamic>>();
    if (rows.isEmpty) continue;
    categories.add(
      StatCategory(key, title, [
        for (final row in rows)
          StatEntry(
            label: _entryLabel(row, field).replaceAll('_', ' '),
            id: _entryId(row, field),
            count: (row['count'] as num?)?.toInt() ?? 0,
            meanScore: (row['meanScore'] as num?)?.toDouble() ?? 0,
            minutesWatched: (row['minutesWatched'] as num?)?.toInt() ?? 0,
            chaptersRead: (row['chaptersRead'] as num?)?.toInt() ?? 0,
          ),
      ]),
    );
  }
  return UserStatSet(
    count: (json['count'] as num?)?.toInt() ?? 0,
    meanScore: (json['meanScore'] as num?)?.toDouble() ?? 0,
    standardDeviation: (json['standardDeviation'] as num?)?.toDouble() ?? 0,
    minutesWatched: (json['minutesWatched'] as num?)?.toInt() ?? 0,
    episodesWatched: (json['episodesWatched'] as num?)?.toInt() ?? 0,
    chaptersRead: (json['chaptersRead'] as num?)?.toInt() ?? 0,
    volumesRead: (json['volumesRead'] as num?)?.toInt() ?? 0,
    categories: categories,
  );
}

String anilistStatFragment() {
  final fields = StringBuffer();
  for (final (key, _, field) in _statCategories) {
    final sub = switch (field) {
      'tag' => 'tag { id name }',
      'voiceActor' => 'voiceActor { id name { userPreferred } }',
      'staff' => 'staff { id name { userPreferred } }',
      'studio' => 'studio { id name }',
      _ => field,
    };
    fields.write('$key { count meanScore minutesWatched chaptersRead $sub }\n');
  }
  return '''
fragment UserStat on UserStatistics {
  count meanScore standardDeviation minutesWatched episodesWatched chaptersRead volumesRead
  $fields
}''';
}
