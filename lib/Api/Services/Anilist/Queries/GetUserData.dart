part of '../Queries.dart';

extension on AnilistQueries {
  Future<bool> _getUserData() => refreshUser();
}
