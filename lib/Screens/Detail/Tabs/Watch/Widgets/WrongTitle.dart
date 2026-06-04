import 'dart:async';

import 'package:dartotsu/Adaptor/Media/MediaAdaptor.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../DataClass/Media.dart';
import '../../../../../Widgets/CustomBottomDialog.dart';

class WrongTitleDialog extends StatefulWidget {
  final Source source;
  final Rxn<DMedia?>? selectedMedia;
  final Media mediaData;
  final Function(DMedia)? onChanged;

  const WrongTitleDialog({
    super.key,
    required this.source,
    required this.mediaData,
    this.selectedMedia,
    this.onChanged,
  });

  @override
  State<WrongTitleDialog> createState() => WrongTitleDialogState();
}

class WrongTitleDialogState extends State<WrongTitleDialog> {
  static const _searchDebounce = Duration(milliseconds: 900);

  final TextEditingController textEditingController = TextEditingController();

  late Future<Pages?> searchFuture;

  Timer? _debounce;
  String? _lastQuery;

  @override
  void initState() {
    super.initState();

    final initialQuery =
        widget.selectedMedia?.value?.title ?? widget.mediaData.mainName();

    textEditingController.text = initialQuery;
    _lastQuery = initialQuery.trim();

    searchFuture = _performSearch(_lastQuery!);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    textEditingController.dispose();
    super.dispose();
  }

  Future<Pages?> _performSearch(String query) => widget.source.methods.search(
        query,
        1,
        [],
      );

  void _search(String query) {
    query = query.trim();

    if (query == _lastQuery) {
      return;
    }

    _lastQuery = query;

    setState(() {
      searchFuture = _performSearch(query);
    });
  }

  Widget _buildSearchInput(ColorScheme theme) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
    );

    return TextField(
      controller: textEditingController,
      textInputAction: TextInputAction.search,
      onSubmitted: _search,
      onChanged: (value) {
        _debounce?.cancel();

        _debounce = Timer(_searchDebounce, () {
          _search(value);
        });
      },
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: theme.onSurface,
      ),
      decoration: InputDecoration(
        hintText: 'Search...',
        suffixIcon: Icon(
          Icons.search,
          color: theme.onSurface,
        ),
        border: border,
        enabledBorder: border.copyWith(
          borderSide: BorderSide(
            color: theme.primaryContainer,
          ),
        ),
        focusedBorder: border.copyWith(
          borderSide: BorderSide(
            color: theme.primary,
            width: 2,
          ),
        ),
        filled: true,
        fillColor: Colors.grey.withValues(alpha: 0.2),
      ),
    );
  }

  Widget _buildError(Object error, ColorScheme theme) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline_rounded,
              size: 48,
              color: theme.error,
            ),
            const SizedBox(height: 12),
            Text(
              'Failed to load results',
              style: TextStyle(
                color: theme.error,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: theme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(ColorScheme theme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          'No results found',
          style: TextStyle(
            color: theme.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildResultList(
    AsyncSnapshot<Pages?> snapshot,
    ColorScheme theme,
  ) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (snapshot.hasError) {
      return _buildError(
        snapshot.error!,
        theme,
      );
    }

    final data = snapshot.data;

    if (data == null || data.list.isEmpty) {
      return _buildEmptyState(theme);
    }

    return MediaAdaptor(
      type: 3,
      mediaList: data.toMedia(),
      onMediaTap: (index, media) {
        widget.onChanged?.call(data.list[index]);
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return CustomBottomDialog(
      title: widget.source.name,
      viewList: [
        _buildSearchInput(theme),
        const SizedBox(height: 16),
        FutureBuilder<Pages?>(
          future: searchFuture,
          builder: (context, snapshot) {
            return _buildResultList(
              snapshot,
              theme,
            );
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).viewInsets.bottom,
        ),
      ],
    );
  }
}
