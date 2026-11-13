import '../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../Core/Security/AppLock.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AppSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import 'PinPad.dart';

Future<void> showPasscodeSetup(BuildContext context) {
  final first = Live<String?>(null);
  final message = Live<String?>(null);
  return showCustomBottomDialog<void>(
    context,
    AppSheet(
      title: getString.appLockNew,
      child: Watch(
        () => ScrollConfig(
          context,
          child: SingleChildScrollView(
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
                  first.value == null
                      ? getString.appLockNewHint
                      : getString.appLockConfirm,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: Dimens.gap),
                PinPad(
                  key: ValueKey(first.value),
                  message: message.value,
                  onSubmit: (pin) {
                    final entered = first.value;
                    if (entered == null) {
                      first.value = pin;
                      message.value = null;
                      return true;
                    }
                    if (entered != pin) {
                      message.value = getString.appLockMismatch;
                      first.value = null;
                      return false;
                    }
                    find<AppLock>().set(pin);
                    popPage(context);
                    snackString(getString.appLockOn);
                    return true;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Future<void> showPasscodeRemove(BuildContext context) {
  final message = Live<String?>(null);
  return showCustomBottomDialog<void>(
    context,
    AppSheet(
      title: getString.appLockRemoveTitle,
      child: Watch(
        () => ScrollConfig(
          context,
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              0,
              Dimens.pagePad,
              Dimens.gapLg,
            ),
            child: PinPad(
              message: message.value,
              matches: find<AppLock>().shouldSubmit,
              onSubmit: (pin) {
                final lock = find<AppLock>();
                if (!lock.verify(pin)) {
                  message.value = getString.appLockWrong;
                  return false;
                }
                lock.clear();
                popPage(context);
                return true;
              },
            ),
          ),
        ),
      ),
    ),
  );
}
