import '../../../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../Forks.dart';

class ForkTile extends StatelessWidget {
  final AppFork fork;
  final bool skeleton;

  const ForkTile({super.key, required this.fork, this.skeleton = false});

  String get _subtitle {
    final parts = <String>['${fork.stars} ★'];
    final pushed = fork.pushedAt;
    if (pushed != null) parts.add(_relative(pushed));
    return parts.join(' · ');
  }

  String _relative(DateTime time) {
    final days = DateTime.now().difference(time).inDays;
    if (days < 1) return 'today';
    if (days < 30) return '${days}d ago';
    if (days < 365) return '${days ~/ 30}mo ago';
    return '${days ~/ 365}y ago';
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return DpadTap(
      onTap: skeleton ? null : () => openLinkInBrowser(fork.uri),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            ClipOval(
              child: SizedBox(
                width: 36,
                height: 36,
                child: skeleton || fork.ownerAvatar.isEmpty
                    ? ColoredBox(color: scheme.surfaceContainerHighest)
                    : cachedNetworkImage(
                        imageUrl: fork.ownerAvatar,
                        fit: BoxFit.cover,
                        placeholder: (_, _) =>
                            ColoredBox(color: scheme.surfaceContainerHighest),
                        errorWidget: (_, _, _) => Icon(
                          Icons.person_rounded,
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${fork.ownerName}/${fork.repoName}',
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    _subtitle,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Icon(Icons.open_in_new_rounded, color: scheme.primary, size: 20),
          ],
        ),
      ),
    );
  }
}
