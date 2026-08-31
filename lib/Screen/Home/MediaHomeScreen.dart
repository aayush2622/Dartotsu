import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Api/Services/Anilist/AnilistApi.dart';
import '../../Api/Services/Anilist/AnilistAuth.dart';
import '../../Api/Services/Anilist/AnilistClient.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Sections/Media/MediaSection.dart';

class MediaHomeScreen extends StatefulWidget {
  final bool anime;
  const MediaHomeScreen({super.key, required this.anime});

  @override
  State<MediaHomeScreen> createState() => _MediaHomeScreenState();
}

class _MediaHomeScreenState extends State<MediaHomeScreen>
    with AutomaticKeepAliveClientMixin {
  final _rails = <MediaRail>[].obs;
  final _loading = true.obs;
  final _error = RxnString();

  late final AnilistApi _api = AnilistApi(find<AnilistAuth>().client);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    _loading.value = true;
    _error.value = null;
    try {
      _rails.value = await _api.home(anime: widget.anime);
    } on AnilistException catch (e) {
      _error.value = e.message;
    } finally {
      _loading.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      onRefresh: _load,
      child: Obx(() {
        if (_loading.value && _rails.isEmpty) return _skeleton();
        if (_error.value != null && _rails.isEmpty) {
          return _message(_error.value!);
        }
        return CustomScrollConfig(
          context,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const SliverToBoxAdapter(child: SizedBox(height: 12)),
            for (final rail in _rails)
              SliverToBoxAdapter(
                child: MediaSection(
                  data: MediaSectionData(
                    type: 0,
                    title: rail.title,
                    mediaList: rail.media,
                    onMediaTap: _openMedia,
                  ),
                ),
              ),
            SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
          ],
        );
      }),
    );
  }

  void _openMedia(BuildContext context, int index, Media media) {
    // Detail screen not built yet.
  }

  Widget _skeleton() => CustomScrollConfig(
        context,
        children: [
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          for (var i = 0; i < 3; i++)
            SliverToBoxAdapter(
              child: MediaSection(data: MediaSectionData.skeleton(0)),
            ),
        ],
      );

  Widget _message(String text) => ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(height: context.mediaQuerySize.height * 0.35),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      );
}
