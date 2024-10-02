import 'package:flutter/material.dart';
import '../../../../../Widgets/ItemFollower.dart';
import '../../../../../DataClass/User.dart';

Widget FollowerWidget(BuildContext context, List<userData>? follower) {
  if(follower != null){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 0.0,
              children: List.generate(follower.length, (index) {
                return ItemFollower(context, follower[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
  else{
    return const SizedBox();
  }
}