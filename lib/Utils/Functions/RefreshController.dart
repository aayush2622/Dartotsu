import 'package:flutter/widgets.dart';
import '../../Core/State/State.dart';

class RefreshController extends AppController {
  var activity = <String, Live<bool>>{};

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

  Live<bool> getOrPut(String key, bool initialValue) {
    return activity.putIfAbsent(key, () => Live<bool>(initialValue));
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

  late final Live<bool> _refreshFlag;
  late final Disposer _sub;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);

    final controller = find<RefreshController>();
    _refreshFlag = controller.getOrPut(refreshId, false);

    _sub = onChange(_refreshFlag, (value) async {
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
    _sub.dispose();
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}

abstract class RefreshIds {
  String get animePage;
  String get mangaPage;
  String get homePage;
  String get listPage;

  List<String> get allIds => [animePage, mangaPage, homePage, listPage];
}
