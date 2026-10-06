import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class AnilistNotificationView implements NotificationScreenView {
  @override
  Future<List<ServiceNotification>> notifications({int page = 1}) =>
      anilistAuth.queries.getNotifications(page: page);
}
