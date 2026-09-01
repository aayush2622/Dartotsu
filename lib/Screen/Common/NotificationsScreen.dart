import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import 'DetailScreen.dart';

class NotificationsScreen extends StatefulWidget {
  final Queries queries;
  const NotificationsScreen({super.key, required this.queries});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends BaseScreen<NotificationsScreen> {
  final _items = <ServiceNotification>[].obs;
  final _loading = true.obs;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    _loading.value = true;
    try {
      _items.value = await widget.queries.getNotifications();
      final auth = find<MediaServiceController>().currentService.value.auth;
      if (auth != null) unawaited(auth.refreshUser());
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
                            id: n.mediaId!,
                            cover: n.imageUrl,
                            shareLink: 'https://anilist.co/anime/${n.mediaId}',
                          ),
                          queries: widget.queries,
                          mutations: find<MediaServiceController>()
                              .currentService
                              .value
                              .getMutations,
                        ),
                      ),
              );
            },
          );
        }),
      ),
    );
  }

  static String _ago(DateTime time) {
    final d = DateTime.now().difference(time);
    if (d.inMinutes < 60) return '${d.inMinutes}m ago';
    if (d.inHours < 24) return '${d.inHours}h ago';
    return '${d.inDays}d ago';
  }
}
