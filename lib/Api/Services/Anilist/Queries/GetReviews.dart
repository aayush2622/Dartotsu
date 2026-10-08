part of '../Queries.dart';

extension on AnilistQueries {
  Future<List<Review>> _getReviews(String mediaId, int page) async {
    final data = await client.query(
      _queryReviews,
      variables: {'id': int.tryParse(mediaId), 'page': page},
    );
    final nodes =
        (((data['Media'] as Map<String, dynamic>?)?['reviews']
                as Map<String, dynamic>?)?['nodes']
            as List?) ??
        const [];
    return [
      for (final n in nodes.cast<Map<String, dynamic>>())
        Review(
          id: n['id'] as int,
          mediaId: int.tryParse(mediaId) ?? 0,
          mediaType: '',
          summary: n['summary'] as String?,
          body: n['body'] as String?,
          rating: n['rating'] as int?,
          ratingAmount: n['ratingAmount'] as int?,
          score: n['score'] as int?,
          siteUrl: n['siteUrl'] as String?,
          createdAt: n['createdAt'] as int?,
          user: _reviewUser(n['user'] as Map<String, dynamic>?),
        ),
    ];
  }

  User? _reviewUser(Map<String, dynamic>? u) => u == null
      ? null
      : User(
          id: u['id'] as int,
          name: u['name'] as String,
          pfp: (u['avatar'] as Map<String, dynamic>?)?['medium'] as String?,
        );
}

const _queryReviews = r'''
query ($id: Int, $page: Int) {
  Media(id: $id) {
    reviews(page: $page, limit: 10, sort: RATING_DESC) {
      nodes {
        id summary body(asHtml: true) rating ratingAmount score siteUrl createdAt
        user { id name avatar { medium } }
      }
    }
  }
}
''';
