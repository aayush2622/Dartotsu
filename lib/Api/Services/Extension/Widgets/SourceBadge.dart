import 'package:flutter/material.dart';

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';

Widget? extensionSourceBadge(Media media) {
  final url = media.sourceData?.iconUrl;
  if (url == null || url.isEmpty) return null;
  return _SourceBadge(url: url);
}

class _SourceBadge extends StatelessWidget {
  final String url;

  const _SourceBadge({required this.url});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: scheme.inverseSurface.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(6),
      ),
      clipBehavior: Clip.antiAlias,
      child: cachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        errorWidget: (_, _, _) => Icon(
          Icons.extension_rounded,
          size: 12,
          color: scheme.onInverseSurface,
        ),
      ),
    );
  }
}
