import 'package:flutter/material.dart';
import '../../../Widgets/Components/AppBars.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Components/ThemedContainer.dart';
import 'Components/ForkTile.dart';
import 'Forks.dart';
import '../../../Widgets/Components/EmptyState.dart';

const _skeletonFork = AppFork(
  ownerName: 'owner',
  ownerAvatar: '',
  repoName: 'Dartotsu',
  uri: '',
);

class ForksPage extends StatefulWidget {
  const ForksPage({super.key});

  @override
  State<ForksPage> createState() => _ForksPageState();
}

class _ForksPageState extends BaseScreen<ForksPage> {
  late final _future = loadForks();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<List<AppFork>>(
        future: _future,
        builder: (context, snapshot) {
          final loading = snapshot.connectionState != ConnectionState.done;
          final forks = snapshot.data ?? const [];
          final items = loading ? List.filled(8, _skeletonFork) : forks;

          final scaffold = CustomScrollConfig(
            context,
            children: [
              AppSliverBar(title: getString.forks),
              if (!loading && items.isEmpty)
                SliverFillRemaining(child: _empty(context))
              else
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(
                    Dimens.pagePad,
                    Dimens.gapXs,
                    Dimens.pagePad,
                    Dimens.gapXl,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: ClipRRect(
                      borderRadius: Dimens.border,
                      child: ThemedContainer(
                        color: context.colorScheme.surfaceContainerLow,
                        borderRadius: Dimens.border,
                        padding: EdgeInsets.zero,
                        child: Column(
                          children: [
                            for (var i = 0; i < items.length; i++) ...[
                              if (i > 0)
                                Divider(
                                  height: 1,
                                  indent: 68,
                                  endIndent: 16,
                                  color: context.colorScheme.outlineVariant
                                      .withValues(alpha: 0.5),
                                ),
                              ForkTile(fork: items[i], skeleton: loading),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          );

          return loading ? Skeletonizer(child: scaffold) : scaffold;
        },
      ),
    );
  }

  Widget _empty(BuildContext context) =>
      EmptyState(icon: Icons.call_split_rounded, title: getString.forksEmpty);
}
