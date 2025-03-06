import '../Eval/dart/model/page.dart';
import '../Model/Source.dart';
import '../lib.dart';

Future<List<PageUrl>?> getPagesList(
        {required Source source, required String mangaId}) async =>
    getExtensionService(source).getPageList(mangaId);
