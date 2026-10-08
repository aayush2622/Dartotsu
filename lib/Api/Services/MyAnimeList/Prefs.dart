import '../../../Core/Preferences/PrefManager.dart';

class MalPref {
  MalPref._();

  static const token = Pref('malToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref('malRefreshToken', '', PrefLocation.PROTECTED);
  static const expiresAt = Pref<int>(
    'malTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );
}
