class CommunityList {
  final String id;
  final String title;
  final String author;
  final String? description;
  final String? cover;
  final String count;
  final int likes;
  final String kind;
  final List<String> covers;
  final String? url;

  const CommunityList({
    required this.id,
    required this.title,
    this.author = '',
    this.description,
    this.cover,
    this.count = '',
    this.likes = 0,
    this.kind = '',
    this.covers = const [],
    this.url,
  });
}

class CommunityListPage {
  final List<CommunityList> items;
  final bool hasNext;

  const CommunityListPage(this.items, this.hasNext);
}
