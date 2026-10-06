import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';

class UserAvatar extends StatelessWidget {
  final String? url;
  final String name;
  final double size;

  const UserAvatar({
    super.key,
    required this.url,
    required this.name,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final fallback = ColoredBox(
      color: scheme.secondaryContainer,
      child: Center(
        child: Text(
          name.isEmpty ? '?' : name.characters.first.toUpperCase(),
          style: TextStyle(
            color: scheme.onSecondaryContainer,
            fontWeight: FontWeight.w800,
            fontSize: size * 0.42,
          ),
        ),
      ),
    );
    return ClipOval(
      child: SizedBox(
        width: size,
        height: size,
        child: url == null || url!.isEmpty
            ? fallback
            : cachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
                width: size,
                height: size,
                placeholder: (_, _) => fallback,
                errorWidget: (_, _, _) => fallback,
              ),
      ),
    );
  }
}
