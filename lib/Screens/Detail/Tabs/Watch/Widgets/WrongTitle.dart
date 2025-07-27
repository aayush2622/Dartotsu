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
  WrongTitleDialogState createState() => WrongTitleDialogState();
}

class WrongTitleDialogState extends State<WrongTitleDialog> {
  final TextEditingController textEditingController = TextEditingController();
  late Future<Pages?> searchFuture;

  @override
  void initState() {
    super.initState();
    final initialSearchText =
        widget.selectedMedia?.value?.title ?? widget.mediaData.mainName();
    '';
    textEditingController.text = initialSearchText;
    searchFuture = _performSearch(initialSearchText);
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  Future<Pages?> _performSearch(String query) {
    return widget.source.methods.search(
      query,
      1,
      [],
    );
  }

  void _onSubmitted(String value) {
    setState(() {
      searchFuture = _performSearch(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return CustomBottomDialog(
      title: widget.source.name,
      viewList: [
        _buildSearchInput(theme),
        const SizedBox(height: 16.0),
        FutureBuilder(
          future: searchFuture,
          builder: (context, snapshot) {
            return _buildResultList(snapshot, theme);
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).viewInsets.bottom,
        ),
      ],
    );
  }

  Widget _buildSearchInput(ColorScheme theme) {
    return TextField(
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
        fillColor: Colors.grey.withValues(alpha: 0.2),
      ),
    );
  }

  Widget _buildResultList(AsyncSnapshot<Pages?> snapshot, ColorScheme theme) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    } else if (snapshot.hasError ||
        !snapshot.hasData ||
        snapshot.data!.list.isEmpty) {
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
    }
    return MediaAdaptor(
      type: 3,
      mediaList: snapshot.data!.toMedia(),
      onMediaTap: (index, media) {
        widget.onChanged?.call(snapshot.data!.list[index]);
        Navigator.of(context).pop();
      },
    );
  }
}
