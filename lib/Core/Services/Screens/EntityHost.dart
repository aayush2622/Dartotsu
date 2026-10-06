import 'package:get/get.dart';

import '../Model/Media.dart';

enum EntityKind { character, staff, studio }

class EntityProfile {
  final String id;
  final String name;
  final String? nativeName;
  final List<String> alternatives;
  final List<String> spoilerAlternatives;
  final String? image;
  final String? subtitle;
  final int? favourites;
  final bool isFavourite;
  final String? url;
  final List<(String, String)> facts;
  final List<String> tags;
  final String? description;

  const EntityProfile({
    required this.id,
    required this.name,
    this.nativeName,
    this.alternatives = const [],
    this.spoilerAlternatives = const [],
    this.image,
    this.subtitle,
    this.favourites,
    this.isFavourite = false,
    this.url,
    this.facts = const [],
    this.tags = const [],
    this.description,
  });

  EntityProfile copyWith({bool? isFavourite, int? favourites}) => EntityProfile(
    id: id,
    name: name,
    nativeName: nativeName,
    alternatives: alternatives,
    spoilerAlternatives: spoilerAlternatives,
    image: image,
    subtitle: subtitle,
    favourites: favourites ?? this.favourites,
    isFavourite: isFavourite ?? this.isFavourite,
    url: url,
    facts: facts,
    tags: tags,
    description: description,
  );
}

class EntityHost {
  final EntityKind kind;
  final Rx<EntityProfile> profile;
  final RxBool loading;
  final void Function(Media media) openMedia;
  final void Function(String id, {String? name, String? image}) openCharacter;
  final void Function(String id, {String? name, String? image}) openStaff;
  final void Function(String query) search;

  EntityHost({
    required this.kind,
    required EntityProfile profile,
    required this.loading,
    required this.openMedia,
    required this.openCharacter,
    required this.openStaff,
    required this.search,
  }) : profile = profile.obs;

  void update(EntityProfile next) => profile.value = next;
}
