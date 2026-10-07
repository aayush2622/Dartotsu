import 'DiscordPresence.dart';

abstract interface class BaseDiscordRPC {
  Future<bool> show(DiscordPresence presence);

  Future<void> clear();
}
