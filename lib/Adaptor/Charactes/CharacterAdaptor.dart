import 'dart:async';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Character.dart';
import '../../Screens/Settings/SettingsBottomSheet.dart';
import '../../Widgets/ScrollConfig.dart';
import 'CharacterViewHolder.dart';

class CharacterAdaptor extends StatefulWidget {
  final int type;
  final List<character> characterList;

  const CharacterAdaptor({super.key, required this.type, required this.characterList});

  @override
  MediaGridState createState() => MediaGridState();
}

class MediaGridState extends State<CharacterAdaptor> {
  late List<character> _charList;

  @override
  void initState() {
    super.initState();
    _charList = widget.characterList;
  }

  @override
  void didUpdateWidget(covariant CharacterAdaptor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.characterList != widget.characterList) {
      setState(() {
        _charList = widget.characterList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 0:
        return _buildGridLayout();
      case 1:
        return LargeView(mediaList: _charList);
      case 2:
        return _buildListLayout();
      default:
        return const SizedBox();
    }
  }
  Widget _buildListLayout() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: Container(
        constraints: const BoxConstraints(
            maxHeight: double.infinity
        ),
        child: SingleChildScrollView(
          child: Column(
            children: _charList.map((m) {
              return SlideAndScaleAnimation(
                initialScale: 0.0,
                finalScale: 1.0,
                initialOffset: const Offset(1.0, 0.0),
                finalOffset: Offset.zero,
                duration: const Duration(milliseconds: 200),
                child: GestureDetector(
                  onTap: () => (),
                  onLongPress: () => settingsBottomSheet(context),
                  child: Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                    child: const SizedBox()
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
  Widget _buildGridLayout() {
    return SizedBox(
      height: 250,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _charList.length,
            itemBuilder: (context, index) {
              final isFirst = index == 0;
              final isLast = index == _charList.length - 1;
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
                  onTap: () =>(),
                  onLongPress: () => settingsBottomSheet(context),
                  child: Container(
                    width: 102,
                    margin: margin,
                    child: CharacterViewHolder(charInfo: _charList[index]),
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

class LargeView extends StatefulWidget {
  final List<character> mediaList;

  const LargeView({super.key, required this.mediaList});

  @override
  LargeViewState createState() => LargeViewState();
}

class LargeViewState extends State<LargeView> {
  late PageController _pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_pageController.hasClients) {
        final page = _pageController.page?.toInt() ?? 0;
        final nextPage = (page + 1) % widget.mediaList.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 464 + (0.statusBar() * 2),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.mediaList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    (),
                onLongPress: () => settingsBottomSheet(context),
                child: const SizedBox(),
              );
            },
          ),
        ),
      ),
    );
  }
}
