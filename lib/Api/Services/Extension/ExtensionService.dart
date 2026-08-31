import '../../../Core/Services/MediaService.dart';

class ExtensionService extends MediaService {
  @override
  String get id => "extension";

  @override
  String get name => "Extensions";

  @override
  String get iconPath => "assets/svg/extensions.svg";
}
