import '../NetworkManager/NetworkManager.dart';
import '../Preferences/PrefManager.dart';
import '../State/State.dart';
import 'GithubAuth.dart';

class GistTransport {
  static const settingsFile = 'dartotsu-settings.json';
  static const description = 'Dartotsu settings';
  static const _api = 'https://api.github.com';
  static const _placeholder = '{"app":"Dartotsu","entries":{}}';

  Map<String, String> get _headers => {
    ...githubApiHeaders,
    'Authorization': 'Bearer ${PrefName.githubToken.value}',
  };

  NetworkManager get _network => find<NetworkManager>();

  void _check(NetworkResponse<dynamic> res) {
    if (res.statusCode >= 200 && res.statusCode < 300) return;
    if (res.statusCode == 401) {
      throw Exception('GitHub sign-in expired, sign in again');
    }
    if (res.statusCode == 403 || res.statusCode == 404) {
      throw Exception(
        'GitHub refused the request, the token needs the gist scope',
      );
    }
    throw Exception('GitHub answered ${res.statusCode}');
  }

  Future<String?> _find() async {
    final known = PrefName.settingsSyncGist.value;
    if (known.isNotEmpty) return known;
    for (var page = 1; page <= 5; page++) {
      final res = await _network.get(
        '$_api/gists',
        query: {'per_page': '100', 'page': '$page'},
        headers: _headers,
      );
      _check(res);
      final list = res.data is List ? res.data as List : const [];
      for (final gist in list.cast<Map>()) {
        final files = gist['files'] as Map? ?? const {};
        if (gist['description'] == description &&
            files.containsKey(settingsFile)) {
          return PrefName.settingsSyncGist.value = gist['id'] as String;
        }
      }
      if (list.length < 100) break;
    }
    return null;
  }

  Future<Map<String, String>> readAll() async {
    final id = await _find();
    if (id == null) return {};
    final res = await _network.get('$_api/gists/$id', headers: _headers);
    if (res.statusCode == 404) {
      PrefName.settingsSyncGist.value = '';
      return {};
    }
    _check(res);
    final files = ((res.data as Map)['files'] as Map?) ?? const {};
    final result = <String, String>{};
    for (final e in files.entries) {
      final file = e.value;
      if (file is! Map) continue;
      if (file['truncated'] == true) {
        final raw = await _network.get(
          file['raw_url'] as String,
          headers: _headers,
          decodeJson: false,
        );
        _check(raw);
        result['${e.key}'] = raw.data as String;
      } else if (file['content'] is String) {
        result['${e.key}'] = file['content'] as String;
      }
    }
    return result;
  }

  Future<void> writeFiles(Map<String, String?> contents) async {
    if (contents.isEmpty) return;
    final files = {
      for (final e in contents.entries)
        e.key: e.value == null ? null : {'content': e.value},
    };
    final id = await _find();
    if (id != null) {
      final res = await _network.patch(
        '$_api/gists/$id',
        data: {'files': files},
        headers: _headers,
      );
      if (res.statusCode != 404) {
        _check(res);
        return;
      }
      PrefName.settingsSyncGist.value = '';
    }
    final res = await _network.post(
      '$_api/gists',
      data: {
        'description': description,
        'public': false,
        'files': {
          settingsFile: {'content': _placeholder},
          ...files..removeWhere((_, v) => v == null),
        },
      },
      headers: _headers,
    );
    _check(res);
    PrefName.settingsSyncGist.value = (res.data as Map)['id'] as String;
  }
}
