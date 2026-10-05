import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Utils/Functions/GetXFunctions.dart';

class Developer {
  final String name;
  final String githubId;
  final String pfp;
  final String? banner;
  final String uri;
  final String role;
  final int contributions;

  const Developer({
    required this.name,
    required this.githubId,
    required this.pfp,
    this.banner,
    required this.uri,
    required this.role,
    this.contributions = 0,
  });

  Developer copyWith({int? contributions}) => Developer(
    name: name,
    githubId: githubId,
    pfp: pfp,
    banner: banner,
    uri: uri,
    role: role,
    contributions: contributions ?? this.contributions,
  );
}

const _repo = 'aayush2622/Dartotsu';

const _excludedContributorIds = [
  '1607653',
  '65916846',
  '164009357',
  '62310815',
];

const _defaultBanners = [
  'https://files.catbox.moe/mdn05t.png',
  'https://files.catbox.moe/zduba9.jpg',
  'https://files.catbox.moe/hqmdfx.png',
  'https://files.catbox.moe/n8pdqc.png',
];

const kHardcodedDevelopers = [
  Developer(
    name: 'aayush262',
    githubId: '99584765',
    pfp:
        'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5144645-vGCFGixZUVSY.png',
    banner:
        'https://s4.anilist.co/file/anilistcdn/user/banner/b5144645-aRu1A0QFBin4.jpg',
    uri: 'https://github.com/aayush2622',
    role: 'Lead Developer',
  ),
  Developer(
    name: 'Rintaro',
    githubId: '75238549',
    pfp: 'https://i.ibb.co/MxWNVHvN/rintaro.jpg',
    banner:
        'https://i.ibb.co/s9J0GSNK/torii-gate-autumn-trees-moewalls-com-7018934.png',
    uri: 'https://github.com/grayankit',
    role: 'Developer',
  ),
  Developer(
    name: 'itsmechinmoy',
    githubId: '167056923',
    pfp: 'https://files.catbox.moe/o45l03.gif',
    banner: 'https://files.catbox.moe/gp3m17.gif',
    uri: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
    role: 'Marketer & Discord Moderator',
  ),
  Developer(
    name: 'Sheby',
    githubId: '83452219',
    pfp:
        'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5724017-EKLuuBbOkt8Z.png',
    banner:
        'https://s4.anilist.co/file/anilistcdn/user/banner/b5724017-owslY4fmWD6L.jpg',
    uri: 'https://anilist.co/user/ASheby/',
    role: 'Discord Moderator',
  ),
  Developer(
    name: 'SunglassJerry',
    githubId: '96760535',
    pfp: 'https://i.ibb.co/5hKgrZnx/9b2983d1dd5c4a6d8988c0ba24ddd6da.png',
    banner: 'https://files.catbox.moe/2uibuz.jpg',
    uri: 'https://youtu.be/SfT4FMkh1-w',
    role: 'Discord Moderator',
  ),
  Developer(
    name: 'Xerus',
    githubId: '74928953',
    pfp: 'https://i.ibb.co/gF6HSFqZ/20250517-100044.png',
    banner: 'https://i.ibb.co/zhy5G1Tv/Walpaper-1.png',
    uri: 'https://sxenon.carrd.co/',
    role: 'Designer',
  ),
  Developer(
    name: 'Th3 A6add0n1',
    githubId: '34588916',
    pfp:
        'https://i.postimg.cc/hG9LcwnT/b2c6de2bef5542189c004789112b21c9-Comfy-UI-116902-transformed.png',
    banner: 'https://i.postimg.cc/qM09rVdX/Abaddon.jpg',
    uri: 'https://github.com/Th3-A6add0n',
    role: 'Donor',
  ),
];

Future<List<Developer>> loadDevelopers() async {
  final fetched = await _fetchContributors();
  final contributionsById = {
    for (final d in fetched) d.githubId: d.contributions,
  };

  final hardcoded = [
    for (final dev in kHardcodedDevelopers)
      dev.copyWith(contributions: contributionsById[dev.githubId]),
  ];

  final hardcodedIds = hardcoded.map((d) => d.githubId).toSet();
  final rest = fetched.where((d) => !hardcodedIds.contains(d.githubId)).toList()
    ..sort((a, b) => b.contributions.compareTo(a.contributions));

  return [...hardcoded, ...rest];
}

Future<List<Developer>> _fetchContributors() async {
  final contributors = <Developer>[];
  final network = find<NetworkManager>();
  var page = 1;

  try {
    while (true) {
      final res = await network.get(
        'https://api.github.com/repos/$_repo/contributors',
        query: {'per_page': '100', 'page': '$page'},
        headers: const {'Accept': 'application/vnd.github.v3+json'},
      );
      if (!res.isOk || res.data is! List) break;

      final items = (res.data as List).cast<Map<String, dynamic>>();
      if (items.isEmpty) break;

      for (final raw in items) {
        final id = raw['id'].toString();
        if (_excludedContributorIds.contains(id)) continue;
        contributors.add(
          Developer(
            name: raw['login'] as String? ?? id,
            githubId: id,
            pfp: raw['avatar_url'] as String? ?? '',
            banner: _defaultBanners[id.hashCode.abs() % _defaultBanners.length],
            uri: raw['html_url'] as String? ?? 'https://github.com',
            role: 'Contributor',
            contributions: (raw['contributions'] as num?)?.toInt() ?? 0,
          ),
        );
      }
      page++;
    }
  } catch (_) {
    return contributors;
  }
  return contributors;
}
