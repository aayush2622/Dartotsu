import 'package:flutter/widgets.dart';

import '../../../../Core/NetworkManager/NetworkManager.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/CommunityList.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../../../../Utils/Function.dart';

const simklListsHost = 'https://simkl.com';

const _agent =
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) '
    'Chrome/124.0 Safari/537.36';

final _block = RegExp(r'<a class="listitem\b');
final _href = RegExp(r'href="(/\d+/list/[^"]+)"');
final _style = RegExp(r'style="([^"]*)"');
final _id = RegExp(r'data-id="(\d+)"');
final _title = RegExp(
  r'<listitem-2-1-1-1>(.*?)</listitem-2-1-1-1>',
  dotAll: true,
);

String? _var(String style, String name) {
  final quoted = RegExp("--$name:'((?:[^'\\\\]|\\\\.)*)'").firstMatch(style);
  return quoted?.group(1)?.replaceAll(r"\'", "'").replaceAll(r'\\', r'\');
}

List<CommunityList> parseSimklCommunityLists(String html, String kind) {
  final starts = [for (final m in _block.allMatches(html)) m.start];
  final out = <CommunityList>[];
  for (var i = 0; i < starts.length; i++) {
    final end = i + 1 < starts.length ? starts[i + 1] : html.length;
    final block = html.substring(starts[i], end);
    final href = _href.firstMatch(block)?.group(1);
    final id = _id.firstMatch(block)?.group(1);
    final title = _title.firstMatch(block)?.group(1)?.stripHtml;
    if (href == null || id == null || title == null || title.isEmpty) continue;
    final style = _style.firstMatch(block)?.group(1) ?? '';
    final count = int.tryParse(_var(style, 'count-added') ?? '') ?? 0;
    final description = _var(style, 'description')?.stripHtml;
    out.add(
      CommunityList(
        id: id,
        title: title,
        author: _var(style, 'creator-name')?.stripHtml ?? '',
        description: description == null || description.isEmpty
            ? null
            : description,
        count: count == 0 ? '' : getString.simklListTitles(count),
        likes: int.tryParse(_var(style, 'count-likes') ?? '') ?? 0,
        kind: kind,
        url: '$simklListsHost$href',
        covers: [
          for (var n = 1; n <= 5; n++)
            if (RegExp('data-poster-$n="([^"]+)"').firstMatch(block)
                case final m?)
              'https:${m.group(1)}'.replaceFirst('https:https:', 'https:'),
        ],
      ),
    );
  }
  return out;
}

class SimklCommunityListsView extends CommunityListsView {
  @override
  List<(String, String)> get kinds => [
    ('anime', getString.anime),
    ('tv', getString.series),
    ('movies', getString.movies),
  ];

  @override
  List<(String, String)> get sorts => [
    ('trending', getString.simklListsTrending),
    ('most-liked', getString.simklListsMostLiked),
    ('most-followed', getString.simklListsMostFollowed),
    ('official', getString.simklListsOfficial),
  ];

  @override
  Future<CommunityListPage> lists({
    required String kind,
    required String sort,
    int page = 1,
  }) async {
    final res = await find<NetworkManager>().get(
      '$simklListsHost/lists/$sort/',
      query: {
        'type': kind,
        'list_type': 'regular',
        'wltime': 'month',
        if (sort == 'trending') 'sort': 'trending,desc',
        if (page > 1) 'page': '$page',
      },
      headers: const {'User-Agent': _agent},
      decodeJson: false,
    );
    if (!res.isOk) throw Exception('Simkl: HTTP ${res.statusCode}');
    final items = parseSimklCommunityLists('${res.data}', kind);
    return CommunityListPage(items, items.length >= 18 && page < 20);
  }

  @override
  Future<void> open(BuildContext context, CommunityList list) async {
    final url = list.url;
    if (url != null) await openLinkInBrowser(url);
  }
}
