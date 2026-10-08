import '../../../Core/Preferences/PrefManager.dart';

class SimklPref {
  SimklPref._();

  static const token = Pref('simklToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref('simklRefreshToken', '', PrefLocation.PROTECTED);
  static const expiresAt = Pref<int>(
    'simklTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );
}
