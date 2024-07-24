import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../Animation/ScaleAnimation.dart';
import '../DataClass/Media.dart';
import '../Screens/SettingsBottomSheet.dart';
import 'MediaItems/MediaViewHolder.dart';

class MediaGrid extends StatefulWidget {
  final int type;
  final List<media> mediaList;

  const MediaGrid({super.key, required this.type, required this.mediaList});

  @override
  _MediaGridState createState() => _MediaGridState();
}

class _MediaGridState extends State<MediaGrid> with TickerProviderStateMixin {
  late List<media> _mediaList;
  final ValueNotifier<Set<int>> _visibleItems = ValueNotifier<Set<int>>({});

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
      _visibleItems.value = {};
    }
  }

  @override
  void dispose() {
    _visibleItems.dispose();
    super.dispose();
  }

  void _onVisibilityChanged(int index, bool visible) {
    final newSet = {..._visibleItems.value};
    if (visible) {
      newSet.add(index);
    } else {
      newSet.remove(index);
    }
    _visibleItems.value = newSet;
  }

  @override
  Widget build(BuildContext context) {
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

              return VisibilityDetector(
                key: Key('item-$index'),
                onVisibilityChanged: (visibilityInfo) {
                  _onVisibilityChanged(
                      index, visibilityInfo.visibleFraction > 0.0);
                },
                child: SlideAndScaleAnimation(
                  initialScale: 0.0,
                  finalScale: 1.0,
                  initialOffset: const Offset(1.0, 0.0),
                  finalOffset: Offset.zero,
                  duration: const Duration(milliseconds: 200),
                  child: GestureDetector(
                    onTap: () {},
                    onLongPress: () => settingsBottomSheet(context),
                    child: Container(
                      width: 102,
                      margin: const EdgeInsets.symmetric(horizontal: 6.5),
                      child: MediaViewHolder(Media: _mediaList[index]),
                    ),
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
