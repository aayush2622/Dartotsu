import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu_image_rust/dartotsu_image_rust.dart';
import 'package:flutter/material.dart';

import '../Engine/BorderCrop.dart';
import '../Engine/ReaderImageLoader.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';

class ReaderCropScope extends InheritedWidget {
  final bool enabled;
  final String quality;

  const ReaderCropScope({
    super.key,
    required this.enabled,
    this.quality = 'medium',
    required super.child,
  });

  static bool of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ReaderCropScope>()?.enabled ??
      false;

  static String qualityOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ReaderCropScope>()?.quality ??
      'medium';

  @override
  bool updateShouldNotify(ReaderCropScope old) =>
      old.enabled != enabled || old.quality != quality;
}

class ReaderImage extends StatefulWidget {
  final PageUrl page;
  final BoxFit fit;
  final double? width;
  final double? height;
  final double placeholderHeight;

  const ReaderImage({
    super.key,
    required this.page,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
    this.placeholderHeight = 480,
  });

  @override
  State<ReaderImage> createState() => _ReaderImageState();
}

class _ReaderImageState extends State<ReaderImage> {
  final attempt = 0.live;
  final slow = false.live;
  Timer? _slowTimer;
  final crop = Live<BorderCropInfo?>(null);
  ImageStream? _cropStream;
  ImageStreamListener? _cropListener;
  bool _shown = false;
  bool _logged = false;

  @override
  void initState() {
    super.initState();
    _watch();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _syncCrop();
  }

  ImageProvider _baseProvider(BuildContext context) {
    final media = MediaQuery.of(context);
    final decode = widget.fit == BoxFit.fitWidth
        ? (media.size.width * media.devicePixelRatio).round().clamp(320, 2400)
        : null;
    final base = ReaderImageLoader.providerFor(widget.page);
    return decode == null
        ? base
        : ResizeImage(base, width: decode, policy: ResizeImagePolicy.fit);
  }

  ImageProvider _provider(BuildContext context, String quality) {
    if (quality != 'lanczos' || !DartotsuImageRust.isSupported) {
      return _baseProvider(context);
    }
    final media = MediaQuery.of(context);
    final width = (media.size.width * media.devicePixelRatio).round();
    final height = (media.size.height * media.devicePixelRatio).round();
    final (maxW, maxH) = switch (widget.fit) {
      BoxFit.fitWidth => (width, 0),
      BoxFit.fitHeight => (0, height),
      _ => (width, height),
    };
    return DartotsuScaledImage(
      id: widget.page.url,
      loadFile: () => ReaderImageLoader.fileFor(widget.page),
      maxWidth: maxW,
      maxHeight: maxH,
    );
  }

  FilterQuality _filterQuality(String quality) => switch (quality) {
    'none' => FilterQuality.none,
    'low' => FilterQuality.low,
    'high' => FilterQuality.high,
    'lanczos' => FilterQuality.high,
    _ => FilterQuality.medium,
  };

  void _detachCrop() {
    final listener = _cropListener;
    if (listener != null) _cropStream?.removeListener(listener);
    _cropStream = null;
    _cropListener = null;
  }

  void _syncCrop() {
    _detachCrop();
    if (!ReaderCropScope.of(context)) {
      crop.value = null;
      return;
    }
    final key = widget.page.url;
    final cached = BorderCropCache.get(key);
    if (cached != null) {
      crop.value = cached;
      return;
    }
    crop.value = null;
    final stream = _baseProvider(
      context,
    ).resolve(createLocalImageConfiguration(context));
    late final ImageStreamListener listener;
    listener = ImageStreamListener((info, _) async {
      stream.removeListener(listener);
      final width = info.image.width.toDouble();
      final height = info.image.height.toDouble();
      final rect = await detectBorders(info.image);
      final result = BorderCropInfo(rect, width, height);
      BorderCropCache.put(key, result);
      if (mounted && widget.page.url == key) crop.value = result;
    });
    _cropStream = stream;
    _cropListener = listener;
    stream.addListener(listener);
  }

