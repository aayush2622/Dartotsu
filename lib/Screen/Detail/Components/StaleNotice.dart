import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/SectionCard.dart';

class StaleNotice extends StatelessWidget {
  const StaleNotice({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: SectionCard(
        child: Row(
          children: [
            Icon(Icons.cloud_off_rounded, size: 20, color: scheme.tertiary),
            SizedBox(width: Dimens.gapSm),
            Expanded(
              child: Text(
                getString.detailStale,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
