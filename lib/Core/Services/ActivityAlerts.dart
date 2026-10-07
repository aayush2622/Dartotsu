import 'dart:async';

import '../NotificationManager/NotificationManager.dart';
import '../Preferences/PrefManager.dart';
import 'MediaServiceController.dart';
import '../State/State.dart';

class ActivityAlerts extends AppController {
  static const _interval = Duration(minutes: 4);

  Timer? _timer;
  bool _busy = false;

  void start() {
    _timer?.cancel();
    _timer = Timer.periodic(_interval, (_) => unawaited(poll()));
    onChange(PrefName.activityAlerts.rx, (on) {
      if (on) unawaited(poll());
    });
    unawaited(Future<void>.delayed(const Duration(seconds: 20), poll));
  }

  String _key(String serviceId) => 'activityAlerts/last/$serviceId';

  Future<void> poll() async {
    if (_busy || !PrefName.activityAlerts.value) return;
    final service = find<MediaServiceController>().currentService.value;
    final view = service.socialView;
    if (view == null || !(service.auth?.isLoggedIn ?? false)) return;
    _busy = true;
    try {
      final alerts = await view.activityAlerts();
      if (alerts.isEmpty) return;
      int idOf(ServiceNotification n) => int.tryParse(n.id) ?? 0;
      final newest = alerts.map(idOf).reduce((a, b) => a > b ? a : b);
      final last = PrefManager.getCustomVal<int>(_key(service.id)) ?? 0;
      if (newest <= last) return;
      PrefManager.setCustomVal<int>(_key(service.id), newest);
      final fresh = alerts.where((n) => idOf(n) > last).toList()
        ..sort((a, b) => idOf(a).compareTo(idOf(b)));
      if (fresh.isEmpty) return;
      final manager = find<NotificationManager>();
      if (fresh.length > 3) {
        await manager.show(
          title: '${fresh.length} new notifications',
          body: fresh.last.text,
        );
        return;
      }
      for (final alert in fresh) {
        await manager.show(title: service.name, body: alert.text);
      }
    } catch (_) {
    } finally {
      _busy = false;
    }
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
