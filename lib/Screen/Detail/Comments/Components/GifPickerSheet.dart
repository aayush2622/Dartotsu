import '../../../../Logger.dart';
import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Widgets/Components/ScrollConfig.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../Core/NetworkManager/NetworkManager.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/Clickable.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/EmptyState.dart';

const _key = '29Hflu9yLfJoQy9uVbrSg5pPkaGgIr7CDDpx0bCtVxQFBTnNWXb4moqYsR70Yzzv';
const _base = 'https://api.klipy.com/v2';

Future<String?> showGifPicker(BuildContext context) =>
    showCustomBottomDialog<String>(context, const GifPickerSheet());

Future<List<String>> _fetch(String? query) async {
  final res = await find<NetworkManager>().get(
    query == null || query.isEmpty ? '$_base/featured' : '$_base/search',
    query: {
      'key': _key,
      'q': ?(query == null || query.isEmpty ? null : query),
      'media_filter': 'tinygif',
      'limit': '30',
      'contentfilter': 'high',
    },
  );
  final data = res.data;
  if (!res.isOk || data is! Map) return const [];
  return [
    for (final item in (data['results'] as List? ?? const []))
      if (item is Map)
        if (((item['media_formats'] as Map?)?['tinygif'] as Map?)?['url'] ??
                item['url']
            case final String url when url.isNotEmpty)
          url,
  ];
}

class GifPickerSheet extends StatefulWidget {
  const GifPickerSheet({super.key});

  @override
  State<GifPickerSheet> createState() => _GifPickerSheetState();
}

class _GifPickerSheetState extends State<GifPickerSheet> {
  final _controller = TextEditingController();
  final _gifs = Live<List<String>?>(null);
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    unawaited(_load(null));
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  Future<void> _load(String? query) async {
    _gifs.value = null;
    try {
      final found = await _fetch(query);
      if (mounted) _gifs.value = found;
    } catch (e, st) {
      logError('GifPickerSheet', e, st);
      if (mounted) _gifs.value = const [];
    }
  }

  void _typed(String value) {
    _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 450),
      () => unawaited(_load(value.trim())),
    );
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final gifs = _gifs.value;
    return AppSheet(
      title: getString.commentsGif,
      heightFactor: 0.8,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              0,
              Dimens.pagePad,
              Dimens.gapSm,
            ),
            child: TextField(
              controller: _controller,
              onChanged: _typed,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded),
                hintText: getString.commentsGifSearch,
              ),
            ),
          ),
          Expanded(
            child: gifs == null
                ? Skeletonizer(
                    child: GridView.builder(
                      padding: EdgeInsets.all(Dimens.pagePad),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 180,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                          ),
                      itemCount: 12,
                      itemBuilder: (_, _) => const Bone.square(),
                    ),
                  )
                : gifs.isEmpty
                ? EmptyState(
                    icon: Icons.gif_box_outlined,
                    title: getString.commentsGifEmpty,
                  )
                : ScrollConfig(
                    context,
                    child: GridView.builder(
                      padding: EdgeInsets.all(Dimens.pagePad),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 180,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                          ),
                      itemCount: gifs.length,
                      itemBuilder: (context, i) =>
                          Clickable(
                            onTap: () => popPage(context, gifs[i]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: cachedNetworkImage(
                                imageUrl: gifs[i],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ).animateFadeIn(
                            delay: Duration(
                              milliseconds: 30 * (i < 12 ? i : 12),
                            ),
                          ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
