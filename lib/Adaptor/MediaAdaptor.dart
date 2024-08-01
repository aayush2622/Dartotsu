import 'dart:ui';
import 'package:dantotsu/Function.dart';
import 'package:flutter/material.dart';
import '../Animation/ScaleAnimation.dart';
import '../DataClass/Media.dart';
import '../Screens/SettingsBottomSheet.dart';
import 'MediaItems/MediaViewHolder.dart';

class MediaGrid extends StatefulWidget {
  final int type;
  final List<media> mediaList;

  const MediaGrid({super.key, required this.type, required this.mediaList});

  @override
  MediaGridState createState() => MediaGridState();
}

class MediaGridState extends State<MediaGrid> {
  late List<media> _mediaList;

  @override
  void initState() {
    super.initState();
    _mediaList = widget.mediaList;
  }

  @override
  void didUpdateWidget(covariant MediaGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mediaList != widget.mediaList) {
      setState(() {
        _mediaList = widget.mediaList;
      });
    }
  }

  @override
  Widget build(BuildContext context) { // grid view for media
    return SizedBox(
      height: 250,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _mediaList.length,
            itemBuilder: (context, index) {
              final isFirst = index == 0;
              final isLast = index == _mediaList.length - 1;
              final margin = EdgeInsets.only(
                left: isFirst ? 24.0 : 6.5,
                right: isLast ? 24.0 : 6.5,
              );
              return SlideAndScaleAnimation(
                initialScale: 0.0,
                finalScale: 1.0,
                initialOffset: const Offset(1.0, 0.0),
                finalOffset: Offset.zero,
                duration: const Duration(milliseconds: 200),
                child: GestureDetector(
                  onTap: () => snackString(_mediaList[index].name),
                  onLongPress: () => settingsBottomSheet(context),
                  child: Container(
                    width: 102,
                    margin: margin,
                    child: MediaViewHolder(mediaInfo: _mediaList[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
