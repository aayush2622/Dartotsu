import 'dart:math';

import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/LoadSvg.dart';

void maybeShowDonateSheet(BuildContext context, {double chance = 0.45}) {
  if (Random().nextDouble() >= chance) return;
  showDonateSheet(context);
}

void showDonateSheet(BuildContext context) =>
    showCustomBottomDialog(context, const _DonateSheet());

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
              _upiCard(context),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    openLinkInBrowser(kDonateUrl);
                    popPage(context);
                  },
                  icon: const Icon(Icons.coffee_rounded),
                  label: Text(getString.buyMeCoffee),
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

  Widget _upiCard(BuildContext context) {
    final scheme = context.colorScheme;
    return Material(
      color: scheme.secondaryContainer,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => copyToClipboard(kUpiId, message: getString.upiCopied),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 8, 12),
          child: Row(
            children: [
              loadSvg(
                'assets/svg/upi.svg',
                width: 40,
                height: 40,
                color: scheme.onSecondaryContainer,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getString.upiId,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: scheme.onSecondaryContainer.withValues(
                          alpha: 0.75,
                        ),
                      ),
                    ),
                    Text(
                      kUpiId,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: scheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () =>
                    copyToClipboard(kUpiId, message: getString.upiCopied),
                icon: Icon(
                  Icons.copy_rounded,
                  color: scheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
