import 'package:dantotsu/Adaptor/Media/MediaAdaptor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../DataClass/Episode.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../Widgets/CustomBottomDialog.dart';
import '../../../../../api/Mangayomi/Eval/dart/model/m_manga.dart';
import '../../../../../api/Mangayomi/Eval/dart/model/m_pages.dart';
import '../../../../../api/Mangayomi/Model/Source.dart';
import '../../../../../api/Mangayomi/Search/search.dart';

class WrongTitleDialog extends StatefulWidget {
  final Source source;
  final media mediaData;
  final Rxn<MManga?> selectedMedia;
  final Function(media, MManga?, Source, {bool selected}) saveShowResponse;
  final Rxn<Map<String, Episode>> episodeList;
  final Function(MManga, Source) getEpisode;

  const WrongTitleDialog({
    super.key,
    required this.source,
    required this.mediaData,
    required this.selectedMedia,
    required this.saveShowResponse,
    required this.episodeList,
    required this.getEpisode,
  });

  @override
  WrongTitleDialogState createState() => WrongTitleDialogState();
}

class WrongTitleDialogState extends State<WrongTitleDialog> {
  TextEditingController textEditingController = TextEditingController();
  late Future<MPages?> searchFuture;
  String searchText = '';

  @override
  void initState() {
    super.initState();
    searchText = widget.selectedMedia.value?.name ?? '';
    textEditingController.text = searchText;
    searchFuture = _performSearch(searchText);
  }

  Future<MPages?> _performSearch(String query) async {
    return await search(
      source: widget.source,
      page: 1,
      query: query,
      filterList: [],
    );
  }

  void _onSubmitted(String value) {
    setState(() {
      searchText = value;
      searchFuture = _performSearch(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;

    return CustomBottomDialog(
      title: widget.source.name,
      viewList: [
        TextField(
          controller: textEditingController,
          onSubmitted: _onSubmitted,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
            color: theme.onSurface,
          ),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search, color: theme.onSurface),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(
                color: theme.primaryContainer,
                width: 1.0,
              ),
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
          ),
        ),
        const SizedBox(height: 16.0),
        FutureBuilder<MPages?>(
          future: searchFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (!snapshot.hasData || snapshot.data!.list.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'No results found',
                  style: TextStyle(
                    color: theme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            } else {
              var list = snapshot.data!.list;
              var mediaList = snapshot.data!.list
                  .map((e) => media(
                        id: e.hashCode,
                        name: e.name,
                        cover: e.imageUrl,
                        nameRomaji: e.name ?? '',
                        userPreferredName: e.name ?? '',
                        isAdult: false,
                      ))
                  .toList();
              return MediaAdaptor(
                type: 3,
                mediaList: mediaList,
                onMediaTap: (i) {
                  setState(() {
                    widget.selectedMedia.value = list[i];
                    widget.saveShowResponse(widget.mediaData, list[i], widget.source, selected: true);
                    widget.episodeList.value = null;
                    widget.getEpisode(list[i], widget.source);
                    Navigator.of(context).pop();
                  });
                },
              );
            }
          },
        ),
      ],
    );
  }
}
