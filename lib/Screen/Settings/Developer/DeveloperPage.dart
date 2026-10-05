import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'Components/DeveloperCard.dart';
import 'Developer.dart';

const _skeletonDeveloper = Developer(
  name: 'Loading name',
  githubId: '',
  pfp: '',
  banner: '',
  uri: '',
  role: 'Loading role',
);

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends BaseScreen<DeveloperPage> {
  late final _future = loadDevelopers();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<List<Developer>>(
        future: _future,
        builder: (context, snapshot) {
          final loading = snapshot.connectionState != ConnectionState.done;
          final developers = snapshot.data ?? const [];
          final items = loading
              ? List.filled(8, _skeletonDeveloper)
              : developers;

          final grid = CustomScrollConfig(
            context,
            children: [
              SliverAppBar.medium(
                backgroundColor: Colors.transparent,
                titleSpacing: 4,
                leading: Skeleton.keep(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: context.colorScheme.primary,
                    ),
                    onPressed: () => popPage(context),
                  ),
                ),
                title: Text(
                  getString.contributors,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
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
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 360,
                      mainAxisExtent: 220,
                      crossAxisSpacing: Dimens.gap,
                      mainAxisSpacing: Dimens.gap,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, i) =>
                          DeveloperCard(developer: items[i], skeleton: loading),
                      childCount: items.length,
                    ),
                  ),
                ),
            ],
          );

          return loading ? Skeletonizer(child: grid) : grid;
        },
      ),
    );
  }

  Widget _empty(BuildContext context) {
    final scheme = context.colorScheme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.cloud_off_rounded,
            size: 44,
            color: scheme.onSurfaceVariant,
          ),
          SizedBox(height: Dimens.gap),
          Text(
            getString.contributorsLoadFailed,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
