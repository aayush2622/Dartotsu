import 'dart:io';

import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Widgets/ScrollConfig.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

import '../../../DataClass/Media.dart';
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

  double fontSize = 16;
  double lineHeight = 1.5;
  String fontFamily = 'Poppins';
  Color textColor = Colors.white;
  Color backgroundColor = Colors.black;

  bool _restoredProgress = false;

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    _loadSettings();
    scrollController.addListener(_onScroll);

    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => _restoreProgress());
  }

  @override
  void dispose() {
    focusNode.dispose();
    scrollController.removeListener(_onScroll);
    scrollController.dispose();

    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }

    updateProgress();
    super.dispose();
  }

  String get _settingsKey => "novelReaderSettings";

  String get _progressKey {
    var sourceName = Get.context!.currentService(listen: false).getName;
    return "${widget.media.id}-${widget.currentChapter.episodeNumber}-$sourceName";
  }

  void _loadSettings() {
    fontSize = loadCustomData<double>("$_settingsKey-fontSize") ?? 16;
    lineHeight = loadCustomData<double>("$_settingsKey-lineHeight") ?? 1.5;
    fontFamily =
        loadCustomData<String>("$_settingsKey-fontFamily") ?? 'Poppins';
    textColor = Color(
      loadCustomData<int>("$_settingsKey-textColor") ?? Colors.white.value,
    );
    backgroundColor = Color(
      loadCustomData<int>("$_settingsKey-backgroundColor") ??
          Colors.black.value,
    );
  }

  void saveSettings() {
    saveCustomData("$_settingsKey-fontSize", fontSize);
    saveCustomData("$_settingsKey-lineHeight", lineHeight);
    saveCustomData("$_settingsKey-fontFamily", fontFamily);
    saveCustomData("$_settingsKey-textColor", textColor.value);
    saveCustomData("$_settingsKey-backgroundColor", backgroundColor.value);
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

  void updateProgress() {
    if (widget.isOffline) return;

    var incognito = loadData(PrefName.incognito);
    var chapterEnd = scrollProgress.value > 0.95;
    if (incognito || !chapterEnd) return;

    var service = context.currentService(listen: false);
    var saveProgress =
        loadCustomData<bool>(
          "${widget.media.id}-${service.getName}-saveProgress",
        ) ??
        true;

    if (saveProgress) {
      service.data.mutations?.setProgress(
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
      child: GestureDetector(
        onTap: () => showControls.value = !showControls.value,
        behavior: HitTestBehavior.opaque,
        child: Stack(
          alignment: Alignment.center,
          children: [_buildContent(), _buildOverlay()],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return ScrollConfig(
      context,
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
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
              ),
              "p": Style(margin: Margins.only(bottom: 12)),
            },
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
      scrollController.animateTo(
        (scrollController.offset + 250).clamp(
          0,
          scrollController.position.maxScrollExtent,
        ),
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      scrollController.animateTo(
        (scrollController.offset - 250).clamp(
          0,
          scrollController.position.maxScrollExtent,
        ),
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }
  }
}
