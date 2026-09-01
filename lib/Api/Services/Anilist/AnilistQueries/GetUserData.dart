part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<bool> _getUserData() => refreshUser();
}
