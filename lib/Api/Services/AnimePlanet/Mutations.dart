import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Parser.dart';
import 'Queries.dart';

class AnimePlanetListChoice {
  final int id;
  final String name;
  final bool onList;

  const AnimePlanetListChoice(this.id, this.name, this.onList);
}

class AnimePlanetMutations extends Mutations {
  final AnimePlanetClient client;
  final AnimePlanetQueries queries;

  AnimePlanetMutations(this.client, this.queries);

  String? _token;

  static int _statusId(String? status) => switch (status) {
    'COMPLETED' => 1,
    'CURRENT' || 'REPEATING' => 2,
    'DROPPED' => 3,
    'PLANNING' => 4,
    'PAUSED' => 5,
    'WONT' => 6,
    _ => 2,
  };

  static String _stars(int score) {
    final stars = (score / 20 * 2).round() / 2;
    return stars == stars.roundToDouble() ? '${stars.round()}' : '$stars';
  }

  Future<String> _loadToken() async {
    final body = await client.page('/', cache: Duration.zero);
    final token = parseAnimePlanetToken(body);
    if (token == null) {
      throw AnimePlanetException('Not signed in to Anime-Planet');
    }
    return _token = token;
  }

  Future<(String, int)> _target(Media media) async {
    final ref = splitAnimePlanetId(media.id);
    if (ref == null) throw AnimePlanetException('Unknown title');
    var id = animePlanetExtras[media]?.entryId;
    if (id == null) {
      final body = await client.page('/${ref.$1}/${ref.$2}');
      id = parseAnimePlanetEntryId(body);
      if (id == null) throw AnimePlanetException('Title not found');
      (animePlanetExtras[media] ??= AnimePlanetExtras()).entryId = id;
    }
    return (ref.$1, id);
  }

  Future<Map<String, dynamic>> _call(String path) async {
    Future<Map<String, dynamic>> send() async {
      final json = await client.action('$path/${_token ?? await _loadToken()}');
      if (json['error'] != null) {
        throw AnimePlanetException('${json['error']}');
      }
      return json;
    }

    try {
      return await send();
    } on AnimePlanetException catch (e) {
      if (e.status != null && e.status! >= 500) rethrow;
      _token = null;
      return send();
    }
  }

  void _done() {
    queries.invalidateLibrary();
    tryFind<RefreshController>()?.all();
  }

  final _choices = <String, List<AnimePlanetListChoice>>{};

  Future<List<AnimePlanetListChoice>> customListChoices(Media media) async {
    final (kind, id) = await _target(media);
    final raw = await client.jsonList(
      '/api/customlists/get_for_user/$kind/$id',
    );
    final out = [
      for (final e in raw)
        if (e is Map)
          AnimePlanetListChoice(
            int.tryParse('${e['list_id']}') ?? 0,
            '${e['list_name']}',
            e['is_on_list'] == true ||
                e['is_on_list'] == 1 ||
                e['is_on_list'] == '1',
          ),
    ];
    _choices[media.id] = out;
    return out;
  }

  int _userId() {
    final cookies = find<NetworkManager>().cookieManager.getValidCookies(
      Uri.parse('https://www.anime-planet.com/'),
    );
    for (final c in cookies) {
      if (c.name != 'patreon') continue;
      final id = parseAnimePlanetSessionUserId(c.value);
      if (id != null) return id;
    }
    throw AnimePlanetException('Could not read the account id');
  }

  Future<int> _listItemId(AnimePlanetListChoice list, Media media) async {
    final base = '/users/${Uri.encodeComponent(queries.username())}/lists';
    final index = await client.page(base, cache: Duration.zero);
    final path = parseAnimePlanetCustomLists(index)
        .map((l) => l.path)
        .firstWhere(
          (p) => p.endsWith('-${list.id}'),
          orElse: () => throw AnimePlanetException('List not found'),
        );
    for (var page = 1; page <= 20; page++) {
      final body = await client.page(
        path,
        query: page > 1 ? {'page': '$page'} : null,
        cache: Duration.zero,
      );
      final item = parseAnimePlanetCustomListItems(body)[media.id];
      if (item != null) return item;
      if (page >= parseAnimePlanetPages(body)) break;
    }
    throw AnimePlanetException('Not found on ${list.name}');
  }

