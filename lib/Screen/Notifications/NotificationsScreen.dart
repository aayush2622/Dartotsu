import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Api/Services/Anilist/AnilistApi.dart';
import '../../Api/Services/Anilist/AnilistAuth.dart';
import '../../Api/Services/Anilist/AnilistNotification.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../Detail/DetailScreen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends BaseScreen<NotificationsScreen> {
  late final AnilistApi _api = AnilistApi(find<AnilistAuth>().client);
  final _items = <AnilistNotification>[].obs;
  final _loading = true.obs;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    _loading.value = true;
    try {
      _items.value = await _api.notifications();
      unawaited(find<AnilistAuth>().refreshUser());
    } catch (_) {
      // leave list empty
    } finally {
      _loading.value = false;
    }
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Notifications'),
      ),
      body: RefreshIndicator(
        onRefresh: _load,
        child: Obx(() {
          if (_loading.value && _items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (_items.isEmpty) {
            return Center(
              child: Text('Nothing new', style: context.textTheme.bodyMedium),
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: _items.length,
            separatorBuilder: (_, i) => const Divider(height: 1),
            itemBuilder: (_, i) {
              final n = _items[i];
              return ListTile(
                leading: n.imageUrl == null
                    ? const Icon(Icons.notifications_rounded)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox(
                          width: 40,
                          height: 52,
                          child: cachedNetworkImage(
                            imageUrl: n.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                title: Text(n.text, style: context.textTheme.bodyMedium),
                subtitle: Text(
                  _ago(n.createdAt),
                  style: context.textTheme.labelSmall,
                ),
                onTap: n.mediaId == null
                    ? null
                    : () => navigateToPage(
                        context,
                        DetailScreen(
                          media: Media(
                            id: '${n.mediaId}',
                            cover: n.imageUrl,
                            shareLink: 'https://anilist.co/anime/${n.mediaId}',
                          ),
                        ),
                      ),
              );
            },
          );
        }),
      ),
    );
  }

  static String _ago(int epochSeconds) {
    final d = DateTime.now().difference(
      DateTime.fromMillisecondsSinceEpoch(epochSeconds * 1000),
    );
    if (d.inMinutes < 60) return '${d.inMinutes}m ago';
    if (d.inHours < 24) return '${d.inHours}h ago';
    return '${d.inDays}d ago';
  }
}
