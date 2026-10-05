import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../Widgets/ScreenWidgetView.dart';
import 'ListEditorSheet.dart';

class DetailScreen extends StatefulWidget {
  final Media media;
  final DetailScreenView view;
  final Mutations? mutations;
  final String? heroTag;

  const DetailScreen({
    super.key,
    required this.media,
    required this.view,
    this.mutations,
    this.heroTag,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends BaseScreen<DetailScreen> {
  late final DetailHost _host = DetailHost(
    media: widget.media,
    loading: true.obs,
    heroTag: widget.heroTag,
    open: _open,
    refresh: _load,
  );
  final _widgets = <ScreenWidget>[].obs;

  bool get _isAnime => _host.media.value.anime != null;

  @override
  String? get glassBackgroundUrl =>
      _host.media.value.banner ??
      _host.media.value.cover ??
      super.glassBackgroundUrl;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load() async {
    _host.loading.value = true;
    try {
      await for (final list in widget.view.screenStream(_host)) {
        _widgets.value = list;
      }
    } catch (_) {
    } finally {
      _host.loading.value = false;
    }
  }

  void _open(Media media, String? heroTag) => navigateToPage(
    context,
    DetailScreen(
      media: media,
      view: widget.view,
      mutations: widget.mutations,
      heroTag: heroTag,
    ),
  );

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: _fab(context),
      body: RefreshIndicator(
        onRefresh: _load,
        child: Obx(
          () => CustomScrollConfig(
            context,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              for (final item in _widgets)
                SliverToBoxAdapter(
                  child: ScreenWidgetView(
                    item,
                    heroPrefix: 'detail:${_host.media.value.id}',
                    onMediaTap: _open,
                  ),
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 110)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fab(BuildContext context) {
    return Obx(() {
      final mutations = widget.mutations;
      if (mutations == null) return const SizedBox.shrink();
      final m = _host.media.value;
      final onList = m.userStatus != null;
      final progress = m.userProgress ?? 0;
      return FloatingActionButton.extended(
        onPressed: () => showListEditor(
          context,
          media: m,
          mutations: mutations,
          onSaved: _load,
        ),
        icon: Icon(onList ? Icons.edit_rounded : Icons.add_rounded),
        label: Text(
          onList && progress > 0
              ? '${_statusLabel(m.userStatus)} · $progress'
              : _statusLabel(m.userStatus),
        ),
      );
    });
  }

  String _statusLabel(String? status) => switch (status) {
    'CURRENT' => _isAnime ? 'Watching' : 'Reading',
    'PLANNING' => 'Planned',
    'COMPLETED' => 'Completed',
    'PAUSED' => 'Paused',
    'DROPPED' => 'Dropped',
    'REPEATING' => _isAnime ? 'Rewatching' : 'Rereading',
    _ => 'Add to List',
  };
}