  Future<void> _removeFromLists(Media media, Set<String> names) async {
    final removals = [
      for (final c in _choices[media.id] ?? const <AnimePlanetListChoice>[])
        if (c.onList && !names.contains(c.name)) c,
    ];
    if (removals.isEmpty) return;
    final usr = _userId();
    for (final list in removals) {
      final item = await _listItemId(list, media);
      final token = _token ?? await _loadToken();
      final answer = await client.postForm('/api/customlists/removeitem', {
        'list_id': '${list.id}',
        'id': '$item',
        'usr': '$usr',
        'token': token,
      });
      final low = answer.toLowerCase();
      if (low.contains('error') ||
          low.contains('forbidden') ||
          low.contains('fail')) {
        throw AnimePlanetException(
          answer.length > 80 ? 'Could not remove from ${list.name}' : answer,
        );
      }
    }
  }

  Future<void> _addToLists(Media media, List<String> names) async {
    await _removeFromLists(media, names.toSet());
    final known = {for (final c in _choices[media.id] ?? const []) c.name: c};
    final (kind, id) = await _target(media);
    for (final name in names) {
      final choice = known[name];
      if (choice != null && choice.onList) continue;
      final token = _token ?? await _loadToken();
      final answer = await client.postForm('/api/customlists/additem', {
        'id': '$id',
        'type': kind,
        'custom_list_id': '${choice?.id ?? 0}',
        'token': token,
        'reason': '',
        'list_name': choice == null ? name : '',
      });
      if (answer != 'Success') {
        throw AnimePlanetException(
          answer.isEmpty || answer.length > 80
              ? 'Could not add to $name'
              : answer,
        );
      }
    }
    _choices.remove(media.id);
  }

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    try {
      await saveEntry(media);
      if (customList != null) {
        await _addToLists(media, customList);
      }
      _done();
    } on AnimePlanetException catch (e) {
      snackString(getString.serviceError('Anime-Planet', e.message));
    }
  }

  @override
  Future<String?> saveEntry(Media media, {bool? exists}) async {
    final (kind, id) = await _target(media);
    var status = media.userStatus;
    String? kept;
    try {
      await _call('/api/list/status/$kind/$id/${_statusId(status)}');
    } on AnimePlanetException catch (e) {
      final releasing = e.message.toLowerCase().contains('still releasing');
      if (status != 'COMPLETED' || !releasing) rethrow;
      kept = e.message;
      status = 'CURRENT';
      await _call('/api/list/status/$kind/$id/${_statusId(status)}');
    }
    final progress = media.userProgress;
    final hasProgress = status != 'PLANNING' && status != 'WONT';
    if (hasProgress && progress != null && (progress > 0 || exists == true)) {
      await _call(
        '/api/list/update/$kind/$id/$progress${kind == 'manga' ? '/0' : ''}',
      );
    }
    if (kind == 'anime' && status == 'COMPLETED' && media.userRepeat > 0) {
      await _call('/api/list/times/$kind/$id/${media.userRepeat + 1}');
    }
    final score = media.userScore;
    if (score != null && (score > 0 || exists == true)) {
      await _call('/api/list/rate/$kind/$id/${_stars(score)}');
    }
    return kept;
  }

  @override
  Future<void> deleteFromList(Media media) async {
    try {
      final (kind, id) = await _target(media);
      await _call('/api/list/status/$kind/$id/0');
      clearListEntry(media);
      _done();
    } on AnimePlanetException catch (e) {
      snackString(getString.serviceError('Anime-Planet', e.message));
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final total = media.totalUnits;
    final done =
        media.status == 'FINISHED' &&
        total != null &&
        total > 0 &&
        progress >= total;
    final before = media.userStatus;
    media.userProgress = progress;
    if (done) {
      media.userStatus = 'COMPLETED';
    } else if (before == null || before == 'PLANNING') {
      media.userStatus = 'CURRENT';
    }
    try {
      final (kind, id) = await _target(media);
      if (media.userStatus != before) {
        await _call(
          '/api/list/status/$kind/$id/${_statusId(media.userStatus)}',
        );
      }
      await _call(
        '/api/list/update/$kind/$id/$progress${kind == 'manga' ? '/0' : ''}',
      );
      _done();
    } on AnimePlanetException catch (e) {
      snackString(getString.serviceError('Anime-Planet', e.message));
    }
  }
}
