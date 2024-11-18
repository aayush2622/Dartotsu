import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api/Anilist/Anilist.dart';
import 'MediaListViewModel.dart';
import 'MediaListTabs.dart';

class MediaListScreen extends StatefulWidget {
  final bool anime;
  final int id;
  const MediaListScreen({super.key, required this.anime, required this.id});

  @override
  MediaListScreenState createState() => MediaListScreenState();
}

class MediaListScreenState extends State<MediaListScreen> {
  final _viewModel = Get.put(MediaListViewModel());

  @override
  void initState() {
    super.initState();
    _viewModel.loadAll(anime: widget.anime, userId: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "${Anilist.username.value } ${widget.anime ? 'Anime' : 'Manga'} List",
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

        if (_viewModel.mediaList.value == null || _viewModel.mediaList.value!.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        return MediaListTabs(data: _viewModel.mediaList.value!);
      }),
    );
  }
}
