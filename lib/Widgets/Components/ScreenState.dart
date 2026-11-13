import 'package:flutter/widgets.dart';

import '../../Utils/Functions/NavigateToScreen.dart';

import '../../Core/State/State.dart';

abstract class ScreenState extends AppController {
  State? _host;
  bool _started = false;
  bool _released = false;

  BuildContext get context => (_host?.context ?? appContext)!;

  bool get keepAlive => false;

  bool get detached => _started && _host == null && !_released;

  void onDetach() {}

  void closeDetached() {
    if (!detached) return;
    _released = true;
    onClose();
  }

  bool get mounted => _host?.mounted ?? false;

  TickerProvider get vsync => _host! as TickerProvider;

  void pop<T extends Object?>([T? result]) {
    final host = _host;
    if (host != null && host.mounted) popPage(host.context, result);
  }
}

mixin ScreenStateHost<W extends StatefulWidget, S extends ScreenState>
    on State<W> {
  S buildState();

  late final S state = buildState();

  @override
  void initState() {
    super.initState();
    state._host = this;
    if (state._started) return;
    state._started = true;
    state.onInit();
  }

  @override
  void dispose() {
    if (state.keepAlive) {
      state._host = null;
      state.onDetach();
    } else {
      state.onClose();
      state._host = null;
    }
    super.dispose();
  }
}
