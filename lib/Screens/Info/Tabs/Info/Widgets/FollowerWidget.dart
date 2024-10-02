import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Functions/string_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../Animation/ScaleAnimation.dart';
import '../../../../../DataClass/User.dart';
import '../../../../../Widgets/ItemFollower.dart';
import '../../../../../Widgets/ScrollConfig.dart';
import '../../../../../api/Anilist/Anilist.dart';

Widget FollowerWidget(BuildContext context, List<userData>? follower) {
  if (follower == null) return const SizedBox();
  int targetIndex = follower.indexWhere((user) => Anilist.username.value.isEqualTo(user.name) );
  if (targetIndex != -1) {
    userData target = follower[targetIndex];
    follower.removeAt(targetIndex);
    follower.insert(0, target);
  }
  return SizedBox(
    height: 250,
    child: AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: ScrollConfig(
        context,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: follower.length,
          itemBuilder: (context, index) {
            final isFirst = index == 0;
            final isLast = index == follower.length - 1;
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
                onTap: () => snackString('ss'),
                onLongPress: () => snackString('s'),
                child: Container(
                  width: 102,
                  margin: margin,
                  child: ItemFollower(context, follower[index]),
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}

