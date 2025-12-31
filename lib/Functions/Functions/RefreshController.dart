import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_rx/src/rx_workers/rx_workers.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'GetXFunctions.dart';

class RefreshController extends GetxController {
  var activity = <String, RxBool>{};

  void all() => activity.forEach((k, v) => v.value = true);

  void refreshService(RefreshIds group) {
    for (var id in group.allIds) {
      activity[id]?.value = true;
    }
  }

  void allButNot(String k) {
    activity.forEach((key, v) {
      if (key != k) v.value = true;
    });
  }

  RxBool getOrPut(String key, bool initialValue) {
    return activity.putIfAbsent(key, () => RxBool(initialValue));
  }
}

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

abstract class RefreshManager<T extends StatefulWidget> extends State<T>
    with RouteAware {
  String get refreshId;

  Future<void> onRefresh();

  bool _isVisible = false;
  bool _isLoading = false;
  bool _pendingRefresh = false;

  late final RxBool _refreshFlag;
  late final Worker _worker;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);

    final controller = find<RefreshController>();
    _refreshFlag = controller.getOrPut(refreshId, false);

    _worker = ever<bool>(_refreshFlag, (value) async {
      if (!value) return;

      if (_isLoading) {
        _pendingRefresh = true;
        return;
      }

      if (_isVisible) {
        await _startRefresh();
      } else {
        _pendingRefresh = true;
      }
    });
  }

  Future<void> _startRefresh() async {
    if (_isLoading) return;

    _isLoading = true;
    _refreshFlag.value = false;

    try {
      await onRefresh();
    } finally {
      _isLoading = false;

      if (_pendingRefresh && _isVisible) {
        _pendingRefresh = false;
        await _startRefresh();
      }
    }
  }

  @override
  void didPush() => _isVisible = true;

  @override
  void didPushNext() => _isVisible = false;

  @override
  void didPop() => _isVisible = false;

  @override
  void didPopNext() async {
    _isVisible = true;
    if (_pendingRefresh && !_isLoading) {
      await _startRefresh();
    }
  }

  @override
  void dispose() {
    _worker.dispose();
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}

enum RefreshId {
  Anilist,
  Mal,
  Kitsu,
  Simkl,
  Extensions;

  List<int> get ids => List.generate(5, (index) => baseId + index);

  int get baseId {
    switch (this) {
      case RefreshId.Anilist:
        return 10;
      case RefreshId.Mal:
        return 20;
      case RefreshId.Kitsu:
        return 30;
      case RefreshId.Simkl:
        return 40;
      case RefreshId.Extensions:
        return 50;
    }
  }

  int get animePage => baseId;

  int get mangaPage => baseId + 1;

  int get homePage => baseId + 2;
}

abstract class RefreshIds {
  String get animePage;
  String get mangaPage;
  String get homePage;
  String get listPage;

  List<String> get allIds => [animePage, mangaPage, homePage, listPage];
}
