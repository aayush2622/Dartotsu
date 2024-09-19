import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/api/Mangayomi/Model/Source.dart';
import 'package:dantotsu/api/Mangayomi/Search/get_detail.dart';
import 'package:dantotsu/api/Mangayomi/Search/search.dart';
import 'package:dantotsu/api/Mangayomi/Search/getVideo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';
import '../../api/Mangayomi/Extensions/GetSourceList.dart';
import '../../api/Mangayomi/Extensions/fetch_anime_sources.dart';
import '../../api/Mangayomi/Extensions/fetch_manga_sources.dart';
import '../Settings/language.dart';

class ExtensionListTileWidget extends ConsumerStatefulWidget {
  final Source source;
  final bool isTestSource;

  const ExtensionListTileWidget({
    super.key,
    required this.source,
    this.isTestSource = false,
  });

  @override
  ConsumerState<ExtensionListTileWidget> createState() =>
      _ExtensionListTileWidgetState();
}

class _ExtensionListTileWidgetState
    extends ConsumerState<ExtensionListTileWidget> {
  bool _isLoading = false;

  Future<void> _handleSourceAction() async {
    setState(() => _isLoading = true);

    if (widget.source.isManga!) {
      await ref.read(
          fetchMangaSourcesListProvider(id: widget.source.id, reFresh: true)
              .future);
    } else {
      await ref.read(
          fetchAnimeSourcesListProvider(id: widget.source.id, reFresh: true)
              .future);
    }

    if (mounted) setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final updateAvailable = widget.isTestSource
        ? false
        : compareVersions(widget.source.version!, widget.source.versionLast!) <
            0;
    final sourceNotEmpty = widget.source.sourceCode?.isNotEmpty ?? false;

    return Material(
      child: ListTile(
        onTap: () async {
          if (sourceNotEmpty || widget.isTestSource) {
            if (widget.isTestSource) {
              isar.writeTxnSync(() => isar.sources.putSync(widget.source));
            }
            // context.push('/extension_detail', extra: widget.source);
          } else {
            await _handleSourceAction();
          }
        },
        leading: Container(
          height: 37,
          width: 37,
          decoration: BoxDecoration(
            color: theme.surface,
            borderRadius: BorderRadius.circular(32),
          ),
          child: widget.source.iconUrl!.isEmpty
              ? const Icon(Icons.extension_rounded)
              : CachedNetworkImage(
                  imageUrl: widget.source.iconUrl!,
                  fit: BoxFit.contain,
                  width: 37,
                  height: 37,
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.extension_rounded),
                ),
        ),
        title: Text(widget.source.name!),
        titleTextStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              completeLanguageName(widget.source.lang!.toLowerCase()),
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              widget.source.version!,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
              ),
            ),
            if (widget.source.isNsfw!) const SizedBox(width: 4),
            if (widget.source.isNsfw!)
              const Text(
                "(18+)",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                ),
              ),
            if (widget.source.isObsolete ?? false)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  "OBSOLETE",
                  style: TextStyle(
                    color: theme.error,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        ),
        trailing: TextButton(
          onPressed: widget.isTestSource || (!updateAvailable && sourceNotEmpty)
              ? () {
                  var media = ref.watch(searchProvider(
                    source: widget.source,
                    page: 1,
                    query: 'One Piece',
                    filterList: [],
                  ).future);
                  media.then((value){
                    var url = value?.list.firstOrNull?.link;
                    if (url == null) return;
                    var data = ref.watch(getDetailProvider(url: url,source: widget.source).future);
                    data.then((onValue) async {
                      var uri =(onValue.chapters?.firstOrNull?.url);
                      if (uri == null) return;
                      var t =  await getVideo(source: widget.source, url: uri);
                    });

                  });
                  // context.push('/extension_detail', extra: widget.source);
                }
              : _handleSourceAction,
          child: _isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(strokeWidth: 2.0),
                )
              : Text(
                  widget.isTestSource
                      ? 'settings'
                      : !sourceNotEmpty
                          ? 'install'
                          : updateAvailable
                              ? 'update'
                              : 'settings',
                ),
        ),
      ),
    );
  }
}
