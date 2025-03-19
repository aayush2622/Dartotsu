part of '../ExtensionsQueries.dart';

extension on ExtensionsQueries {
  Future<bool> _getUserData() async {
    if (ExtensionsC.isInitialized.value == true) {
      return true;
    }
    if (ExtensionsC.run.value == false) {
      while (ExtensionsC.isInitialized.value == false) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      return true;
    }
    ExtensionsC.run.value = false;
    ExtensionsC.userid = 26;
    ExtensionsC.username.value = 'Dartotsu';
    ExtensionsC.bg =
        'https://camo.githubusercontent.com/6c1f656dd81f1faf1d80ceb0885b68c2ec5b38d0d5b876bf812b37c76d348733/68747470733a2f2f66696c65732e636174626f782e6d6f652f746e6d3173722e706e67';
    ExtensionsC.avatar.value =
        'https://cdn.discordapp.com/emojis/1305525420938100787.gif?size=48&animated=true&name=dartotsu';
    ExtensionsC.episodesWatched = 0;
    ExtensionsC.chapterRead = 0;
    ExtensionsC.adult = true;
    ExtensionsC.unreadNotificationCount = 0;
    ExtensionsC.isInitialized.value = true;
    return true;
  }
}
