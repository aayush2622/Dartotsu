class AnilistMutations {
  final Future<T?> Function<T>(String query,
      {String variables, bool force, bool useToken, bool show}) executeQuery;

  AnilistMutations(this.executeQuery);
}
