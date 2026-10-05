import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Utils/Functions/GetXFunctions.dart';

class AppFork {
  final String ownerName;
  final String ownerAvatar;
  final String repoName;
  final String uri;
  final int stars;
  final DateTime? pushedAt;

  const AppFork({
    required this.ownerName,
    required this.ownerAvatar,
    required this.repoName,
    required this.uri,
    this.stars = 0,
    this.pushedAt,
  });
}

const _repo = 'aayush2622/Dartotsu';

Future<List<AppFork>> loadForks() async {
  final forks = <AppFork>[];
  final network = find<NetworkManager>();
  var page = 1;

  try {
    while (true) {
      final res = await network.get(
        'https://api.github.com/repos/$_repo/forks',
        query: {'per_page': '100', 'page': '$page', 'sort': 'stargazers'},
        headers: const {'Accept': 'application/vnd.github.v3+json'},
      );
      if (!res.isOk || res.data is! List) break;

      final items = (res.data as List).cast<Map<String, dynamic>>();
      if (items.isEmpty) break;

      for (final raw in items) {
        final owner = raw['owner'] as Map<String, dynamic>?;
        forks.add(
          AppFork(
            ownerName: owner?['login'] as String? ?? 'unknown',
            ownerAvatar: owner?['avatar_url'] as String? ?? '',
            repoName: raw['name'] as String? ?? 'Dartotsu',
            uri: raw['html_url'] as String? ?? 'https://github.com',
            stars: (raw['stargazers_count'] as num?)?.toInt() ?? 0,
            pushedAt: DateTime.tryParse(raw['pushed_at'] as String? ?? ''),
          ),
        );
      }
      page++;
    }
  } catch (_) {
    return forks;
  }

  forks.sort((a, b) => b.stars.compareTo(a.stars));
  return forks;
}
