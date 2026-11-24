import 'Media.dart';

class ListKind {
  final String id;
  final String label;
  final bool Function(Media media) test;

  const ListKind(this.id, this.label, this.test);
}
