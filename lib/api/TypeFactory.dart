import 'dart:convert';

import 'Anilist/Data/data.dart' as anilist;
import 'MyAnimeList/Data/data.dart' as mal;
import 'MyAnimeList/Data/user.dart' as mal;
import 'MyAnimeList/Data/userData.dart' as mal;

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class TypeFactory {
  static final Map<Type, FromJson> _factories = {};

  static void create<T>(FromJson<T> factory) => _factories[T] = factory;

  static T get<T>(Map<String, dynamic> json) {
    final factory = _factories[T];
    if (factory == null) {
      throw Exception('Factory for type $T is not registered');
    }
    return factory(json) as T;
  }

  static void registerAllTypes() {
    _registerAnilistTypes();
    _registerMalTypes();
  }

  static void _registerAnilistTypes() {
    TypeFactory.create<JsonDecoder>((json) => jsonDecode(json as String));
    TypeFactory.create<anilist.PageResponse>(
        (json) => anilist.PageResponse.fromJson(json));
    TypeFactory.create<anilist.MediaResponse>(
        (json) => anilist.MediaResponse.fromJson(json));
    TypeFactory.create<anilist.MediaListCollectionResponse>(
        (json) => anilist.MediaListCollectionResponse.fromJson(json));
    TypeFactory.create<anilist.ViewerResponse>(
        (json) => anilist.ViewerResponse.fromJson(json));
    TypeFactory.create<anilist.UserListResponse>(
        (json) => anilist.UserListResponse.fromJson(json));
    TypeFactory.create<anilist.AnimeListResponse>(
        (json) => anilist.AnimeListResponse.fromJson(json));
    TypeFactory.create<anilist.MangaListResponse>(
        (json) => anilist.MangaListResponse.fromJson(json));
    TypeFactory.create<anilist.UserListsResponse>(
        (json) => anilist.UserListsResponse.fromJson(json));
    TypeFactory.create<anilist.GenreCollectionResponse>(
        (json) => anilist.GenreCollectionResponse.fromJson(json));
    TypeFactory.create<anilist.MediaTagCollectionResponse>(
        (json) => anilist.MediaTagCollectionResponse.fromJson(json));
  }

  static void _registerMalTypes() {
    TypeFactory.create<mal.MediaResponse>(
        (json) => mal.MediaResponse.fromJson(json));
    TypeFactory.create<mal.User>((json) => mal.User.fromJson(json));
    TypeFactory.create<mal.UserData>((json) => mal.UserData.fromJson(json));
  }
}
