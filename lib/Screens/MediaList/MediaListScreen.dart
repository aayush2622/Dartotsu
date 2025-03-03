import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../Services/ServiceSwitcher.dart';
import 'MediaListTabs.dart';
import 'MediaListViewModel.dart';

class MediaListScreen extends StatefulWidget {
  final bool anime;
  final int id;

  const MediaListScreen({super.key, required this.anime, required this.id});

  @override
  MediaListScreenState createState() => MediaListScreenState();
}

class MediaListScreenState extends State<MediaListScreen> {
  late final MediaListViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel =
        Get.put(MediaListViewModel(), tag: widget.anime ? 'anime' : 'manga');
    _viewModel.loadAll(anime: widget.anime, userId: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    var service =
        Provider.of<MediaServiceProvider>(context).currentService.data;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "${service.username} ${getString.list(widget.anime ? getString.anime : getString.manga)}",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
            color: theme.primary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        iconTheme: IconThemeData(color: theme.primary),
      ),
      body: Obx(() {
        if (_viewModel.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (_viewModel.mediaList.value == null ||
            _viewModel.mediaList.value!.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        return MediaListTabs(data: _viewModel.mediaList.value!);
      }),
    );
  }
}
