import 'dart:async';
import 'dart:io';

import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Widgets/ScrollConfig.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../DataClass/Media.dart';
import '../../../Services/MediaService.dart';
import 'Novelreadercontroller.dart';

class NovelReader extends StatefulWidget {
  final Media media;
  final DEpisode currentChapter;
  final String htmlContent;
  final Source source;
  final bool isOffline;

  const NovelReader({
    super.key,
    required this.media,
    required this.currentChapter,
    required this.htmlContent,
    required this.source,
    this.isOffline = false,
  });

  @override
  State<NovelReader> createState() => NovelReaderState();
}

class NovelReaderState extends State<NovelReader> {
  late final FocusNode focusNode = FocusNode();
  late final ScrollController scrollController = ScrollController();

  final showControls = true.obs;
  final scrollProgress = 0.0.obs; // 0.0 - 1.0
  final isAutoScrolling = false.obs;

  double fontSize = 16;
  double lineHeight = 1.5;
  String fontFamily = 'Poppins';
  TextAlign textAlign = TextAlign.left;
  Color textColor = Colors.white;
  Color backgroundColor = Colors.black;
  double autoScrollSpeed = 40; // pixels per second
  bool autoNextChapter = false;

  late final int wordCount;
  Timer? _autoScrollTimer;
  bool _restoredProgress = false;

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    _loadSettings();
    wordCount = _computeWordCount(widget.htmlContent);
    scrollController.addListener(_onScroll);
    WakelockPlus.enable();

    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => _restoreProgress());
  }

  late final MediaService _service;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _service = context.currentService(listen: false);
  }

  @override
  void dispose() {
    focusNode.dispose();
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    _autoScrollTimer?.cancel();
    WakelockPlus.disable();

    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }

    updateProgress();
    super.dispose();
  }

  String get _settingsKey => "novelReaderSettings";

  String get _progressKey {
    var sourceName = _service.getName;
    return "${widget.media.id}-${widget.currentChapter.episodeNumber}-$sourceName";
  }

  int _computeWordCount(String html) {
    final text = html.replaceAll(RegExp(r'<[^>]*>'), ' ');
    return RegExp(r'\S+').allMatches(text).length;
  }

  /// Rough estimate assuming ~200 words/minute average reading speed.
  int get minutesRemaining {
    if (wordCount == 0) return 0;
    final remainingWords = wordCount * (1 - scrollProgress.value);
    return (remainingWords / 200).ceil().clamp(0, 999);
  }

  void _loadSettings() {
    fontSize = loadCustomData<double>("$_settingsKey-fontSize") ?? 16;
    lineHeight = loadCustomData<double>("$_settingsKey-lineHeight") ?? 1.5;
    fontFamily =
        loadCustomData<String>("$_settingsKey-fontFamily") ?? 'Poppins';
    textAlign = (loadCustomData<int>("$_settingsKey-textAlign") ?? 0) == 1
        ? TextAlign.justify
        : TextAlign.left;
    textColor = Color(
      loadCustomData<int>("$_settingsKey-textColor") ?? Colors.white.value,
    );
    backgroundColor = Color(
      loadCustomData<int>("$_settingsKey-backgroundColor") ??
          Colors.black.value,
    );
    autoScrollSpeed =
        loadCustomData<double>("$_settingsKey-autoScrollSpeed") ?? 40;
    autoNextChapter =
        loadCustomData<bool>("$_settingsKey-autoNextChapter") ?? false;
  }

  void saveSettings() {
    saveCustomData("$_settingsKey-fontSize", fontSize);
    saveCustomData("$_settingsKey-lineHeight", lineHeight);
    saveCustomData("$_settingsKey-fontFamily", fontFamily);
    saveCustomData(
      "$_settingsKey-textAlign",
      textAlign == TextAlign.justify ? 1 : 0,
    );
    saveCustomData("$_settingsKey-textColor", textColor.value);
    saveCustomData("$_settingsKey-backgroundColor", backgroundColor.value);
  }

  void setAutoScrollSpeed(double speed) {
    autoScrollSpeed = speed;
    saveCustomData("$_settingsKey-autoScrollSpeed", speed);
  }

  void setAutoNextChapter(bool value) {
    autoNextChapter = value;
    saveCustomData("$_settingsKey-autoNextChapter", value);
  }

  void _restoreProgress() {
    if (widget.isOffline) return;
    final saved = loadCustomData<double>("$_progressKey-scrollProgress");
    if (saved != null && saved > 0) {
      // Wait one more frame so Html has laid out and maxScrollExtent is real.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        jumpToProgress(saved);
        _restoredProgress = true;
      });
    } else {
      _restoredProgress = true;
    }
  }

  void _onScroll() {
    if (!scrollController.hasClients) return;
    final max = scrollController.position.maxScrollExtent;
    final offset = scrollController.offset;
    scrollProgress.value = max > 0 ? (offset / max).clamp(0.0, 1.0) : 0.0;

    if (_restoredProgress && !widget.isOffline) {
      saveCustomData("$_progressKey-scrollProgress", scrollProgress.value);
    }
  }

  void jumpToProgress(double progress) {
    if (!scrollController.hasClients) return;
    final max = scrollController.position.maxScrollExtent;
    scrollController.jumpTo(max * progress.clamp(0.0, 1.0));
  }

  void _scrollByViewport(int direction) {
    if (!scrollController.hasClients) return;
    stopAutoScroll();
    final viewport = scrollController.position.viewportDimension * 0.9;
    final target = (scrollController.offset + viewport * direction).clamp(
      0.0,
      scrollController.position.maxScrollExtent,
    );
    scrollController.animateTo(
      target,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

  void toggleAutoScroll() {
    isAutoScrolling.value ? stopAutoScroll() : startAutoScroll();
  }

  void startAutoScroll() {
    if (!scrollController.hasClients) return;
    isAutoScrolling.value = true;
    _autoScrollTimer?.cancel();
    _autoScrollTimer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      if (!scrollController.hasClients) {
        stopAutoScroll();
        return;
      }
      final max = scrollController.position.maxScrollExtent;
      final next = (scrollController.offset + autoScrollSpeed * 0.05).clamp(
        0.0,
        max,
      );
      scrollController.jumpTo(next);
      if (next >= max) stopAutoScroll();
    });
  }

  void stopAutoScroll() {
    if (!isAutoScrolling.value) return;
    isAutoScrolling.value = false;
    _autoScrollTimer?.cancel();
  }

  void updateProgress() {
    if (widget.isOffline) return;

    var incognito = loadData(PrefName.incognito);
    var chapterEnd = scrollProgress.value > 0.95;
    if (incognito || !chapterEnd) return;

    var saveProgress =
        loadCustomData<bool>(
          "${widget.media.id}-${_service.getName}-saveProgress",
        ) ??
        true;

    if (saveProgress) {
      _service.data.mutations?.setProgress(
        widget.media,
        widget.currentChapter.episodeNumber,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backgroundColor, body: _buildReader());
  }

  Widget _buildReader() {
    return KeyboardListener(
      focusNode: focusNode,
      onKeyEvent: _handleKeyPress,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (details) => _handleTapZone(details, constraints),
            child: Stack(
              alignment: Alignment.center,
              children: [_buildContent(), _buildOverlay()],
            ),
          );
        },
      ),
    );
  }

  void _handleTapZone(TapUpDetails details, BoxConstraints constraints) {
    final dy = details.localPosition.dy;
    final h = constraints.maxHeight;
    if (dy < h * 0.25) {
      _scrollByViewport(-1);
    } else if (dy > h * 0.75) {
      _scrollByViewport(1);
    } else {
      showControls.value = !showControls.value;
    }
  }

  Widget _buildContent() {
    return ScrollConfig(
      context,
      child: NotificationListener<ScrollStartNotification>(
        onNotification: (notification) {
          if (isAutoScrolling.value && notification.dragDetails != null) {
            stopAutoScroll();
          }
          return false;
        },
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: fontSize,
              height: lineHeight,
              color: textColor,
              fontFamily: fontFamily,
            ),
            child: Html(
              data: widget.htmlContent,
              style: {
                "body": Style(
                  fontSize: FontSize(fontSize),
                  lineHeight: LineHeight(lineHeight),
                  color: textColor,
                  fontFamily: fontFamily,
                  textAlign: textAlign,
                  margin: Margins.zero,
                  padding: HtmlPaddings.zero,
                ),
                "p": Style(margin: Margins.only(bottom: 12)),
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverlay() {
    return Obx(() {
      return Positioned.fill(
        child: IgnorePointer(
          ignoring: !showControls.value,
          child: AnimatedOpacity(
            opacity: showControls.value ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: NovelReaderController(reader: this),
          ),
        ),
      );
    });
  }

  void _handleKeyPress(KeyEvent event) {
    if (event is! KeyDownEvent) return;

    if (event.logicalKey == LogicalKeyboardKey.arrowDown ||
        event.logicalKey == LogicalKeyboardKey.space) {
      _nudgeScroll(250);
    } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      _nudgeScroll(-250);
    } else if (event.logicalKey == LogicalKeyboardKey.pageDown) {
      _scrollByViewport(1);
    } else if (event.logicalKey == LogicalKeyboardKey.pageUp) {
      _scrollByViewport(-1);
    } else if (event.logicalKey == LogicalKeyboardKey.home) {
      stopAutoScroll();
      scrollController.jumpTo(0);
    } else if (event.logicalKey == LogicalKeyboardKey.end) {
      stopAutoScroll();
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    }
  }

  void _nudgeScroll(double delta) {
    stopAutoScroll();
    scrollController.animateTo(
      (scrollController.offset + delta).clamp(
        0,
        scrollController.position.maxScrollExtent,
      ),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }
}
