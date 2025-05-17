import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../Animation/ScaleAnimation.dart';
import '../../../../../Api/Anilist/Anilist.dart';
import '../../../../../DataClass/User.dart';
import '../../../../../Widgets/ScrollConfig.dart';
import 'ItemFollower.dart';

class FollowerWidget extends StatelessWidget {
  final List<userData>? follower;
  final String type;

  const FollowerWidget({super.key, this.follower, required this.type});

  @override
  Widget build(BuildContext context) {
    if (follower == null || follower!.isEmpty) return const SizedBox();

    final followers = List<userData>.from(follower!);
    final targetIndex = followers
        .indexWhere((user) => Anilist.username.value.isEqualTo(user.name));
    if (targetIndex != -1) {
      final targetUser = followers.removeAt(targetIndex);
      followers.insert(0, targetUser);
    }

    const animationDuration = Duration(milliseconds: 200);
    const paddingValue = 12.0;
    const marginValue = 6.5;

    return SizedBox(
      height: 250,
      child: ScrollConfig(
        context,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: followers.length,
          padding: const EdgeInsets.symmetric(horizontal: paddingValue),
          itemBuilder: (context, index) {
            final margin = EdgeInsets.only(
              left: index == 0 ? paddingValue : marginValue,
              right: index == followers.length - 1 ? paddingValue : marginValue,
            );

            return SlideAndScaleAnimation(
              initialScale: 0.0,
              finalScale: 1.0,
              initialOffset: const Offset(1.0, 0.0),
              finalOffset: Offset.zero,
              duration: animationDuration,
              child: GestureDetector(
                onTap: () => snackString('Tapped'),
                onLongPress: () => snackString('Long Pressed'),
                child: Container(
                  width: 102,
                  margin: margin,
                  child: ItemFollower(context, followers[index], type),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
