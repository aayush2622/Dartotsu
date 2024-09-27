
import 'package:dantotsu/api/Mangayomi/Model/Source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Widgets/CachedNetworkImage.dart';
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
        leading: Container(
          height: 37,
          width: 37,
          decoration: BoxDecoration(
            color: theme.surface,
            borderRadius: BorderRadius.circular(32),
          ),
          child: widget.source.iconUrl!.isEmpty
              ? const Icon(Icons.extension_rounded)
              : cachedNetworkImage(
                  imageUrl: widget.source.iconUrl!,
                  fit: BoxFit.contain,
                  width: 37,
                  height: 37,
                  placeholder: (context, url) => const Icon(Icons.extension_rounded),
                  errorWidget: (context, url, error) => const Icon(Icons.extension_rounded),
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
        trailing:  _isLoading ? const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(strokeWidth: 2.0),
          ) : _BuildButtons(sourceNotEmpty, updateAvailable),
        ),
    );
  }

  Widget _BuildButtons(bool sourceNotEmpty, bool updateAvailable) {
    return !sourceNotEmpty ? IconButton(
        onPressed: () => _handleSourceAction(),
        icon: const Icon(Icons.download)
    ) : SizedBox(
      width: 84,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () async {
              if (updateAvailable) {
                setState(() {
                  _isLoading = true;
                });
                widget.source.isManga!
                    ? await ref.watch(fetchMangaSourcesListProvider(
                    id: widget.source.id, reFresh: true)
                    .future)
                    : await ref.watch(fetchAnimeSourcesListProvider(
                    id: widget.source.id, reFresh: true)
                    .future);
                if (mounted) {
                  setState(() {
                    _isLoading = false;
                  });
                }
              } else {
                // context.push('/extension_detail', extra: widget.source);
              }
            },
            icon: Icon(
              size: 18,
                updateAvailable ? Icons.update : FontAwesome.trash_solid
            ),
          ),
          IconButton(
            onPressed: () async {
              // context.push('/extension_detail', extra: widget.source);
            },
            icon: const Icon( FontAwesome.ellipsis_vertical_solid),
          )
        ],
      ),
    );
  }
}
