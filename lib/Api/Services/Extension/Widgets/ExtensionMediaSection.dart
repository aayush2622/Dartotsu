import 'package:flutter/widgets.dart';

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Widgets/Shelf/MediaSection.dart';
import 'ExtensionSourceBadge.dart';

class ExtensionMediaSection extends MediaSection {
  const ExtensionMediaSection({super.key, required super.data});

  @override
  Widget? overlay(Media media) => extensionSourceBadge(media);
}
