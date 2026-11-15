import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Api/Services/Extension/SourceTags.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';

String sourceTagLabel(SourceTag tag) => switch (tag) {
  SourceTag.anime => getString.sourceTagAnime,
  SourceTag.movies => getString.sourceTagMovies,
  SourceTag.adult => getString.sourceTagAdult,
};

Future<void> showSourceTagsSheet(BuildContext context, Source source) =>
    showCustomBottomDialog<void>(
      context,
      AppSheet(
        title: source.name ?? getString.sourceTags,
        child: _SourceTags(source: source),
      ),
    );

class _SourceTags extends StatelessWidget {
  final Source source;

  const _SourceTags({required this.source});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        0,
        Dimens.pagePad,
        Dimens.gapLg,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            getString.sourceTagsHint,
            textAlign: TextAlign.center,
            style: context.textTheme.bodySmall?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gap),
          Watch(() {
            final tags = sourceTagsOf(source);
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                for (final tag in sourceTagsFor(source))
                  FilterChip(
                    label: Text(sourceTagLabel(tag)),
                    selected: tags.contains(tag),
                    onSelected: (on) => setSourceTags(source, {
                      for (final t in SourceTag.values)
                        if (t == tag ? on : tags.contains(t)) t,
                    }),
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
