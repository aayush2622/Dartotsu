import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Model/Media.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Sections/Media/MediaSection.dart';

typedef SectionsLoader = Future<Map<String, List<Media>>> Function();

/// Renders an ordered set of horizontal media sections. The loader's map keys
/// are the section titles; empty sections are dropped by the loader.
class MediaSectionsScreen extends StatefulWidget {
  final SectionsLoader loader;
  final Widget? header;
  final void Function(Media media)? onMediaTap;
  final VoidCallback? onSearch;

  /// Emits whenever the screen should refetch (e.g. the account changed).
  final Stream<Object?>? reloadOn;

  const MediaSectionsScreen({
    super.key,
    required this.loader,
    this.header,
    this.onMediaTap,
    this.onSearch,
    this.reloadOn,
  });

  @override
  State<MediaSectionsScreen> createState() => _MediaSectionsScreenState();
}

class _MediaSectionsScreenState extends State<MediaSectionsScreen>
    with AutomaticKeepAliveClientMixin {
  final _sections = <String, List<Media>>{}.obs;
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
    _error.value = null;
    try {
      _sections.value = await widget.loader();
    } catch (e) {
      if (_sections.isEmpty) _error.value = e.toString();
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
        final showError = _error.value != null && _sections.isEmpty;
        final showSkeleton = _sections.isEmpty && !showError;
        final entries = _sections.entries.toList();

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
                  key: ValueKey('skeleton-$i'),
                  child: MediaSection(data: MediaSectionData.skeleton(0)),
                )
            else if (showError)
              SliverToBoxAdapter(child: _errorBox(_error.value!))
            else
              for (final (i, section) in entries.indexed)
                SliverToBoxAdapter(
                  key: ValueKey('section-${section.key}'),
                  child:
                      MediaSection(
                        key: ValueKey('section-${section.key}'),
                        data: MediaSectionData(
                          type: 0,
                          title: section.key,
                          mediaList: section.value,
                          onMediaTap: (ctx, idx, media) =>
                              widget.onMediaTap?.call(media),
                        ),
                      ).animateFadeUp(
                        begin: 0.15,
                        delay: Duration(milliseconds: 40 * i),
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
