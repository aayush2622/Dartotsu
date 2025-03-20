import '../Eval/dart/model/m_pages.dart';
import '../Model/Source.dart';
import '../lib.dart';

Future<MPages?> getPopular({
  required Source source,
  required int page,
}) async {
  return getExtensionService(source).getPopular(page);
}

Future<MPages?> getLatest({
  required Source source,
  required int page,
}) async {
  return getExtensionService(source).getLatestUpdates(page);
}
