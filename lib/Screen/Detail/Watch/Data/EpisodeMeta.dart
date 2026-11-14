class EpisodeMeta {
  final String number;
  String? title;
  String? description;
  String? thumbnail;
  bool? filler;
  bool? recap;
  DateTime? aired;
  int? runtime;
  double? rating;

  EpisodeMeta({
    required this.number,
    this.title,
    this.description,
    this.thumbnail,
    this.filler,
    this.recap,
    this.aired,
    this.runtime,
    this.rating,
  });
}

String episodeKey(Object? raw) {
  final value = double.tryParse('$raw');
  if (value == null) return '$raw';
  return value == value.truncateToDouble()
      ? value.toInt().toString()
      : value.toString();
}

class MetaIds {
  int? anilist;
  int? mal;
  int? kitsu;
  int? simkl;
  int? mangabaka;
  int? mangaupdates;
  int? trakt;
  int? tvdb;
  int? tmdb;
  String? imdb;
  final bool anime;

  MetaIds({
    this.anilist,
    this.mal,
    this.kitsu,
    this.simkl,
    this.mangabaka,
    this.mangaupdates,
    this.trakt,
    this.tvdb,
    this.tmdb,
    this.imdb,
    this.anime = true,
  });

  bool get known =>
      anilist != null || mal != null || tvdb != null || imdb != null || trakt != null;

  int? operator [](String key) => switch (key) {
    'anilist' => anilist,
    'mal' => mal,
    'kitsu' => kitsu,
    'simkl' => simkl,
    'mangabaka' => mangabaka,
    'mangaupdates' => mangaupdates,
    'trakt' => trakt,
    'tvdb' => tvdb,
    'tmdb' => tmdb,
    _ => null,
  };

  void operator []=(String key, int? value) {
    switch (key) {
      case 'anilist':
        anilist = value;
      case 'mal':
        mal = value;
      case 'kitsu':
        kitsu = value;
      case 'simkl':
        simkl = value;
      case 'mangabaka':
        mangabaka = value;
      case 'mangaupdates':
        mangaupdates = value;
      case 'trakt':
        trakt = value;
      case 'tvdb':
        tvdb = value;
      case 'tmdb':
        tmdb = value;
    }
  }

  static const syncKeys = [
    'anilist',
    'mal',
    'kitsu',
    'simkl',
    'mangabaka',
    'mangaupdates',
    'trakt',
  ];

  Map<String, int> syncIds() => {
    for (final k in syncKeys)
      if (this[k] != null) k: this[k]!,
  };

  void merge(Map<String, int> ids) {
    for (final k in syncKeys) {
      final v = ids[k];
      if (v != null && this[k] == null) this[k] = v;
    }
  }

  MetaIds copy() => MetaIds(
    anilist: anilist,
    mal: mal,
    kitsu: kitsu,
    simkl: simkl,
    mangabaka: mangabaka,
    mangaupdates: mangaupdates,
    trakt: trakt,
    tvdb: tvdb,
    tmdb: tmdb,
    imdb: imdb,
    anime: anime,
  );

  Map<String, Object?> toJson() => {
    'anilist': anilist,
    'mal': mal,
    'kitsu': kitsu,
    'simkl': simkl,
    if (mangabaka != null) 'mangabaka': mangabaka,
    if (mangaupdates != null) 'mangaupdates': mangaupdates,
    if (trakt != null) 'trakt': trakt,
    if (tvdb != null) 'tvdb': tvdb,
    if (tmdb != null) 'tmdb': tmdb,
    if (imdb != null) 'imdb': imdb,
  };

  factory MetaIds.fromJson(Map<String, dynamic> json, {bool anime = true}) =>
      MetaIds(
        anilist: (json['anilist'] as num?)?.toInt(),
        mal: (json['mal'] as num?)?.toInt(),
        kitsu: (json['kitsu'] as num?)?.toInt(),
        simkl: (json['simkl'] as num?)?.toInt(),
        mangabaka: (json['mangabaka'] as num?)?.toInt(),
        mangaupdates: (json['mangaupdates'] as num?)?.toInt(),
        trakt: (json['trakt'] as num?)?.toInt(),
        tvdb: (json['tvdb'] as num?)?.toInt(),
        tmdb: (json['tmdb'] as num?)?.toInt(),
        imdb: json['imdb'] as String?,
        anime: anime,
      );
}

abstract class EpisodeMetaProvider {
  String get id;
  String get name;
  bool supports(MetaIds ids);
  Future<Map<String, EpisodeMeta>> fetch(MetaIds ids);
}
