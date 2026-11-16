enum DiscordRoute { none, desktop, headless, gateway, linked }

String discordActivityNameMode({
  required bool userToken,
  required String preference,
}) => userToken ? preference : 'app';

DiscordRoute discordRoute({
  required bool desktop,
  required bool userToken,
  required bool linked,
  required bool live,
  bool customName = false,
}) {
  if (userToken && live) return DiscordRoute.gateway;
  if (linked && !(userToken && customName)) return DiscordRoute.linked;
  if (userToken) return DiscordRoute.headless;
  return desktop ? DiscordRoute.desktop : DiscordRoute.none;
}
