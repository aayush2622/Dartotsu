import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/ServiceApi.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Sections/Media/MediaSection.dart';

typedef RailLoader = Future<List<MediaRail>> Function();

class MediaRailsScreen extends StatefulWidget {
  final RailLoader loader;
  final Widget? header;
  final void Function(Media media)? onMediaTap;
  final VoidCallback? onSearch;

  /// Emits whenever the screen should refetch (e.g. the account changed).
  final Stream<Object?>? reloadOn;

  const MediaRailsScreen({
    super.key,
    required this.loader,
    this.header,
    this.onMediaTap,
    this.onSearch,
    this.reloadOn,
  });

  @override
  State<MediaRailsScreen> createState() => _MediaRailsScreenState();
}

class _MediaRailsScreenState extends State<MediaRailsScreen>
    with AutomaticKeepAliveClientMixin {
  final _rails = <MediaRail>[].obs;
  final _loading = true.obs;
  final _error = RxnString();

  StreamSubscription<Object?>? _reloadSub;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _load();
    _reloadSub = widget.reloadOn?.listen((_) => _load());
  }

  @override
  void dispose() {
    _reloadSub?.cancel();
    super.dispose();
  }

  Future<void> _load() async {
    _loading.value = true;
    _error.value = null;
    try {
      _rails.value = await widget.loader();
    } catch (e) {
      _error.value = e.toString();
    } finally {
      _loading.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final list = _list(context);
    if (widget.onSearch == null) return list;
    return Stack(
      children: [
        list,
        Positioned(
          right: 16,
          bottom: 120.bottomBar(),
          child: FloatingActionButton.small(
            onPressed: widget.onSearch,
            child: const Icon(Icons.search_rounded),
          ),
        ),
      ],
    );
  }

  Widget _list(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _load,
      child: Obx(() {
        final showSkeleton = _loading.value && _rails.isEmpty;
        final showError = _error.value != null && _rails.isEmpty;

        return CustomScrollConfig(
          context,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            if (widget.header != null)
              SliverToBoxAdapter(child: widget.header!),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            if (showSkeleton)
              for (var i = 0; i < 3; i++)
                SliverToBoxAdapter(
                  child: MediaSection(data: MediaSectionData.skeleton(0)),
                )
            else if (showError)
              SliverToBoxAdapter(child: _errorBox(_error.value!))
            else
              for (final rail in _rails)
                SliverToBoxAdapter(
                  child: MediaSection(
                    data: MediaSectionData(
                      type: 0,
                      title: rail.title,
                      mediaList: rail.media,
                      onMediaTap: (ctx, i, media) =>
                          widget.onMediaTap?.call(media),
                    ),
                  ),
                ),
            SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
          ],
        );
      }),
    );
  }

  Widget _errorBox(String text) => Padding(
    padding: const EdgeInsets.fromLTRB(24, 80, 24, 24),
    child: Column(
      children: [
        Icon(
          Icons.cloud_off_rounded,
          size: 40,
          color: context.colorScheme.onSurfaceVariant,
        ),
        const SizedBox(height: 12),
        Text(
          text,
          textAlign: TextAlign.center,
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(height: 12),
        FilledButton.tonal(onPressed: _load, child: const Text('Retry')),
      ],
    ),
  );
}
