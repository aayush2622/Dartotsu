import 'package:flutter/material.dart';

import '../../../DataClass/Media.dart';
import '../../../Widgets/CustomElevatedButton.dart';
import '../MediaAdaptor.dart';

Widget MediaSection({
  required BuildContext context,
  required int type,
  required String title,
  bool isLarge = false,
  List<Media>? mediaList,
  List<Widget>? customNullListIndicator,
  ScrollController? scrollController,
  Widget? trailingIcon,
  Function(int index, Media media)? onMediaTap,
  void Function()? onLongPressTitle,
}) {
  var theme = Theme.of(context);

  Widget buildTitleRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title Text
          Expanded(
            child: GestureDetector(
              onLongPress: onLongPressTitle,
              child: Text(
                title,
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
          // Arrow Icon
          trailingIcon ??
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(3.14),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 24),
                  onPressed: () {},
                ),
              ),
        ],
      ),
    );
  }

  Widget buildEmptyState() {
    return SizedBox(
      height: 250,
      child: Center(
        child: customNullListIndicator?.isNotEmpty ?? false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: customNullListIndicator!,
              )
            : const Text(
                'Nothing here',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
      ),
    );
  }

  Widget buildMediaContent() {
    return mediaList == null
        ? const SizedBox(
            height: 250,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : mediaList.isEmpty
            ? buildEmptyState()
            : MediaAdaptor(
                type: type,
                mediaList: mediaList,
                isLarge: isLarge,
                scrollController: scrollController,
                onMediaTap: onMediaTap,
              );
  }

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTitleRow(),
      const SizedBox(height: 8),
      AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: buildMediaContent(),
      ),
    ],
  );
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
