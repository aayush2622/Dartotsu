
import 'package:dantotsu/Adaptor/Charactes/StaffViewHolder.dart';
import 'package:flutter/material.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Character.dart';
import '../../DataClass/Author.dart';
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
        return _buildCharacterLayout();
      default:
        return const SizedBox();
    }
  }
  Widget _buildCharacterLayout() {
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



// For Staff
class StaffAdaptor extends StatefulWidget {
  final int type;
  final List<author> staffList;

  const StaffAdaptor({super.key, required this.type, required this.staffList});

  @override
  MediaGridStateStaff createState() => MediaGridStateStaff();
}
class MediaGridStateStaff extends State<StaffAdaptor> {
  late List<author> _staffList;

  @override
  void initState() {
    super.initState();
    _staffList = widget.staffList;
  }

  @override
  void didUpdateWidget(covariant StaffAdaptor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.staffList != widget.staffList) {
      setState(() {
        _staffList = widget.staffList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 0:
        return _buildStaffLayout();
      default:
        return const SizedBox();
    }
  }

  Widget _buildStaffLayout() {
    return SizedBox(
      height: 250,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _staffList.length,
            itemBuilder: (context, index) {
              final isFirst = index == 0;
              final isLast = index == _staffList.length - 1;
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
                  onTap: () => (),
                  onLongPress: () => settingsBottomSheet(context),
                  child: Container(
                    width: 108,
                    margin: margin,
                    child: StaffViewHolder(staffInfo: _staffList[index]),
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
