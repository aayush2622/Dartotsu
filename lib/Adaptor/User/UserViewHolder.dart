import 'package:dartotsu/DataClass/User.dart';
import 'package:flutter/material.dart';

import '../../Widgets/CachedNetworkImage.dart';

class UserViewHolder extends StatelessWidget {
  final userData user;

  const UserViewHolder({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            elevation: 2,
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: Container(
              width: 92,
              height: 92,
              color: Colors.transparent,
              child: cachedNetworkImage(
                imageUrl: user.pfp.toString(),
                fit: BoxFit.cover,
                height: 92,
                width: 92,
                errorWidget: (context, url, error) => const SizedBox.shrink(),
                placeholder: (context, url) => Container(
                  color: Colors.white12,
                  width: 92,
                  height: 92,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
              color: theme.onSurface,
              fontFamily: 'Poppins-SemiBold',
            ),
          ),
        ],
      ),
    );
  }
}
