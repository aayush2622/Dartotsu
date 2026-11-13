import '../../../Model/Setting.dart';

List<Setting> sectionRows(
  List<Setting> rows,
  String title, {
  List<String> includes = const [],
}) {
  final out = <Setting>[];
  var inside = false;
  var nested = false;
  for (final row in rows) {
    if (row.type == SettingType.header) {
      if (row.name == title) {
        inside = true;
        nested = false;
      } else if (inside && includes.contains(row.name)) {
        nested = true;
        out.add(row);
      } else if (inside) {
        break;
      }
      continue;
    }
    if (inside || nested) out.add(row);
  }
  return out;
}
