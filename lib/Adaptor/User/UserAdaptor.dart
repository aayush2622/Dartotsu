import 'dart:math';

import 'package:dartotsu/DataClass/User.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../Widgets/ScrollConfig.dart';
import 'UserLargeViewHolder.dart';
import 'UserViewHolder.dart';

class UserAdaptor extends StatefulWidget {
  final int type;
  final List<userData> list;

  const UserAdaptor({
    super.key,
    required this.type,
    required this.list,
  });

  @override
  UserAdaptorState createState() => UserAdaptorState();
}

class UserAdaptorState extends State<UserAdaptor> {
  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 1:
        return _buildVerticalList();
      case 2:
        return _buildStaggeredGrid();
      default:
        return _buildVerticalList();
    }
  }

  String _generateTag(int index) =>
      '${widget.list[index].id}${Random().nextInt(100000)}';

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
                    height: 150,
                    child: UserViewHolder(user: widget.list[index]),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void onClick(int index) {
    snackString("not implemented yet");
  }

  Widget _buildVerticalList() {
    return ScrollConfig(
      context,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: GestureDetector(
              onTap: () => onClick(index),
              child: UserLargeViewHolder(
                user: widget.list[index],
                tag: _generateTag(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