  @override
  void didUpdateWidget(ReaderImage old) {
    super.didUpdateWidget(old);
    if (old.page.url != widget.page.url) {
      _shown = false;
      _logged = false;
      _watch();
      _syncCrop();
    }
  }

  @override
  void dispose() {
    _detachCrop();
    _slowTimer?.cancel();
    super.dispose();
  }

  void _watch() {
    slow.value = false;
    _slowTimer?.cancel();
    _slowTimer = Timer(const Duration(seconds: 8), () {
      if (mounted && !_shown) slow.value = true;
    });
  }

  Future<void> _retry() async {
    _shown = false;
    final scaled = _provider(context, ReaderCropScope.qualityOf(context));
    await ReaderImageLoader.forget(widget.page);
    if (!mounted) return;
    await scaled.evict();
    attempt.value++;
    _watch();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final quality = ReaderCropScope.qualityOf(context);
    final provider = _provider(context, quality);
    final fQuality = _filterQuality(quality);
    final info = crop.value;
    final rect = info?.rect;
    final image = Image(
      key: ValueKey('${widget.page.url}#${attempt.value}'),
      image: provider,
      fit: rect == null ? widget.fit : BoxFit.fill,
      width: rect == null ? widget.width : info!.width,
      height: rect == null ? widget.height : info!.height,
      gaplessPlayback: true,
      filterQuality: fQuality,
      frameBuilder: (context, child, frame, sync) {
        if (frame == null) return _box(_loading());
        _shown = true;
        if (!_logged) {
          _logged = true;
          logger('Reader image shown: ${widget.page.url}', tag: 'READER');
        }
        return child;
      },
      errorBuilder: (context, error, _) {
        _shown = true;
        return _box(
          _failure(context, ReaderImageLoader.errorOf(widget.page) ?? '$error'),
        );
      },
    );
    if (rect == null) return image;
    final wf = rect.width;
    final hf = rect.height;
    return FittedBox(
      fit: widget.fit,
      child: ClipRect(
        child: Align(
          alignment: Alignment(
            wf >= 1 ? 0 : -1 + 2 * rect.left / (1 - wf),
            hf >= 1 ? 0 : -1 + 2 * rect.top / (1 - hf),
          ),
          widthFactor: wf,
          heightFactor: hf,
          child: image,
        ),
      ),
    );
  }

  Widget _loading() => Watch(() {
    final value = ReaderImageLoader.progressOf(widget.page.url).value;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 160,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 6,
              color: Colors.white,
              backgroundColor: Colors.white24,
            ),
          ),
        ),
        if (value != null) ...[
          const SizedBox(height: 8),
          Text(
            '${(value * 100).round()}%',
            style: context.textTheme.labelMedium?.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
        if (slow.value) ...[
          const SizedBox(height: 12),
          Text(
            getString.readerSlowPage,
            style: context.textTheme.bodySmall?.copyWith(color: Colors.white54),
          ),
          const SizedBox(height: 8),
          _reload(),
        ],
      ],
    );
  });

  Widget _reload() => FilledButton.tonalIcon(
    onPressed: _retry,
    icon: const Icon(Icons.refresh_rounded),
    label: Text(getString.retry),
  );

  Widget _failure(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.broken_image_rounded,
            color: Colors.white70,
            size: 40,
          ),
          const SizedBox(height: 8),
          Text(
            getString.readerPageFailed,
            style: context.textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: context.textTheme.bodySmall?.copyWith(color: Colors.white60),
          ),
          const SizedBox(height: 12),
          _reload(),
        ],
      ),
    );
  }

  Widget _box(Widget child) => SizedBox(
    width: widget.width ?? double.infinity,
    height: widget.height ?? widget.placeholderHeight,
    child: Center(child: child),
  );
}
