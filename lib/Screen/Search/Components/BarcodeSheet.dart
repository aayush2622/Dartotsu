import '../../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'BarcodeState.dart';
import '../../../Widgets/Components/AppSpinner.dart';

Future<String?> showBarcodeSearch(BuildContext context) =>
    showCustomBottomDialog<String>(context, const BarcodeSheet());

class BarcodeSheet extends StatefulWidget {
  const BarcodeSheet({super.key});

  @override
  State<BarcodeSheet> createState() => _BarcodeSheetState();
}

class _BarcodeSheetState extends State<BarcodeSheet>
    with ScreenStateHost<BarcodeSheet, BarcodeState> {
  MobileScannerController? _camera;

  @override
  BarcodeState buildState() => BarcodeState();

  @override
  void initState() {
    super.initState();
    if (BarcodeState.cameraSupported) {
      _camera = MobileScannerController(
        formats: const [
          BarcodeFormat.ean13,
          BarcodeFormat.ean8,
          BarcodeFormat.upcA,
          BarcodeFormat.upcE,
        ],
        detectionSpeed: DetectionSpeed.noDuplicates,
      );
    }
  }

  @override
  void dispose() {
    unawaited(_camera?.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  void _detect(BarcodeCapture capture) {
    if (state.busy.value) return;
    for (final code in capture.barcodes) {
      final value = code.rawValue;
      if (value != null) {
        unawaited(state.submit(value));
        return;
      }
    }
  }

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final camera = _camera;
    final error = state.error.value;
    return AppSheet(
      title: getString.barcodeTitle,
      heightFactor: camera != null ? 0.85 : null,
      child: ScrollConfig(
        context,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            0,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                camera != null
                    ? getString.barcodeIntro
                    : getString.barcodeIntroManual,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              SizedBox(height: Dimens.gap),
              if (camera != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: MobileScanner(
                      controller: camera,
                      onDetect: _detect,
                      errorBuilder: (context, error) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            getString.barcodeCameraDenied,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (camera != null) SizedBox(height: Dimens.gap),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: state.isbn,
                      enabled: !state.busy.value,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.search,
                      onSubmitted: (_) => unawaited(state.submit()),
                      decoration: InputDecoration(
                        hintText: getString.barcodeIsbnHint,
                        prefixIcon: const Icon(Icons.qr_code_2_rounded),
                      ),
                    ),
                  ),
                  SizedBox(width: Dimens.gapSm),
                  IconButton.filled(
                    tooltip: getString.imageSearchGo,
                    onPressed: state.busy.value
                        ? null
                        : () => unawaited(state.submit()),
                    icon: state.busy.value
                        ? const AppSpinner(size: 20)
                        : const Icon(Icons.search_rounded),
                  ),
                ],
              ),
              if (error != null) ...[
                SizedBox(height: Dimens.gapSm),
                Text(error, style: TextStyle(color: scheme.error)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
