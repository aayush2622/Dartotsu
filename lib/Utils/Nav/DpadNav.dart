import 'package:dpad/dpad.dart';
export 'package:dpad/dpad.dart';

import '../Functions/AppShortcuts.dart';

bool kDpadFocused(DpadFocusState state) => state.focused && usingKeyboard;
