enum DiscordRoute { none, desktop, headless, gateway, linked }

DiscordRoute discordRoute({
  required bool desktop,
  required bool userToken,
  required bool linked,
  required bool live,
}) {
  if (userToken && live) return DiscordRoute.gateway;
  if (linked) return DiscordRoute.linked;
  if (userToken) return DiscordRoute.headless;
  return desktop ? DiscordRoute.desktop : DiscordRoute.none;
}
