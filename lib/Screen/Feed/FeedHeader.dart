import 'package:flutter/material.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Widgets/Components/LoadSvg.dart';
import '../Home/Components/AccountSheet.dart';
import '../../Core/State/State.dart';

class FeedHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onSearch;
  final VoidCallback? onCalendar;

  const FeedHeader({
    super.key,
    required this.title,
    this.onSearch,
    this.onCalendar,
  });

  @override
  Widget build(BuildContext context) {
    final services = find<MediaServiceController>();
    final phone = context.isPhone;
    return Padding(
      padding: EdgeInsets.fromLTRB(phone ? 12 : 24, 18, 12, 2),
      child: Row(
        children: [
          if (phone)
            Watch(
              () => IconButton(
                tooltip: services.currentService.value.name,
                icon: loadSvg(
                  services.currentService.value.iconPath,
                  width: 28,
                  height: 28,
                  color: context.colorScheme.onSurface,
                ),
                onPressed: () => serviceSwitcher(context),
              ),
            ),
          if (phone) const SizedBox(width: 4),
          Expanded(
            child: Text(
              title,
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (onCalendar != null)
            IconButton(
              icon: const Icon(Icons.calendar_month_rounded),
              onPressed: onCalendar,
            ),
          if (onSearch != null)
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: onSearch,
            ),
          if (phone)
            IconButton(
              icon: const Icon(Icons.settings_rounded),
              onPressed: () => showAccountSheet(context, services),
            ),
        ],
      ),
    );
  }
}
