import 'package:blurbox/blurbox.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../DataClass/Media.dart';
import '../../../Theme/ThemeManager.dart';
import '../../../Widgets/CustomElevatedButton.dart';
import '../MediaAdaptor.dart';

class MediaSection extends StatefulWidget {
  final BuildContext context;
  final int type;
  final String title;
  final bool isLarge;
  final List<Media>? mediaList;
  final List<Widget>? customNullListIndicator;
  final ScrollController? scrollController;
  final Widget? trailingIcon;
  final void Function()? onTrailingIconTap;
  final Function(int index, Media media)? onMediaTap;
  final void Function()? onLongPressTitle;

  const MediaSection({
    super.key,
    required this.context,
    required this.type,
    required this.title,
    this.isLarge = false,
    this.mediaList,
    this.customNullListIndicator,
    this.scrollController,
    this.trailingIcon,
    this.onTrailingIconTap,
    this.onMediaTap,
    this.onLongPressTitle,
  });

  @override
  State<MediaSection> createState() => _MediaSectionState();
}

class _MediaSectionState extends State<MediaSection> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isPhone = context.isPhone;

    final mediaContent = AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: MediaAdaptor(
        type: widget.type,
        mediaList: widget.mediaList,
        isLarge: widget.isLarge,
        scrollController: widget.scrollController,
        onMediaTap: widget.onMediaTap,
      ),
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitleRow(),
        const SizedBox(height: 8),
        mediaContent,
      ],
    );

    if (isPhone) return content;
    return ThemedWidget(
      context: context,
      materialWidget: Container(
        decoration: BoxDecoration(
          color: theme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: theme.outlineVariant,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: theme.shadow.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: content,
      ),
      glassWidget: PresetBlurBox(
        preset: BlurPreset.iosStyle,
        padding: EdgeInsets.zero,
        color: theme.surface.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30.0),
        child: content,
      ),
    );
  }

  Widget buildTitleRow() {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 16, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onLongPress: widget.onLongPressTitle,
              child: Text(
                widget.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: theme.colorScheme.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          widget.trailingIcon ??
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(3.14),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 24),
                  onPressed: () => widget.onTrailingIconTap?.call(),
                ),
              ),
        ],
      ),
    );
  }
}

List<Widget> buildNullIndicator(BuildContext context, IconData? icon,
    String? message, String? buttonLabel, void Function()? onPressed) {
  var theme = Theme.of(context).colorScheme;
  return [
    Icon(
      icon,
      color: theme.onSurface.withValues(alpha: 0.58),
      size: 32,
    ),
    Text(
      message ?? '',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        color: theme.onSurface.withValues(alpha: 0.58),
      ),
    ),
    if (buttonLabel != null) ...[
      const SizedBox(height: 24.0),
      CustomElevatedButton(
        context: context,
        onPressed: onPressed,
        label: buttonLabel,
      ),
    ]
  ];
}
