import 'package:dantotsu/Adaptor/Charactes/StaffViewHolder.dart';
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Character/CharacterScreen.dart';
import 'package:dantotsu/Screens/Staff/StaffScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Author.dart';
import '../../DataClass/Character.dart';
import '../../DataClass/Studio.dart';
import '../../Widgets/ScrollConfig.dart';
import 'CharacterViewHolder.dart';
import 'Widgets/EntitySection.dart';

class EntityAdaptor extends StatefulWidget {
  final EntityType type;

  final int? adaptorType;
  final List<character>? characterList;
  final List<author>? staffList;

  final List<studio>? studioList;

  const EntityAdaptor({
    super.key,
    required this.type,
    this.characterList,
    this.staffList,
    this.adaptorType,
    this.studioList,
  });

  @override
  EntityAdaptorState createState() => EntityAdaptorState();
}

class EntityAdaptorState extends State<EntityAdaptor> {
  @override
  Widget build(BuildContext context) {
    switch (widget.adaptorType) {
      case 1:
        return _buildCharacterLayout(
            widget.characterList, widget.staffList, widget.studioList);
      case 2:
        return _buildStaggeredGrid(
            widget.characterList, widget.staffList, widget.studioList);
      default:
        return _buildCharacterLayout(
            widget.characterList, widget.staffList, widget.studioList);
    }
  }

  Widget _buildStaggeredGrid(
    final List<character>? characterList,
    final List<author>? staffList,
    final List<studio>? studioList,
  ) {
    var listType = widget.type;
    var length = listType == EntityType.Character
        ? characterList!.length : listType == EntityType.Staff ? staffList!.length
        : studioList!.length;
    return LayoutBuilder(
      builder: (context, constraints) {
        final parentWidth = constraints.maxWidth;
        var crossAxisCount = (parentWidth / 124).floor();
        if (crossAxisCount < 1) crossAxisCount = 1;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: StaggeredGrid.count(
            crossAxisSpacing: 16,
            crossAxisCount: crossAxisCount,
            children: List.generate(
              length,
              (index) {
                return GestureDetector(
                  onTap: () => onClick(listType, index),
                  onLongPress: () {},
                  child: SizedBox(
                    width: 102,
                    height: 212,
                    child: listType == EntityType.Character
                        ? CharacterViewHolder(charInfo: characterList![index])
                        : listType == EntityType.Staff
                            ? StaffViewHolder(staffInfo: staffList![index])
                            : StudioViewHolder(studioInfo: studioList![index]),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildCharacterLayout(
    final List<character>? characterList,
    final List<author>? staffList,
    final List<studio>? studioList,
  ) {
    var listType = widget.type;
    var length = listType == EntityType.Character
        ? characterList!.length : listType == EntityType.Staff ? staffList!.length
        : studioList!.length;
    return SizedBox(
      height: 212,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: length,
            itemBuilder: (context, index) {
              final isFirst = index == 0;
              final isLast = index == length - 1;
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
                  onTap: () => onClick(listType, index),
                  child: Container(
                    width: 102,
                    margin: margin,
                    child: listType == EntityType.Character
                        ? CharacterViewHolder(charInfo: characterList![index])
                        : listType == EntityType.Staff
                        ? StaffViewHolder(staffInfo: staffList![index])
                        : StudioViewHolder(studioInfo: studioList![index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void onClick(EntityType type, int index) {
    if (type == EntityType.Character) {
      navigateToPage(context,
          CharacterScreen(characterInfo: widget.characterList![index]));
    } else if (type == EntityType.Staff) {
      navigateToPage(context, StaffScreen(staffInfo: widget.staffList![index]));
    } else {
      navigateToPage(context, StudioScreen(studioInfo: widget.studioList![index]));
    }
  }
}
