import 'package:dartotsu/Adaptor/Charactes/StaffViewHolder.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/Character/CharacterScreen.dart';
import 'package:dartotsu/Screens/Staff/StaffScreen.dart';
import 'package:flutter/material.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Author.dart';
import '../../DataClass/Character.dart';
import '../../Widgets/ScrollConfig.dart';
import 'CharacterViewHolder.dart';
import 'Widgets/EntitySection.dart';

class EntityAdaptor extends StatefulWidget {
  final EntityType type;
  final List<character>? characterList;
  final List<author>? staffList;

  const EntityAdaptor(
      {super.key, required this.type, this.characterList, this.staffList});

  @override
  EntityAdaptorState createState() => EntityAdaptorState();
}

class EntityAdaptorState extends State<EntityAdaptor> {
  @override
  Widget build(BuildContext context) {
    return _buildCharacterLayout(widget.characterList, widget.staffList);
  }

  Widget _buildCharacterLayout(
    final List<character>? characterList,
    final List<author>? staffList,
  ) {
    var listType = widget.type;
    var length = listType == EntityType.Character
        ? characterList!.length
        : staffList!.length;
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
                  onTap: () => listType == EntityType.Character
                      ? navigateToPage(context,
                          CharacterScreen(characterInfo: characterList![index]))
                      : navigateToPage(
                          context, StaffScreen(staffInfo: staffList![index])),
                  child: Container(
                    width: 102,
                    margin: margin,
                    child: listType == EntityType.Character
                        ? CharacterViewHolder(charInfo: characterList![index])
                        : StaffViewHolder(staffInfo: staffList![index]),
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
