import 'package:flutter/material.dart';

import '../../Core/Downloads/DownloadUsage.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import 'DownloadStorageState.dart';

class DownloadStorageScreen extends StatefulWidget {
  const DownloadStorageScreen({super.key});

  @override
  State<DownloadStorageScreen> createState() => _DownloadStorageScreenState();
}

class _DownloadStorageScreenState extends BaseScreen<DownloadStorageScreen>
    with ScreenStateHost<DownloadStorageScreen, DownloadStorageState> {
  @override
  DownloadStorageState buildState() => DownloadStorageState();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(title: getString.downloadStorageTitle),
      body: Watch(() {
        final usage = state.usage.value;
        if (state.loading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (usage.isEmpty) {
          return EmptyState(
            icon: Icons.sd_storage_outlined,
            title: getString.downloadStorageEmpty,
          );
        }
        final total = state.total;
        return ScrollConfig(
          context,
          child: ListView.builder(
            padding: EdgeInsets.all(Dimens.pagePad),
            itemCount: usage.length + 1,
            itemBuilder: (_, i) => i == 0
                ? Padding(
                    padding: EdgeInsets.only(bottom: Dimens.gap),
                    child: _summary(context, total),
                  )
                : _title(context, usage[i - 1], total),
          ),
        );
      }),
    );
  }

  Widget _summary(BuildContext context, int total) {
    final scheme = context.colorScheme;
    final watched = state.watchedBytes;
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formatBytes(total),
            style: context.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            getString.downloadStorageSummary(state.count, formatBytes(total)),
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gap),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              minHeight: 8,
              value: total == 0 ? 0 : watched / total,
            ),
          ),
          SizedBox(height: Dimens.gapXs),
          Text(
            getString.downloadStorageWatched(formatBytes(watched)),
            style: context.textTheme.labelMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gap),
          FilledButton.icon(
            onPressed: watched == 0 ? null : state.freeUp,
            icon: const Icon(Icons.cleaning_services_rounded),
            label: Text(getString.downloadFreeUp),
          ),
        ],
      ),
    );
  }

  Widget _title(BuildContext context, TitleUsage u, int total) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gapSm),
      child: SectionCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    u.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                PopupMenuButton<VoidCallback>(
                  icon: const Icon(Icons.more_vert_rounded),
                  onSelected: (run) => run(),
                  itemBuilder: (_) => [
                    PopupMenuItem(
                      value: () => state.deleteWatched(u),
                      enabled: u.watchedTasks.isNotEmpty,
                      child: Text(getString.downloadDeleteWatched),
                    ),
                    PopupMenuItem(
                      value: () => state.deleteAll(u),
                      child: Text(getString.downloadDeleteAll),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              getString.downloadStorageSummary(
                u.tasks.length,
                formatBytes(u.bytes),
              ),
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: Dimens.gapXs),
            ClipRRect(
              borderRadius: BorderRadius.circular(99),
              child: LinearProgressIndicator(
                minHeight: 6,
                value: total == 0 ? 0 : u.bytes / total,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
