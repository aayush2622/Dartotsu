import 'dart:async';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';

class ReverseSearchState<T> extends ScreenState {
  final Future<List<T>> Function(Uint8List data, String name) byBytes;
  final Future<List<T>> Function(String url) byUrl;

  ReverseSearchState({required this.byBytes, required this.byUrl});

  final link = TextEditingController();
  final bytes = Live<Uint8List?>(null);
  final url = Live<String?>(null);
  final hits = Live<List<T>?>(null);
  final busy = false.live;
  final error = Live<String?>(null);

  @override
  void onClose() => link.dispose();

  Future<void> pick() async {
    if (busy.value) return;
    final files = await FilePicker.pickFiles(type: FileType.image);
    if (files.isEmpty) return;
    final data = await files.first.readAsBytes();
    bytes.value = data;
    url.value = null;
    await _run(() => byBytes(data, files.first.name));
  }

  Future<void> submitLink() async {
    final text = link.text.trim();
    if (text.isEmpty || busy.value) return;
    if (!text.startsWith(RegExp(r'https?://'))) {
      error.value = getString.imageSearchNotLink;
      return;
    }
    bytes.value = null;
    url.value = text;
    await _run(() => byUrl(text));
  }

  Future<void> _run(Future<List<T>> Function() search) async {
    busy.value = true;
    error.value = null;
    hits.value = null;
    try {
      hits.value = await search();
    } catch (e) {
      error.value = '$e';
    } finally {
      busy.value = false;
    }
  }
}

class ReverseSearchSheet<T> extends StatefulWidget {
  final String title;
  final String intro;
  final String empty;
  final String credit;
  final Widget? trailing;
  final Future<List<T>> Function(Uint8List data, String name) byBytes;
  final Future<List<T>> Function(String url) byUrl;
  final T placeholder;
  final Widget Function(T hit) tile;

  const ReverseSearchSheet({
    super.key,
    required this.title,
    required this.intro,
    required this.empty,
    required this.credit,
    required this.byBytes,
    required this.byUrl,
    required this.placeholder,
    required this.tile,
    this.trailing,
  });

  @override
  State<ReverseSearchSheet<T>> createState() => _ReverseSearchSheetState<T>();
}

class _ReverseSearchSheetState<T> extends State<ReverseSearchSheet<T>>
    with ScreenStateHost<ReverseSearchSheet<T>, ReverseSearchState<T>> {
  @override
  ReverseSearchState<T> buildState() =>
      ReverseSearchState(byBytes: widget.byBytes, byUrl: widget.byUrl);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final hits = state.hits.value;
    final busy = state.busy.value;
    final error = state.error.value;
    final preview = state.bytes.value;
    final previewUrl = state.url.value;
    return AppSheet(
      title: widget.title,
      heightFactor: 0.9,
      trailing: widget.trailing,
      child: ScrollConfig(
        context,
        child: ListView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            0,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          children: [
            Text(
              widget.intro,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: Dimens.gap),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: state.link,
                    enabled: !busy,
                    keyboardType: TextInputType.url,
                    textInputAction: TextInputAction.search,
                    onSubmitted: (_) => unawaited(state.submitLink()),
                    decoration: InputDecoration(
                      hintText: getString.imageSearchLinkHint,
                      prefixIcon: const Icon(Icons.link_rounded),
                    ),
                  ),
                ),
                SizedBox(width: Dimens.gapSm),
                IconButton.filled(
                  tooltip: getString.imageSearchGo,
                  onPressed: busy ? null : () => unawaited(state.submitLink()),
                  icon: const Icon(Icons.search_rounded),
                ),
              ],
            ),
            SizedBox(height: Dimens.gapSm),
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonalIcon(
                onPressed: busy ? null : () => unawaited(state.pick()),
                icon: const Icon(Icons.image_search_rounded),
                label: Text(getString.imageSearchPick),
              ),
            ),
            if (preview != null || previewUrl != null) ...[
              SizedBox(height: Dimens.gap),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 180),
                  child: SizedBox(
                    width: double.infinity,
                    child: preview != null
                        ? Image.memory(preview, fit: BoxFit.cover)
                        : cachedNetworkImage(
                            imageUrl: previewUrl,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ],
            SizedBox(height: Dimens.gap),
            if (busy)
              Skeletonizer(
                child: Column(
                  children: [
                    for (var i = 0; i < 3; i++) ...[
                      widget.tile(widget.placeholder),
                      SizedBox(height: Dimens.gapSm),
                    ],
                  ],
                ),
              )
            else if (error != null)
              EmptyState(
                icon: Icons.error_outline_rounded,
                failed: true,
                title: error,
              )
            else if (hits != null && hits.isEmpty)
              EmptyState(icon: Icons.search_off_rounded, title: widget.empty)
            else if (hits != null)
              for (final (i, hit) in hits.indexed) ...[
                widget.tile(hit).animateStagger(i),
                SizedBox(height: Dimens.gapSm),
              ],
            SizedBox(height: Dimens.gapSm),
            Center(
              child: Text(
                widget.credit,
                style: context.textTheme.labelSmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
