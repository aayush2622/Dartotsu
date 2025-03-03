import 'package:dartotsu/Adaptor/Charactes/StaffViewHolder.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/Character/CharacterScreen.dart';
import 'package:dartotsu/Screens/Staff/StaffScreen.dart';
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
  final List<Object> list;

  const EntityAdaptor({
    super.key,
    this.adaptorType = 1,
    required this.type,
    required this.list,
  });

  @override
  EntityAdaptorState createState() => EntityAdaptorState();
}

class EntityAdaptorState extends State<EntityAdaptor> {
  @override
  Widget build(BuildContext context) {
    switch (widget.adaptorType) {
      case 1:
        return _buildCharacterLayout();
      case 2:
        return _buildStaggeredGrid();
      default:
        return _buildCharacterLayout();
    }
  }

  Widget _buildStaggeredGrid() {
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
              widget.list.length,
              (index) {
                return GestureDetector(
                  onTap: () => onClick(index),
                  onLongPress: () {},
                  child: SizedBox(
                    width: 102,
                    height: 212,
                    child: _buildHolder(index),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildCharacterLayout() {
    return SizedBox(
      height: 212,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.list.length,
            itemBuilder: (context, index) {
              final isFirst = index == 0;
              final isLast = index == widget.list.length - 1;
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
                  onTap: () => onClick(index),
                  child: Container(
                    width: 102,
                    margin: margin,
                    child: _buildHolder(index),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildHolder(int index) {
    return widget.type == EntityType.Character
        ? CharacterViewHolder(
            charInfo: widget.list.whereType<character>().toList()[index])
        : widget.type == EntityType.Staff
            ? StaffViewHolder(
                staffInfo: widget.list.whereType<author>().toList()[index])
            : StudioViewHolder(
                studioInfo: widget.list.whereType<studio>().toList()[index]);
  }

  void onClick(int index) {
    if (widget.type == EntityType.Character) {
      navigateToPage(
          context,
          CharacterScreen(
              characterInfo:
                  widget.list.whereType<character>().toList()[index]));
    } else if (widget.type == EntityType.Staff) {
      navigateToPage(
          context,
          StaffScreen(
              staffInfo: widget.list.whereType<author>().toList()[index]));
    } else {
      navigateToPage(
          context,
          StudioScreen(
              studioInfo: widget.list.whereType<studio>().toList()[index]));
    }
  }
}
