import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/Api/Chiaki.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Core/State/State.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'WatchOrderState.dart';

class WatchOrderScreen extends StatefulWidget {
  final MediaService service;
  final Media media;

  const WatchOrderScreen({
    super.key,
    required this.service,
    required this.media,
  });

  @override
  State<WatchOrderScreen> createState() => _WatchOrderScreenState();
}

class _WatchOrderScreenState extends BaseScreen<WatchOrderScreen>
    with ScreenStateHost<WatchOrderScreen, WatchOrderState> {
  @override
  WatchOrderState buildState() =>
      WatchOrderState(service: widget.service, media: widget.media);

  @override
  Widget buildContent(BuildContext context) {
    final order = state.order.value;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: order?.title.isNotEmpty == true
            ? order!.title
            : getString.watchOrder,
        actions: [
          if (order != null)
            IconButton(
              tooltip: getString.watchOrderOpenSite,
              icon: const Icon(Icons.open_in_new_rounded),
              onPressed: () => openLinkInBrowser(order.url),
            ),
        ],
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    if (state.failed.value) {
      return EmptyState(
        icon: Icons.cloud_off_rounded,
        failed: true,
        title: getString.couldntLoadTitle(getString.watchOrder),
        onAction: state.load,
      );
    }
    if (state.missing.value) {
      return EmptyState(
        icon: Icons.account_tree_outlined,
        title: getString.watchOrderUnavailable,
      );
    }
    final loading = state.loading;
    final entries = loading
        ? List.generate(
            6,
            (i) => ChiakiEntry(malId: -i - 1, type: 1, title: 'Loading title'),
          )
        : state.visible;
    return Column(
      children: [
        if (!loading) _filters(context),
        Expanded(
          child: ScrollConfig(
            context,
            child: Skeletonizer(
              enabled: loading,
              child: ListView.separated(
                padding: EdgeInsets.fromLTRB(
                  Dimens.pagePad,
                  Dimens.gapSm,
                  Dimens.pagePad,
                  Dimens.gapXl,
                ),
                itemCount: entries.length + 1,
                separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
                itemBuilder: (_, i) {
                  if (i == entries.length) return _credit(context);
                  final entry = entries[i];
                  if (!loading) state.ensure(entry);
                  return Watch(() => _row(context, entry));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _filters(BuildContext context) {
    final types = state.types;
    if (types.length < 2) return const SizedBox.shrink();
    final hidden = state.hiddenTypes.value;
    final scheme = context.colorScheme;
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad, vertical: 6),
        itemCount: types.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, i) {
          final type = types[i];
          final on = !hidden.contains(type);
          return FilterChip(
            label: Text(
              ChiakiEntry(malId: 0, type: type, title: '').typeLabel,
              style: TextStyle(
                color: on ? scheme.onPrimaryContainer : scheme.onSurfaceVariant,
                fontWeight: on ? FontWeight.w700 : null,
              ),
            ),
            selected: on,
            showCheckmark: false,
            backgroundColor: scheme.surfaceContainerHigh,
            selectedColor: scheme.primaryContainer,
            side: BorderSide(
              color: on
                  ? scheme.primary.withValues(alpha: 0.5)
                  : scheme.outlineVariant,
            ),
            onSelected: (_) => state.toggleType(type),
          );
        },
      ),
    );
  }

  Widget _row(BuildContext context, ChiakiEntry entry) {
    final scheme = context.colorScheme;
    final current = entry.malId == state.malId;
    final relation = state.relationOf(entry);
    final opening = state.opening.value == entry.malId;
    final real = state.resolved[entry.malId]?.media;
    final listed = real == null ? '' : state.listLabel(real);
    final cover = real?.cover ?? entry.cover;
    final facts = [if (entry.facts.isNotEmpty) entry.facts.join('  ·  ')];
    return DpadTap(
      borderRadius: BorderRadius.circular(Dimens.radius),
      onTap: current ? null : () => state.open(entry),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: current
              ? scheme.primaryContainer.withValues(alpha: 0.55)
              : scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(Dimens.radius),
          border: Border.all(
            color: current
                ? scheme.primary.withValues(alpha: 0.6)
                : Colors.transparent,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cover(context, entry, cover),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entry.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (entry.altTitle != null)
                    Text(
                      entry.altTitle!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      if (current) _tag(context, getString.watchOrderCurrent),
                      if (relation.isNotEmpty) _tag(context, relation),
                      if (entry.typeLabel.isNotEmpty)
                        _tag(context, entry.typeLabel, quiet: true),
                      if (listed.isNotEmpty) _listTag(context, listed),
                    ],
                  ),
                  if (facts.isNotEmpty) ...[
                    const SizedBox(height: 6),
                    Text(
                      facts.first,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (opening)
              const Padding(
                padding: EdgeInsets.all(4),
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _cover(BuildContext context, ChiakiEntry entry, String? cover) {
    final scheme = context.colorScheme;
    final image = ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 62,
        height: 90,
        child: cover == null
            ? ColoredBox(color: scheme.surfaceContainerHighest)
            : cachedNetworkImage(
                imageUrl: cover,
                width: 62,
                height: 90,
                fit: BoxFit.cover,
              ),
      ),
    );
    final tag = state.heroTagOf(entry);
    if (tag == null) return image;
    return Hero(
      tag: tag,
      flightShuttleBuilder: (_, _, _, _, toContext) =>
          (toContext.widget as Hero).child,
      child: image,
    );
  }

  Widget _listTag(BuildContext context, String text) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: scheme.tertiary.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: scheme.tertiary.withValues(alpha: 0.6)),
      ),
      child: Text(
        text,
        style: context.textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: scheme.tertiary,
        ),
      ),
    );
  }

  Widget _tag(BuildContext context, String text, {bool quiet = false}) {
    final scheme = context.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: quiet
            ? scheme.onSurface.withValues(alpha: 0.08)
            : scheme.primary.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: quiet
              ? scheme.outlineVariant
              : scheme.primary.withValues(alpha: 0.5),
        ),
      ),
      child: Text(
        text,
        style: context.textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: quiet ? scheme.onSurfaceVariant : scheme.primary,
        ),
      ),
    );
  }

  Widget _credit(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Center(
      child: Text(
        getString.watchOrderCredit,
        style: context.textTheme.labelSmall?.copyWith(
          color: context.colorScheme.onSurfaceVariant,
        ),
      ),
    ),
  );
}
