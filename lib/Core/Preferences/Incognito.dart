import '../../Utils/Functions/SnackBar.dart';
import 'PrefManager.dart';

bool get isIncognito => PrefName.incognito.value;

bool skipForIncognito([String? notice]) {
  if (!isIncognito) return false;
  if (notice != null) snackString(notice);
  return true;
}
