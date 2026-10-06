import 'dart:math';

import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';

void maybeShowDonateSheet(BuildContext context, {int oneIn = 4}) {
  if (Random().nextInt(oneIn) != 0) return;
  showCustomBottomDialog(context, const _DonateSheet());
}

class _DonateSheet extends StatelessWidget {
  const _DonateSheet();

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return CustomBottomDialog(
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
          child: Column(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: scheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite_rounded,
                  size: 30,
                  color: scheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                getString.donateSheetTitle,
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                getString.donateSheetMessage,
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    openLinkInBrowser(kDonateUrl);
                    popPage(context);
                  },
                  icon: const Icon(Icons.coffee_rounded),
                  label: Text(getString.donate),
                ),
              ),
              TextButton(
                onPressed: () => popPage(context),
                child: Text(getString.donateLater),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
