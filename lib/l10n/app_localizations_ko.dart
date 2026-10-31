// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => '새로운 최고의 앱\n애니 & 만화 기록은 여기서';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => '더 불러오기';

  @override
  String get login => '로그인';

  @override
  String get continueAsGuest => '게스트로 계속하기';

  @override
  String get getStarted => '시작하기';

  @override
  String get loginWithToken => '토큰으로 로그인';

  @override
  String get pasteTokenHint => '액세스 토큰을 붙여넣어 주세요';

  @override
  String loginTo(String service) {
    return '$service에 로그인';
  }

  @override
  String get settings => '설정';

  @override
  String get account => '계정';

  @override
  String get about => '앱 정보';

  @override
  String get language => '언어';

  @override
  String get animationSpeed => '애니메이션';

  @override
  String get animationSpeedDesc => '앱 전체의 화면 전환과 등장 효과 속도';

  @override
  String get animationSpeedOff => '끔';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '확장 프로그램',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => '알 수 없는 소스';

  @override
  String get install => '설치';

  @override
  String get update => '업데이트';

  @override
  String get uninstall => '삭제';

  @override
  String get updateInstallCancelled =>
      '설치가 취소됐어요. 안드로이드에서 기존 앱과 충돌한다고 떴다면 서명이 달라서예요. 현재 버전을 먼저 삭제한 다음 업데이트를 설치해 주세요';

  @override
  String updateInstallFailed(String error) {
    return '업데이트 실패: $error';
  }

  @override
  String get appLock => '앱 잠금';

  @override
  String get appLockDesc => '앱을 열거나 한참 뒤에 돌아올 때 비밀번호를 물어봐요';

  @override
  String get appLockBiometric => 'Unlock with biometrics';

  @override
  String get appLockBiometricDesc =>
      'Use your fingerprint or face instead of typing the passcode';

  @override
  String get appLockBiometricReason => 'Unlock Dartotsu';

  @override
  String get appLockDelay => 'Lock when idle';

  @override
  String get appLockDelayAlways => 'Always';

  @override
  String get appLockDelayNever => 'Never';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return 'After $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Use biometrics';

  @override
  String get appLockUnlock => '비밀번호를 입력하세요';

  @override
  String get appLockWrong => '비밀번호가 틀렸어요';

  @override
  String appLockWait(String seconds) {
    return '너무 많이 틀렸어요. $seconds초 후에 다시 해보세요';
  }

  @override
  String get appLockNew => '비밀번호를 정하세요';

  @override
  String get appLockNewHint => '숫자 4~8자리';

  @override
  String get appLockConfirm => '한 번 더 입력하세요';

  @override
  String get appLockMismatch => '비밀번호가 서로 달라요';

  @override
  String get appLockOn => '비밀번호 설정됨';

  @override
  String get appLockRemoveTitle => '잠금을 끄려면 비밀번호를 입력하세요';

  @override
  String get installFailed => '설치에 실패했어요';

  @override
  String get updateFailed => '업데이트에 실패했어요';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count updates available',
      one: '1 update available',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Update all';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done of $total extensions updated';
  }

  @override
  String get updateConflictTitle => 'Update not installed';

  @override
  String updateConflictBody(String names) {
    return '$names could not be installed over the existing version. This usually means the installed copy was signed differently. Uninstall it and install the new version?';
  }

  @override
  String get updateConflictAction => 'Uninstall and reinstall';

  @override
  String get noSourceSettings => '이 소스에는 설정이 없어요';

  @override
  String get addPluginRepository => '플러그인 저장소 추가';

  @override
  String get pluginIndexUrlHint => '플러그인 인덱스 URL';

  @override
  String get addRepository => '저장소 추가';

  @override
  String get pluginRepoUpdated => '플러그인 저장소를 업데이트했어요';

  @override
  String get pluginRepoUpdateFailed => '플러그인 저장소를 새로고침하지 못했어요';

  @override
  String get ok => '확인';

  @override
  String get cancel => '취소';

  @override
  String get yes => '예';

  @override
  String get no => '아니요';

  @override
  String get save => '저장';

  @override
  String get reset => '초기화';

  @override
  String get clear => '지우기';

  @override
  String get test => '테스트';

  @override
  String get testing => '테스트 중…';

  @override
  String get resolving => '확인 중…';

  @override
  String get none => '없음';

  @override
  String get selectMediaService => '미디어 서비스 선택';

  @override
  String get pickColor => '색상 고르기';

  @override
  String get colorPickerCustom => '사용자 지정';

  @override
  String get colorPickerTransparent => '투명';

  @override
  String get ltr => '왼쪽에서 오른쪽';

  @override
  String get searchSettings => '설정 검색';

  @override
  String nothingMatches(String query) {
    return '\"$query\"와 일치하는 항목이 없어요';
  }

  @override
  String searchCategory(String category) {
    return '$category 검색';
  }

  @override
  String get settingsAppearance => '외관';

  @override
  String get settingsAppearanceDesc => '테마, 색상, 글래스 모드';

  @override
  String get settingsGeneral => '일반';

  @override
  String get settingsGeneralDesc => '언어와 동작';

  @override
  String get settingsNetwork => '네트워크';

  @override
  String get settingsNetworkDesc => '유저 에이전트, 인증서, DNS, 프록시';

  @override
  String get settingsAccountDesc => '트래킹 서비스와 로그인';

  @override
  String get settingsUpdates => '업데이트';

  @override
  String get amoledBlack => 'AMOLED 블랙';

  @override
  String get amoledBlackDesc => '다크 모드에서 완전한 검은색 배경 사용';

  @override
  String get glassMode => '글래스 모드';

  @override
  String get glassModeDesc => '라이브러리 이미지 위에 흐릿한 반투명 표면 적용';

  @override
  String get shelfFrame => '섹션 테두리';

  @override
  String get shelfFrameDesc => '각 선반 뒤에 카드를 보여주거나, 행을 페이지에 바로 놓을 수 있어요';

  @override
  String get settingsExtensionsDesc => '소스 매니저, 저장소, 확장 프로그램 옵션';

  @override
  String get settingsAddons => '애드온';

  @override
  String get customPath => '사용자 지정 저장 경로';

  @override
  String get customPathDesc => '앱 데이터를 보관하는 위치예요. 길게 누르면 초기화돼요';

  @override
  String get selectDirectory => '폴더 선택';

  @override
  String get differentCacheManager => '대체 이미지 캐시';

  @override
  String get differentCacheManagerDesc => '이미지에 다른 캐시 매니저 사용';

  @override
  String get settingsSync => 'Sync settings';

  @override
  String get settingsSyncDesc =>
      'Keep your settings the same on every device. They are stored in a private gist in your GitHub account';

  @override
  String get settingsSyncSwitch => 'Sync on change';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Sign in with GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Settings are stored in a private gist in your account';

  @override
  String get settingsSyncToken => 'Use a personal access token';

  @override
  String get settingsSyncTokenDesc =>
      'Create one at github.com/settings/tokens with only the gist permission';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Signed in as $user';
  }

  @override
  String get settingsSyncSignOut => 'Sign out';

  @override
  String settingsSyncCode(Object code) {
    return 'Enter $code on GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'The GitHub page opened in your browser. Tap to copy the code, or tap and hold to cancel.';

  @override
  String get settingsSyncSignInFailed => 'Could not sign in to GitHub';

  @override
  String get settingsSyncOn => 'On';

  @override
  String get settingsSyncNoneChanged =>
      'You haven\'t changed any of these yet, so there is nothing to sync.';

  @override
  String get settingsSyncChangedOnly =>
      'Only settings you have changed are stored. Everything else uses its default on every device. The cloud icon shows what is already on the server.';

  @override
  String get settingsSyncOffCategory =>
      'Not syncing. These stay on this device and the server copy is left as it is.';

  @override
  String get settingsSyncCatOther => 'Watch, read and services';

  @override
  String get settingsSyncTitles => 'Watch progress and titles';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records titles and $resume resume entries on the server';
  }

  @override
  String get settingsSyncTitlesNone => 'Nothing uploaded yet';

  @override
  String get settingsSyncTitlesNote =>
      'Watch and read positions, the resume shelf, bookmarks, highlights and per-title options. Source matches and streams stay on each device because they depend on your extensions. Titles upload at most every 45 seconds.';

  @override
  String get settingsSyncConnect => 'Not connected';

  @override
  String get settingsSyncConnectDesc =>
      'Sign in with GitHub to keep your settings the same on every device.';

  @override
  String get settingsSyncFailedTitle => 'Sync failed';

  @override
  String get settingsSyncPaused => 'Paused';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off.';

  @override
  String get settingsSyncUpToDate => 'Up to date';

  @override
  String get settingsSyncRetry => 'Retry';

  @override
  String get settingsSyncAccount => 'GitHub account';

  @override
  String get settingsSyncAccountDesc =>
      'Your data goes to a private gist in your own account.';

  @override
  String get settingsSyncWaiting => 'Waiting for you to approve on GitHub';

  @override
  String get settingsSyncCopyCode => 'Tap the code to copy it';

  @override
  String get settingsSyncCancel => 'Cancel';

  @override
  String get settingsSyncStatSettings => 'Settings';

  @override
  String get settingsSyncStatTitles => 'Titles';

  @override
  String get settingsSyncStatShelf => 'Resume';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Uploaded $time from $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changed',
      one: '1 changed',
      zero: 'Nothing changed yet',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Accounts and passwords';

  @override
  String get settingsSyncSecretsDesc =>
      'Sync your sign-ins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API keys and app lock between your devices. They are encrypted with a passphrase that stays on your devices, so GitHub never sees them.';

  @override
  String get settingsSyncSecretsOn => 'Accounts are synced and encrypted';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Signing out on one device does not sign you out on the others.';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Enter it again to keep syncing accounts.';

  @override
  String get settingsSyncPassphraseSet => 'Set a passphrase';

  @override
  String get settingsSyncPassphraseEnter => 'Enter your passphrase';

  @override
  String get settingsSyncPassphraseField => 'Passphrase';

  @override
  String get settingsSyncPassphraseConfirm => 'Repeat the passphrase';

  @override
  String get settingsSyncPassphraseNew =>
      'Choose a passphrase of at least 6 characters. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Enter the passphrase you chose on your other device. Accounts on this device will be replaced by the synced ones.';

  @override
  String get settingsSyncPassphraseWrong => 'Wrong passphrase';

  @override
  String get settingsSyncPassphraseMismatch => 'The passphrases do not match';

  @override
  String get settingsSyncPassphraseShort => 'Use at least 6 characters';

  @override
  String get settingsSyncSecretsStop => 'Stop syncing accounts';

  @override
  String get settingsSyncSecretsDelete => 'Delete from GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'This removes the encrypted accounts file from your gist. Other devices keep their sign-ins and can set a new passphrase.';

  @override
  String get settingsSyncWhat => 'What to sync';

  @override
  String get settingsSyncServer => 'On the server';

  @override
  String get settingsSyncServerEmpty => 'Nothing uploaded yet';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count settings, uploaded $time from $device';
  }

  @override
  String get settingsSyncThisDevice => 'this device';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count settings on the server',
      one: '1 setting on the server',
      zero: 'Nothing on the server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sync now';

  @override
  String get settingsSyncRunning => 'Syncing…';

  @override
  String get settingsSyncNever => 'Not synced yet';

  @override
  String settingsSyncLast(Object time) {
    return 'Last synced $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Sync failed: $error';
  }

  @override
  String get settingsSyncScope =>
      'Only settings that work the same everywhere are synced. Accounts, tokens, folders, extensions, notifications, Discord, updates and window size stay on each device.';

  @override
  String get backupAndRestore => '백업 및 복원';

  @override
  String get backupAndRestoreDesc => '환경설정을 저장하거나 불러와요';

  @override
  String get backup => '백업';

  @override
  String get restore => '복원';

  @override
  String get loadExtensionsIcon => '확장 프로그램 아이콘 불러오기';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => '확장 프로그램 목록에 소스 아이콘 표시';

  @override
  String get sectionStorage => '저장공간';

  @override
  String get sectionManagers => '매니저';

  @override
  String get sectionOptions => '옵션';

  @override
  String get backupTabBackup => '백업하기';

  @override
  String get backupTabRestore => '복원하기';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories개 카테고리의 설정 $keys개';
  }

  @override
  String backupLastBackup(Object time) {
    return '마지막 백업: $time';
  }

  @override
  String get backupNever => '아직 백업이 없어요';

  @override
  String get backupSelectAll => '모두 선택';

  @override
  String get backupClearAll => '지우기';

  @override
  String backupKeys(Object count) {
    return '설정 $count개';
  }

  @override
  String get backupPasswordRequired => 'Password (required for account data)';

  @override
  String get backupProtectedNeedsPassword =>
      'Set a password to back up account data, or untick it';

  @override
  String get backupProtectedSkipped =>
      'This backup has no password, so its account data was skipped';

  @override
  String get backupPassword => '비밀번호 (선택)';

  @override
  String get backupPasswordHint => '비워두면 기본값을 사용해요';

  @override
  String get backupSensitive => '로그인 토큰이 포함돼요. 이 파일은 남에게 보여주지 마세요';

  @override
  String get backupCreate => '백업 만들기';

  @override
  String backupSaved(Object name) {
    return '$name에 백업을 저장했어요';
  }

  @override
  String backupFailed(Object error) {
    return '백업 실패: $error';
  }

  @override
  String get backupPickFile => '백업 파일 선택';

  @override
  String get backupPickFileDesc => 'Dartotsu에서 만든 .json 파일을 골라주세요';

  @override
  String get backupChooseAnother => '다른 파일 선택';

  @override
  String get backupCreatedAt => '생성일';

  @override
  String get backupAppVersion => '앱 버전';

  @override
  String get backupDevice => '기기';

  @override
  String get backupAccounts => '계정';

  @override
  String get backupSize => '크기';

  @override
  String get backupEncrypted => '비밀번호로 보호됨';

  @override
  String get backupUnlock => '잠금 해제';

  @override
  String get backupWrongPassword => '이 파일을 읽을 수 없어요. 비밀번호를 확인해 주세요';

  @override
  String get backupRestoreSelected => '선택 항목 복원';

  @override
  String backupRestoreConfirm(Object count) {
    return '설정 $count개를 복원할까요? 이 카테고리의 기존 값은 덮어써져요.';
  }

  @override
  String get backupRestored => '복원했어요. 모두 적용하려면 앱을 다시 시작해 주세요';

  @override
  String backupRestoreFailed(Object error) {
    return '복원 실패: $error';
  }

  @override
  String get backupSelectOne => '카테고리를 하나 이상 선택해 주세요';

  @override
  String get backupCatTheme => '외관';

  @override
  String get backupCatThemeDesc => '테마, 색상, 글래스, 글꼴, 카드 스타일';

  @override
  String get backupCatCommon => '일반';

  @override
  String get backupCatCommonDesc => '언어, 저장공간, 네트워크, 확장 프로그램 옵션';

  @override
  String get backupCatPlayer => '플레이어';

  @override
  String get backupCatPlayerDesc => '플레이어 환경설정';

  @override
  String get backupCatReader => '리더';

  @override
  String get backupCatReaderDesc => '리더 환경설정';

  @override
  String get backupCatProtected => '계정';

  @override
  String get backupCatProtectedDesc => '로그인 토큰과 로그인 데이터';

  @override
  String get backupCatOther => '서비스와 피드';

  @override
  String get backupCatOtherDesc => '피드 레이아웃, 리스트, 서비스 옵션';

  @override
  String get logFile => '로그 파일';

  @override
  String get logFileDesc => '앱 로그를 공유하거나, Linux에서는 경로를 복사해요';

  @override
  String get logDelete => 'Delete log files';

  @override
  String get logDeleteDesc => 'Clear the saved app logs to free up space';

  @override
  String logDeleted(String size) {
    return 'Deleted $size of logs';
  }

  @override
  String get missingSequel => 'Missing Sequel';

  @override
  String get rising => 'Rising';

  @override
  String get stacks => 'Stacks';

  @override
  String get stacksAll => 'All';

  @override
  String get stacksFeatured => 'Featured';

  @override
  String get stacksMine => 'Yours';

  @override
  String get stacksSaved => 'Saved';

  @override
  String get stacksFollowing => 'Following';

  @override
  String get stacksEmpty => 'No stacks here yet';

  @override
  String get stacksSignIn => 'Sign in to MangaBaka to see your stacks';

  @override
  String get stacksScopeNeeded =>
      'Your stacks need a new permission. Sign in to MangaBaka again to allow it.';

  @override
  String get stacksSignInAgain => 'Sign in again';

  @override
  String get stacksCouldntLoad => 'Couldn\'t load the stacks';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count series',
      one: '1 series',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saves',
      one: '1 save',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'by $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'This stack is empty';

  @override
  String get stackSave => 'Save stack';

  @override
  String get stackUnsave => 'Remove from saved';

  @override
  String get stackSavedToast => 'Saved to your stacks';

  @override
  String get stackRemovedToast => 'Removed from your saved stacks';

  @override
  String userStacks(String name) {
    return 'Stacks by $name';
  }

  @override
  String get newsTitle => 'News';

  @override
  String get newsEmpty => 'No news right now';

  @override
  String get newsCouldntLoad => 'Couldn\'t load the news';

  @override
  String get logFileCopied => '로그 경로를 복사했어요';

  @override
  String get donateSheetTitle => 'Dartotsu 잘 쓰고 계세요?';

  @override
  String get donateSheetMessage =>
      'Dartotsu는 한 사람이 만들고 관리하고 있어요. 도움이 됐다면 개발을 후원해 주세요.';

  @override
  String get donateLater => '나중에';

  @override
  String get glassBackground => '글래스 배경';

  @override
  String get glassBackgroundDesc => '이미지 링크를 설정하지 않으면 프로필 배너를 사용해요';

  @override
  String get glassBackgroundHint => '이미지 링크 (비워두면 내 배너 사용)';

  @override
  String get followCover => '커버 따라가기';

  @override
  String get followCoverDesc => '색상이 배경을 따라가고, 상세 페이지에서는 커버를 따라가요';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => '카드 스타일';

  @override
  String get cardStyleDesc => '제목 위치, 크기, 진행도, 배지';

  @override
  String get customFont => '글꼴';

  @override
  String get customFontDesc => '기본, 기기의 파일, 또는 Google Fonts';

  @override
  String get customFontError => '그 글꼴 파일을 불러오지 못했어요';

  @override
  String get googleFontError => '그 글꼴을 다운로드하지 못했어요';

  @override
  String get yourFonts => '내 글꼴';

  @override
  String get addFontFile => '글꼴 파일 추가…';

  @override
  String get browseGoogleFonts => 'Google Fonts 둘러보기…';

  @override
  String get searchGoogleFonts => 'Google Fonts 검색';

  @override
  String get defaultFont => '기본';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => '시스템의 다이내믹 컬러';

  @override
  String get jsonTheme => '사용자 지정 테마 파일';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json의 실시간 색상 (직접 만든 스크립트나 수동 편집)';

  @override
  String get themeMode => '테마 모드';

  @override
  String get mode => '모드';

  @override
  String get trackingService => '트래킹 서비스';

  @override
  String get signOut => '로그아웃';

  @override
  String get signIn => '로그인';

  @override
  String get notSignedIn => '로그인하지 않았어요';

  @override
  String signOutOf(String service) {
    return '$service에서 로그아웃할까요?';
  }

  @override
  String get checkForUpdates => '업데이트 확인';

  @override
  String get checkForUpdatesDesc => 'GitHub에 새 릴리스가 올라오면 알려줘요';

  @override
  String get updateChannel => '업데이트 채널';

  @override
  String get channel => '채널';

  @override
  String get stable => '안정';

  @override
  String get preRelease => '프리릴리스';

  @override
  String get alpha => '알파';

  @override
  String get checkNow => '지금 확인';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => '기본';

  @override
  String currentlyUsing(String value) {
    return '현재: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => '기본 (Cloudflare)';

  @override
  String get proxy => '프록시';

  @override
  String get proxyProtocol => '유형';

  @override
  String get proxyHost => '호스트';

  @override
  String get proxyPort => '포트';

  @override
  String get proxyUsername => '사용자 이름';

  @override
  String get proxyPassword => '비밀번호';

  @override
  String get optional => '선택';

  @override
  String get clearCookies => '쿠키 지우기';

  @override
  String get clearCookiesDesc => '저장된 쿠키를 모두 삭제해요';

  @override
  String notImplementedArea(String area) {
    return '$area — 곧 만나요';
  }

  @override
  String notImplementedService(String service) {
    return '$service은(는) 아직 지원하지 않아요.';
  }

  @override
  String get couldNotLoadResults => '결과를 불러오지 못했어요';

  @override
  String get updateCheckFailed => '업데이트를 확인하지 못했어요';

  @override
  String get highRefreshRate => '높은 주사율';

  @override
  String get highRefreshRateDesc => '화면이 지원하는 가장 높은 주사율을 사용해요';

  @override
  String get imageSave => '이미지 저장';

  @override
  String imageSavedTo(String path) {
    return '$path에 저장했어요';
  }

  @override
  String get imageActionFailed => '이미지를 다운로드하지 못했어요';

  @override
  String get imageTitleCover => '커버';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => '배너';

  @override
  String get imageTitleAvatar => '프로필 사진';

  @override
  String get verifyTls => '인증서 확인';

  @override
  String get verifyTlsDesc =>
      '유효하지 않은 HTTPS 인증서를 가진 서버를 거부해요. 자체 서명 인증서를 쓰는 소스일 때만 꺼주세요';

  @override
  String get clearCookiesConfirm => '저장된 쿠키를 모두 삭제할까요? 일부 소스에서 로그아웃될 수 있어요.';

  @override
  String get version => '버전';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => '소스, 이슈, 릴리스';

  @override
  String get discordDesc => '커뮤니티와 지원';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => '개발 후원';

  @override
  String get contributors => '기여자';

  @override
  String get contributorsDesc => 'Dartotsu를 만든 사람들';

  @override
  String get contributorsLoadFailed => '기여자를 불러오지 못했어요';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu를 기반으로 만든 프로젝트';

  @override
  String get forksEmpty => '포크를 찾을 수 없어요';

  @override
  String get sectionColors => '색상';

  @override
  String get sectionDisplay => '화면';

  @override
  String get sectionStyle => '스타일';

  @override
  String get sectionCommunity => '커뮤니티';

  @override
  String get sectionAppInfo => '앱 정보';

  @override
  String get sectionRequests => '요청';

  @override
  String get sectionDnsProxy => 'DNS 및 프록시';

  @override
  String get onboardingBack => '뒤로';

  @override
  String get onboardingNext => '다음';

  @override
  String get onboardingSkip => '건너뛰기';

  @override
  String get onboardingPaletteTitle => '나만의 앱 만들기';

  @override
  String get onboardingPaletteBody => '팔레트를 골라보세요. 카드부터 플레이어까지 모든 강조 색이 따라가요.';

  @override
  String get themeModeAuto => '자동';

  @override
  String get themeModeLight => '라이트';

  @override
  String get themeModeDark => '다크';

  @override
  String get onboardingSyncTitle => '라이브러리 동기화';

  @override
  String get onboardingSyncBody =>
      'AniList로 로그인해서 리스트, 진행도, 점수를 가져오세요. 건너뛰고 게스트로 둘러봐도 돼요.';

  @override
  String get onboardingOpenLinks => 'AniList와 저장소 링크를 Dartotsu에서 열기';

  @override
  String get onboardingPermsTitle => '권한';

  @override
  String get onboardingPermsBody =>
      '지금 허용해 두면 다운로드, 업데이트, 알림이 끊김 없이 동작해요. 나중에 시스템 설정에서 바꿀 수 있어요.';

  @override
  String get permNotifications => '알림';

  @override
  String get permNotificationsDesc => '다운로드 진행도, 새 에피소드, 답글';

  @override
  String get permStorage => '모든 파일 접근';

  @override
  String get permStorageDesc => '다운로드를 공용 Dartotsu 폴더에 저장해요';

  @override
  String get permInstall => '업데이트 설치';

  @override
  String get permInstallDesc => 'Dartotsu가 자체 앱 업데이트를 설치하도록 허용해요';

  @override
  String get permBattery => '배터리 제한 없음';

  @override
  String get permBatteryDesc => '긴 다운로드를 백그라운드에서 계속 실행해요';

  @override
  String get permGrant => '허용';

  @override
  String get linkOpenInApp => '링크를 Dartotsu에서 열기';

  @override
  String get linkOpenInAppDesc => 'AniList와 저장소 링크로 앱을 열 수 있게 해요';

  @override
  String get reviewsTitle => '리뷰';

  @override
  String get reviewsEmpty => '아직 리뷰가 없어요';

  @override
  String get reviewsFailed => '리뷰를 불러오지 못했어요';

  @override
  String get reviewHelpfulQuestion => '이 리뷰가 도움이 됐나요?';

  @override
  String get reviewVoteFailed => '투표를 저장하지 못했어요';

  @override
  String reviewHelpful(int n, int total) {
    return '$total명 중 $n명이 도움이 됐대요';
  }

  @override
  String get calendarTitle => '방영 일정';

  @override
  String get calendarToday => '오늘';

  @override
  String get calendarEmpty => '이 날은 방영하는 게 없어요';

  @override
  String get calendarFailed => '일정을 불러오지 못했어요';

  @override
  String calendarChapter(int n) {
    return 'Chapter $n';
  }

  @override
  String get calendarExpected => 'Expected';

  @override
  String get castReceiverFailed => 'The Chromecast did not start its player';

  @override
  String get castPlaybackFailed => 'The device could not play this stream';

  @override
  String get shortcutNothingToContinue => 'Nothing to continue yet';

  @override
  String shortcutNoCalendar(String service) {
    return '$service has no calendar';
  }

  @override
  String calendarEpisode(int n) {
    return '$n화';
  }

  @override
  String get shareAnalytics => '익명 사용 데이터 공유';

  @override
  String get shareAnalyticsDesc => '익명 사용자 수와 오류 보고서예요. 계정이나 개인 정보는 포함되지 않아요';

  @override
  String get linkOpenAnilist => 'AniList 링크를 Dartotsu에서 열기';

  @override
  String get linkOpenAnilistDesc => '링크 처리를 켜면 anilist.co 링크가 앱에서 열려요';

  @override
  String get linkSettingsFailed => '시스템 설정을 열 수 없어요';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Discord 프로필에 지금 뭘 하는지 보여줘요. Discord 토큰이 필요해요.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Discord 프로필에 지금 뭘 하는지 보여줘요. Discord 데스크톱 앱이 실행 중이어야 해요.';

  @override
  String get discordBrowsing => '둘러보는 활동 표시';

  @override
  String get discordBrowsingDesc => '보거나 읽는 작품뿐 아니라 보고 있는 탭, 페이지, 프로필도 표시해요.';

  @override
  String get discordLookHeader => '프레즌스 모양';

  @override
  String get discordActivityType => '활동 유형';

  @override
  String get discordActivityTypeDesc =>
      'Discord에 표시되는 문구예요: \"시청 중…\" 또는 \"플레이 중…\". 자동은 애니는 시청 중, 나머지는 플레이 중으로 표시해요.';

  @override
  String get discordWatching => '시청 중';

  @override
  String get discordPlaying => '플레이 중';

  @override
  String get discordCovers => '커버 표시';

  @override
  String get discordCoversDesc => '카드에 커버 이미지와 Dartotsu 아이콘을 표시해요.';

  @override
  String get discordTimer => '타이머 표시';

  @override
  String get discordTimerDesc => '제목 아래에 경과 시간이나 남은 시간을 표시해요.';

  @override
  String get discordButtons => '버튼 표시';

  @override
  String get discordButtonsDesc => '\"애니 / 만화 보기\"와 \"Dartotsu 열기\" 버튼이에요.';

  @override
  String get discordHideTitles => '제목 숨기기';

  @override
  String get discordHideTitlesDesc => '애니와 만화 이름(커버와 링크 포함)을 \"비공개\"로 바꿔요.';

  @override
  String get discordConnectionHeader => '연결';

  @override
  String get listSearchHint => '이 리스트에서 검색';

  @override
  String get listSort => '정렬';

  @override
  String get listFilter => '필터';

  @override
  String get listRandom => '랜덤 작품';

  @override
  String get listReverse => '순서 뒤집기';

  @override
  String get listSortDefault => '리스트 정렬';

  @override
  String get listSortScore => '내 점수';

  @override
  String get listSortTitle => '제목';

  @override
  String get listSortUpdated => '마지막 업데이트';

  @override
  String get listSortProgress => '진행도';

  @override
  String get listSortReleased => '공개일';

  @override
  String get listSortAverage => '평균 점수';

  @override
  String get listFilterFormat => '형식';

  @override
  String get listFilterStatus => '상태';

  @override
  String get listFilterGenres => '장르';

  @override
  String get listFilterClear => '필터 지우기';

  @override
  String get listNoMatches => '이 리스트에 일치하는 항목이 없어요';

  @override
  String get discordLogin => 'Discord에 로그인';

  @override
  String get discordToken => 'Discord 토큰';

  @override
  String get discordTokenSaved => '저장됨. 탭하면 교체, 길게 누르면 삭제해요.';

  @override
  String get discordTokenNotSet => '설정 안 됨. 탭해서 추가하세요.';

  @override
  String get discordTokenSavedSnack => 'Discord 토큰을 저장했어요';

  @override
  String get discordTokenRemovedSnack => 'Discord 토큰을 삭제했어요';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => '켜짐 · 탭해서 모양 변경';

  @override
  String get discordRichPresenceRowOff => 'Discord 프로필에 지금 뭘 하는지 보여줘요';

  @override
  String get loginCancelled => '로그인을 취소했어요';

  @override
  String get invalidToken => '잘못된 토큰이에요';

  @override
  String loginFailed(String error) {
    return '로그인 실패: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList 로그인에 실패했어요';

  @override
  String get kitsuLoginFailed => 'Kitsu 로그인에 실패했어요. 이메일과 비밀번호를 확인해 주세요.';

  @override
  String get kitsuLoginTitle => 'Kitsu에 로그인';

  @override
  String get emailOrUsername => '이메일 또는 사용자 이름';

  @override
  String get password => '비밀번호';

  @override
  String get kitsuProfile => 'Kitsu 프로필';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka 로그인에 실패했어요';

  @override
  String get mangaBakaProfile => 'MangaBaka 프로필';

  @override
  String get refreshFromMangaBaka => 'MangaBaka에서 새로고침';

  @override
  String get mangaUpdatesLoginTitle => 'Sign in to MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profile';

  @override
  String get mangaUpdatesAnimeStart => 'Anime adaptation starts';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime adaptation ends';

  @override
  String get refreshFromMangaUpdates => 'Refresh from MangaUpdates';

  @override
  String get usernameOnly => 'Username';

  @override
  String get releases => 'Releases';

  @override
  String get artistsLabel => '아티스트';

  @override
  String get authorsLabel => '작가';

  @override
  String get publishersLabel => '출판사';

  @override
  String get licensedLabel => '정식 발매';

  @override
  String get contentRatingLabel => '콘텐츠 등급';

  @override
  String get yesLabel => '예';

  @override
  String get noLabel => '아니요';

  @override
  String get ratingSteps => '평점 단계';

  @override
  String get hideNsfw => 'NSFW 숨기기';

  @override
  String get hideNsfwDesc => '성인 작품을 피드와 검색에서 빼고, 내 성인 작품은 숨긴 미디어에 모아둬요.';

  @override
  String get kitsuAccountOptions => 'Kitsu 계정 옵션';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka 계정 옵션';

  @override
  String get couldNotUpdateKitsuSettings => 'Kitsu 설정을 업데이트하지 못했어요';

  @override
  String get titleCanonical => '원제';

  @override
  String get titleRomanized => '로마자';

  @override
  String get titleLocalized => '현지화';

  @override
  String get ratingSystem => '평점 방식';

  @override
  String get ratingSimple => '간단 (표정 3개)';

  @override
  String get ratingRegular => '보통 (별 5개)';

  @override
  String get ratingAdvanced => '상세 (10점 만점)';

  @override
  String get contentFilter => '콘텐츠 필터';

  @override
  String get contentSfw => '전체 이용가만';

  @override
  String get contentSometimes => '검색에서 성인 콘텐츠 허용';

  @override
  String get contentEverywhere => '모든 곳에서 성인 콘텐츠 허용';

  @override
  String get shareToGlobal => '글로벌 피드에 공유';

  @override
  String get shareToGlobalDesc => '내 활동이 Kitsu 글로벌 피드에 나타나게 해요.';

  @override
  String get memberSince => '가입일';

  @override
  String get location => '위치';

  @override
  String get accountType => '계정 유형';

  @override
  String get accountSupporter => '서포터';

  @override
  String get accountFree => '무료';

  @override
  String get accountDetails => '계정 상세 정보';

  @override
  String get refreshFromKitsu => 'Kitsu에서 새로고침';

  @override
  String get simklReadOnly => 'Simkl이 읽기 전용 접근을 허용했어요';

  @override
  String get incognitoEditsBlocked => '시크릿 모드: 리스트 편집이 막혀 있어요';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => '시크릿 모드: 진행도가 저장되지 않아요';

  @override
  String progressSet(int progress) {
    return '진행도를 $progress(으)로 설정했어요';
  }

  @override
  String removedFromList(String title) {
    return '$title을(를) 리스트에서 삭제했어요';
  }

  @override
  String get following => '팔로잉';

  @override
  String get homeSections => '홈 섹션';

  @override
  String get homeSectionsHint => '드래그해서 순서를 바꿔요. 숨긴 섹션은 불러오지 않아요.';

  @override
  String get customListDeleteFailed => '커스텀 리스트를 삭제하지 못했어요';

  @override
  String get customListsSaveFailed => '커스텀 리스트를 저장하지 못했어요';

  @override
  String get customListsSaved => '커스텀 리스트를 저장했어요';

  @override
  String get listName => '리스트 이름';

  @override
  String get addList => '리스트 추가';

  @override
  String voiceActorsIn(String name) {
    return '성우 · $name';
  }

  @override
  String get animeAppearances => '애니 출연작';

  @override
  String get mangaAppearances => '만화 출연작';

  @override
  String get voicedCharacters => '연기한 캐릭터';

  @override
  String get animeCredits => '애니 크레딧';

  @override
  String get mangaCredits => '만화 크레딧';

  @override
  String get mainProductions => '주요 작품';

  @override
  String get otherWorks => '기타 작품';

  @override
  String get prequelSequel => '프리퀄 & 시퀄';

  @override
  String get previousSeason => '이전 시즌';

  @override
  String get thisSeason => '이번 시즌';

  @override
  String get nextSeason => '다음 시즌';

  @override
  String get voiceRoles => '성우 역할';

  @override
  String get staffPositions => '스태프 직책';

  @override
  String get mangaWorks => '만화 작품';

  @override
  String get malProfile => 'MyAnimeList 프로필';

  @override
  String get refreshFromMal => 'MyAnimeList에서 새로고침';

  @override
  String get repullProfileCounts => '프로필과 개수를 다시 가져와요';

  @override
  String get refreshed => '새로고침했어요';

  @override
  String get simklProfile => 'Simkl 프로필';

  @override
  String get refreshFromSimkl => 'Simkl에서 새로고침';

  @override
  String get repullProfileLibrary => '프로필과 라이브러리를 다시 가져와요';

  @override
  String get simklSignInToSearch => '검색하려면 Simkl에 로그인하세요';

  @override
  String get dropRate => '중도 포기율';

  @override
  String get simklAttribution => '데이터와 아트워크 제공: Simkl. Simkl에서 보기';

  @override
  String get onHold => '보류 중';

  @override
  String get scoredBy => '평가 인원';

  @override
  String get planToWatch => '시청 예정';

  @override
  String get planToRead => '읽을 예정';

  @override
  String get timesRewatched => '다시 본 횟수';

  @override
  String get timesReread => '다시 읽은 횟수';

  @override
  String get comments => '댓글';

  @override
  String get moviesAndSeries => '영화 & 시리즈';

  @override
  String get trackingOnly => '트래킹 전용';

  @override
  String get signedIn => '로그인됨';

  @override
  String get searchLanguage => '검색 언어';

  @override
  String get savedToList => '리스트에 저장했어요';

  @override
  String get removedFromYourList => '리스트에서 삭제했어요';

  @override
  String get retry => '다시 시도';

  @override
  String get synopsis => '줄거리';

  @override
  String get details => '상세 정보';

  @override
  String get addToList => '리스트에 추가';

  @override
  String get trailer => '예고편';

  @override
  String get titleCopied => '제목을 복사했어요';

  @override
  String get linkCopied => '링크를 복사했어요';

  @override
  String get watchTrailer => '예고편 보기';

  @override
  String get copyTitle => '제목 복사';

  @override
  String get copyLink => '링크 복사';

  @override
  String get openInBrowser => '브라우저에서 열기';

  @override
  String viewOnSource(String source) {
    return '$source에서 보기';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return '$ep화가 $time 후에 방영돼요';
  }

  @override
  String nextEpisodeIn(String time) {
    return '다음 에피소드까지 $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return '$chapter화는 약 $time 후에 나올 예정이에요';
  }

  @override
  String get logPathCopied => '로그 파일 경로를 클립보드에 복사했어요';

  @override
  String get animeSource => '애니 소스';

  @override
  String get mangaSource => '만화 소스';

  @override
  String get popular => '인기';

  @override
  String get latest => '최신';

  @override
  String get saved => '저장됨';

  @override
  String get nothingMatched => '일치하는 항목이 없어요';

  @override
  String get nothingSavedFromSource => '이 소스에서 저장한 게 아직 없어요';

  @override
  String get sourceReturnedNothing => '이 소스에서 아무것도 안 나왔어요';

  @override
  String get checkConnectionOrSource => '연결을 확인하거나 다른 소스를 써보세요.';

  @override
  String get tryDifferentSearch => '다른 검색어로 시도해 보세요.';

  @override
  String get savedTitlesAppearHere => '리스트에 추가한 작품이 여기에 나타나요.';

  @override
  String get tryOtherFeed => '다른 피드나 검색을 이용해 보세요.';

  @override
  String searchSource(String source) {
    return '$source 검색';
  }

  @override
  String get animeExtensions => '애니 확장 프로그램';

  @override
  String get mangaExtensions => '만화 확장 프로그램';

  @override
  String get nothingHereYet => '아직 아무것도 없어요';

  @override
  String get savedOnDeviceUntilLogin => '직접 바꾸기 전까지는 아래 항목이 모두 이 기기에 저장돼요.';

  @override
  String get yourProfile => '내 프로필';

  @override
  String get activity => '활동';

  @override
  String get extensions => '확장 프로그램';

  @override
  String get logOut => '로그아웃';

  @override
  String get logIn => '로그인';

  @override
  String get logOutConfirm => '정말 로그아웃할까요?';

  @override
  String get incognitoMode => '시크릿 모드';

  @override
  String get alsoBlockListEdits => '리스트 편집도 막기';

  @override
  String get offlineMode => '오프라인 모드';

  @override
  String get switchService => '서비스 전환';

  @override
  String logOutOf(String name) {
    return '$name에서 로그아웃';
  }

  @override
  String get loggedIn => '로그인됨';

  @override
  String get notifications => '알림';

  @override
  String get nothingNew => '새로운 게 없어요';

  @override
  String get thisWeek => '이번 주';

  @override
  String get listOnly => '리스트만';

  @override
  String get filter => '필터';

  @override
  String get searchResults => '검색 결과';

  @override
  String get recentSearches => '최근 검색';

  @override
  String get searchOrSetFilter => '검색하거나 필터를 설정하세요';

  @override
  String get filters => '필터';

  @override
  String get showLess => '간단히 보기';

  @override
  String get showAll => '모두 보기';

  @override
  String get apply => '적용';

  @override
  String get preview => '미리보기';

  @override
  String get preset => '프리셋';

  @override
  String get cardNormal => '보통';

  @override
  String get cardOnCard => '카드 위';

  @override
  String get cardInCard => '카드 안';

  @override
  String get size => '크기';

  @override
  String get cardWidth => '카드 너비';

  @override
  String get compact => '컴팩트';

  @override
  String get coverAndTitleOnly => '커버와 제목만';

  @override
  String get titleLines => '제목 줄 수';

  @override
  String get shape => '모양';

  @override
  String get posterShape => '포스터 모양';

  @override
  String get cornerRadius => '모서리 둥글기';

  @override
  String get off => '끔';

  @override
  String get topLeft => '왼쪽 위';

  @override
  String get topRight => '오른쪽 위';

  @override
  String get bottomLeft => '왼쪽 아래';

  @override
  String get bottomRight => '오른쪽 아래';

  @override
  String get overlays => '오버레이';

  @override
  String get progressCount => '진행도 / 개수';

  @override
  String get pill => '알약';

  @override
  String get bar => '막대';

  @override
  String get outside => '바깥쪽';

  @override
  String get scoreBadge => '점수 배지';

  @override
  String get airingDot => '방영 중 점';

  @override
  String get updateAvailable => '업데이트 가능';

  @override
  String get notInstalled => '설치 안 됨';

  @override
  String get done => '완료';

  @override
  String get searchOrEnterUrl => '검색하거나 URL 입력';

  @override
  String get refresh => '새로고침';

  @override
  String get share => '공유';

  @override
  String get characters => '캐릭터';

  @override
  String get staff => '스태프';

  @override
  String get readMore => '더 보기';

  @override
  String get couldNotLoadList => '리스트를 불러오지 못했어요';

  @override
  String get logInToFavourite => '즐겨찾기에 추가하려면 로그인하세요';

  @override
  String get alsoKnownAs => '다른 이름';

  @override
  String get hideSpoilerNames => '스포일러 이름 숨기기';

  @override
  String get showSpoilerNames => '스포일러 이름 보기';

  @override
  String get favourited => '즐겨찾기함';

  @override
  String get favourite => '즐겨찾기';

  @override
  String get couldNotOpenTitle => '이 작품을 열 수 없어요';

  @override
  String get nobodyHereYet => '아직 아무도 없어요';

  @override
  String get noMatches => '일치하는 항목 없음';

  @override
  String get gridView => '그리드 보기';

  @override
  String get fullWidth => '전체 너비';

  @override
  String get userNotFound => '사용자를 찾을 수 없어요';

  @override
  String get couldNotUpdateFollow => '팔로우를 업데이트하지 못했어요';

  @override
  String followedUser(String name) {
    return '$name님을 팔로우했어요';
  }

  @override
  String unfollowedUser(String name) {
    return '$name님을 언팔로우했어요';
  }

  @override
  String get messages => '메시지';

  @override
  String get logInToSeeMessages => '메시지를 보려면 로그인하세요';

  @override
  String get editActivity => '활동 수정';

  @override
  String get newActivity => '새 활동';

  @override
  String get editMessage => '메시지 수정';

  @override
  String get writeMessage => '메시지 쓰기';

  @override
  String get editReply => '답글 수정';

  @override
  String get posted => '게시했어요';

  @override
  String get couldNotPost => '게시하지 못했어요';

  @override
  String get nothingToPreview => '미리볼 내용이 없어요';

  @override
  String get writeSomethingHint => '뭐라도 써보세요… AniList 마크다운을 쓸 수 있어요';

  @override
  String get privateMessage => '비공개 메시지';

  @override
  String get post => '게시';

  @override
  String get nothingHere => '아무것도 없어요';

  @override
  String get noAnimeProgress => '애니 진행도 없음';

  @override
  String get noMangaProgress => '만화 진행도 없음';

  @override
  String get noMessages => '메시지 없음';

  @override
  String get writeMessageHint => '메시지를 입력하세요…';

  @override
  String get shareSomethingHint => '하고 싶은 말을 남겨보세요…';

  @override
  String get all => '전체';

  @override
  String get anime => '애니';

  @override
  String get manga => '만화';

  @override
  String get count => '개수';

  @override
  String get hoursWatched => '시청 시간';

  @override
  String get chaptersRead => '읽은 챕터';

  @override
  String get meanScore => '평균 점수';

  @override
  String get noStatsYet => '아직 통계가 없어요';

  @override
  String get totalEntries => '전체 항목 수';

  @override
  String get episodesWatched => '시청한 에피소드';

  @override
  String get daysWatched => '시청한 일수';

  @override
  String get volumesRead => '읽은 권수';

  @override
  String get standardDeviation => '표준 편차';

  @override
  String get showMore => '더 보기';

  @override
  String get followsYou => '나를 팔로우해요';

  @override
  String get nobodyYet => '아직 아무도 없어요';

  @override
  String get logInToLike => '좋아요를 누르려면 로그인하세요';

  @override
  String get failedToLikeActivity => '활동에 좋아요를 누르지 못했어요';

  @override
  String get deleteActivityConfirm => '활동을 삭제할까요?';

  @override
  String get deletedActivity => '활동을 삭제했어요';

  @override
  String get failedToDeleteActivity => '활동을 삭제하지 못했어요';

  @override
  String get subscribed => '구독 중';

  @override
  String get unsubscribed => '구독을 취소했어요';

  @override
  String get failedToUpdateSubscription => '구독을 업데이트하지 못했어요';

  @override
  String get edit => '수정';

  @override
  String get delete => '삭제';

  @override
  String get likedBy => '좋아요한 사람';

  @override
  String get follow => '팔로우';

  @override
  String get nameCopied => '이름을 복사했어요';

  @override
  String get followsEachOther => '서로 팔로우 중';

  @override
  String get unfollow => '언팔로우';

  @override
  String get userIdCopied => '사용자 ID를 복사했어요';

  @override
  String get shareProfile => '프로필 공유';

  @override
  String get copyUserId => '사용자 ID 복사';

  @override
  String get failedToDelete => '삭제하지 못했어요';

  @override
  String get failedToLike => '좋아요를 누르지 못했어요';

  @override
  String get replies => '답글';

  @override
  String get reply => '답글 달기';

  @override
  String get noRepliesYet => '아직 답글이 없어요';

  @override
  String get favouriteAnime => '즐겨찾는 애니';

  @override
  String get favouriteManga => '즐겨찾는 만화';

  @override
  String get favouriteCharacters => '즐겨찾는 캐릭터';

  @override
  String get favouriteStaff => '즐겨찾는 스태프';

  @override
  String get favouriteStudios => '즐겨찾는 스튜디오';

  @override
  String get noFavouritesYet => '아직 즐겨찾기가 없어요';

  @override
  String get yourStory => '내 스토리';

  @override
  String get copiedToClipboard => '클립보드에 복사했어요';

  @override
  String get justNow => '방금';

  @override
  String get openImage => '이미지 열기';

  @override
  String get hideSpoiler => '스포일러 숨기기';

  @override
  String get showSpoiler => '스포일러 보기';

  @override
  String get status => '상태';

  @override
  String get score => '점수';

  @override
  String get started => '시작일';

  @override
  String get completed => '완료일';

  @override
  String get private => '비공개';

  @override
  String get hideFromStatusLists => '상태 리스트에서 숨기기';

  @override
  String get totalRepeats => '총 반복 횟수';

  @override
  String get other => '기타';

  @override
  String get customLists => '커스텀 리스트';

  @override
  String get activeDays => '활동한 날';

  @override
  String get longestStreak => '최장 연속 기록';

  @override
  String get currentStreak => '현재 연속 기록';

  @override
  String get tapOrHoverDay => '날짜를 탭하거나 마우스를 올려보세요';

  @override
  String get less => '적게';

  @override
  String get more => '많이';

  @override
  String epIn(int ep, String time) {
    return '$ep화까지 $time';
  }

  @override
  String get sectionLoading => '불러오는 중';

  @override
  String get querySize => '쿼리 크기';

  @override
  String get querySizeDesc =>
      '\"한 번에\"는 모든 행(과 프로필 전체)을 요청 한 번으로 불러와요. \"나눠서\"는 행이나 프로필 부분마다 작은 요청을 보내요. 각각 빠르고 도착하는 대로 표시돼요.';

  @override
  String get oneBig => '한 번에';

  @override
  String get split => '나눠서';

  @override
  String get sectionSocial => '소셜';

  @override
  String get systemNotifications => '시스템 알림';

  @override
  String get feedLayout => '피드 레이아웃';

  @override
  String sectionsShown(int shown, int total) {
    return '$total개 중 $shown개 표시 중 — 탭해서 선택하고 순서 변경';
  }

  @override
  String labelSections(String label) {
    return '$label 섹션';
  }

  @override
  String get accountOptions => '계정 옵션';

  @override
  String get anilistAccountOptions => 'AniList 계정 옵션';

  @override
  String get sectionPrivacy => '개인정보';

  @override
  String get hidePrivateEntries => '비공개 항목 숨기기';

  @override
  String get hidePrivateEntriesDesc => 'AniList에서 비공개로 표시한 항목을 피드에서 빼요';

  @override
  String get anilistExcludeList => '내 목록 제외';

  @override
  String get anilistExcludeListDesc => 'AniList에 이미 있는 작품은 애니·만화 페이지에서 빼요';

  @override
  String get anilistProfile => 'AniList 프로필';

  @override
  String get refreshFromAnilist => 'AniList에서 새로고침';

  @override
  String get couldNotUpdateAnilistSettings => 'AniList 설정을 업데이트하지 못했어요';

  @override
  String get sectionNames => '이름';

  @override
  String get titleLanguage => '제목 언어';

  @override
  String get titleLanguageDesc =>
      '모든 곳에서 제목을 표기하는 방식이에요. 예: Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => '스태프 및 캐릭터 이름';

  @override
  String get sectionLists => '리스트';

  @override
  String get scoreFormat => '점수 형식';

  @override
  String get sortListsBy => '리스트 정렬 기준';

  @override
  String labelCustomLists(String label) {
    return '$label 커스텀 리스트';
  }

  @override
  String customListsCount(int count) {
    return '리스트 $count개 — 탭해서 추가하거나 삭제';
  }

  @override
  String get mergeActivities => '활동 합치기';

  @override
  String minutesCount(int count) {
    return '$count분';
  }

  @override
  String get timezone => '시간대';

  @override
  String get notSet => '설정 안 됨';

  @override
  String get airingNotifications => '방영 알림';

  @override
  String get airingNotificationsDesc => '팔로우한 작품의 새 에피소드가 방영되면 알려줘요';

  @override
  String get displayAdultContent => '성인 콘텐츠 표시';

  @override
  String get displayAdultContentDesc => '둘러보기, 검색, 피드에 19금 작품을 포함해요';

  @override
  String get restrictMessages => '팔로우한 사람에게만 메시지 허용';

  @override
  String get restrictMessagesDesc => '내가 팔로우한 사람만 나에게 메시지를 보낼 수 있어요';

  @override
  String get sectionServices => '서비스';

  @override
  String get novel => '웹소설';

  @override
  String labelService(String label) {
    return '$label 서비스';
  }

  @override
  String nameSettings(String name) {
    return '$name 설정';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name 확장 프로그램 브리지의 옵션';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name을(를) 시작하지 못했어요: $error';
  }

  @override
  String get importLists => '리스트 가져오기';

  @override
  String get importListsDesc => 'Aniyomi, Mihon / Tachiyomi, Kotatsu 백업에서';

  @override
  String get exportLists => '리스트 내보내기';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon, Kotatsu 백업으로';

  @override
  String get sectionBrowse => '둘러보기';

  @override
  String get readingTab => '읽기 탭';

  @override
  String get readingTabDesc => '세 번째 탭에 보여줄 확장 프로그램';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => '기본 피드';

  @override
  String get defaultFeedDesc => '소스를 열 때 처음 보여줄 리스트';

  @override
  String noServiceSupports(String type) {
    return '$type을(를) 지원하는 서비스가 없어요';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · 소스 $installed개 중 $loaded개 불러오는 중';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return '여기서는 $type을(를) 지원하는 확장 프로그램 서비스가 없어요.';
  }

  @override
  String get loadDataFrom => '데이터 가져올 곳';

  @override
  String noInstalledSourcesYet(String type) {
    return '설치된 $type 소스가 아직 없어요.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name의 확장 프로그램이 설치되어 있지 않아요';
  }

  @override
  String get thisSource => '이 소스';

  @override
  String failedToAddRepository(String error) {
    return '저장소를 추가하지 못했어요: $error';
  }

  @override
  String installedType(String type) {
    return '설치된 $type';
  }

  @override
  String availableType(String type) {
    return '사용 가능한 $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return '설치된 $type 확장 프로그램이 없어요';
  }

  @override
  String noAvailableExtensions(String type) {
    return '사용 가능한 $type 확장 프로그램이 없어요';
  }

  @override
  String get nothingToShowYet => '아직 보여줄 게 없어요';

  @override
  String get addTitlesHint => '리스트에 작품을 추가하면 여기에 나타나요.';

  @override
  String get couldntLoad => '불러오지 못했어요';

  @override
  String get progressStyleHint =>
      '알약과 막대는 포스터 위에 겹쳐 표시돼요. 바깥쪽은 같은 개수를 일반 텍스트로 보여줘요. 하나만 골라주세요.';

  @override
  String get nixManagedUpdate =>
      '이 빌드는 Nix로 관리돼요 — 여기서 업데이트하지 말고 flake에서 \"nix flake update\"를 실행한 뒤 다시 빌드하세요';

  @override
  String autoUpdateFailed(String error) {
    return '자동 업데이트에 실패했어요($error) — 대신 다운로드 페이지를 열게요';
  }

  @override
  String get unknownPreference => '알 수 없는 환경설정';

  @override
  String unsupportedPreferenceType(String type) {
    return '지원하지 않는 환경설정 유형: $type';
  }

  @override
  String get notYetReleased => '미공개';

  @override
  String get notStarted => '시작 전';

  @override
  String get country => '국가';

  @override
  String get sort => '정렬';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon, Kotatsu 백업 선택';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi, Kotatsu에서 라이브러리를 옮겨와요. 제목, 커버, 진행도, 카테고리가 그대로 유지돼요.';

  @override
  String get chooseBackupFile => '백업 파일 선택';

  @override
  String importAnimeCount(int count) {
    return '애니 $count개 가져오기';
  }

  @override
  String importMangaCount(int count) {
    return '만화 $count개 가져오기';
  }

  @override
  String get mergeWithExisting => '기존 리스트와 병합';

  @override
  String get mergeWithExistingDesc => '이미 있는 건 유지해요. 끄면 일치하는 작품을 덮어써요';

  @override
  String get chooseAnother => '다른 파일 선택';

  @override
  String get import => '가져오기';

  @override
  String animeCount(int count) {
    return '애니 $count개';
  }

  @override
  String mangaCount(int count) {
    return '만화 $count개';
  }

  @override
  String get chooseSaveLocation => '백업을 저장할 위치 선택';

  @override
  String savedPath(String path) {
    return '$path에 저장했어요';
  }

  @override
  String exportFailed(String error) {
    return '내보내기 실패: $error';
  }

  @override
  String get nothingInLocalLists => '로컬 리스트에 아직 아무것도 없어요.';

  @override
  String exportsSummary(int anime, int manga) {
    return '로컬 리스트에서 애니 $anime개와 만화 $manga개를 내보내요. Kotatsu는 만화만 지원해요.';
  }

  @override
  String get saveToFolder => '폴더에 저장';

  @override
  String get formatAnimeManga => '애니와 만화 · .tachibk';

  @override
  String get formatMangaTachibk => '만화만 · .tachibk';

  @override
  String get formatMangaZip => '만화만 · .zip';

  @override
  String get genres => '장르';

  @override
  String get relations => '관련 작품';

  @override
  String get recommendations => '추천';

  @override
  String get openings => '오프닝';

  @override
  String get endings => '엔딩';

  @override
  String get background => '배경';

  @override
  String get links => '링크';

  @override
  String get rank => '순위';

  @override
  String get members => '멤버';

  @override
  String get favorites => '즐겨찾기';

  @override
  String get episodes => '에피소드';

  @override
  String get chapters => '챕터';

  @override
  String get volumes => '권';

  @override
  String get format => '형식';

  @override
  String get source => '원작';

  @override
  String get duration => '러닝타임';

  @override
  String minutesPerEpisode(int minutes) {
    return '에피소드당 $minutes분';
  }

  @override
  String get rating => '등급';

  @override
  String get studio => '스튜디오';

  @override
  String get serialization => '연재처';

  @override
  String get season => '시즌';

  @override
  String get broadcast => '방송';

  @override
  String get aired => '방영 기간';

  @override
  String get published => '연재 기간';

  @override
  String get popularity => '인기';

  @override
  String get community => '커뮤니티';

  @override
  String get watching => '시청 중';

  @override
  String get reading => '읽는 중';

  @override
  String get dropped => '중단';

  @override
  String get planned => '예정';

  @override
  String get trailers => '예고편';

  @override
  String get ratings => '평점';

  @override
  String get originalTitle => '원작';

  @override
  String get titleLabel => '제목';

  @override
  String get votes => '투표';

  @override
  String get watchedStat => '시청함';

  @override
  String get runtime => '상영 시간';

  @override
  String get director => '감독';

  @override
  String get network => '방송사';

  @override
  String get certification => '인증';

  @override
  String get airs => '방영일';

  @override
  String get budget => '제작비';

  @override
  String get revenue => '흥행 수익';

  @override
  String get released => '개봉일';

  @override
  String get tags => '태그';

  @override
  String get author => '작가';

  @override
  String get born => '출생';

  @override
  String get website => '웹사이트';

  @override
  String get established => '설립';

  @override
  String get manhwa => '웹툰';

  @override
  String get manhua => '중국 만화';

  @override
  String get novels => '웹소설';

  @override
  String get thisMonth => '이번 달';

  @override
  String get movies => '영화';

  @override
  String get shows => '프로그램';

  @override
  String get rewatching => '다시 보는 중';

  @override
  String get rereading => '다시 읽는 중';

  @override
  String get watchedStatus => '시청함';

  @override
  String get planning => '예정';

  @override
  String get paused => '일시정지';

  @override
  String get watch => '보기';

  @override
  String get read => '읽기';

  @override
  String get finished => '완결';

  @override
  String get releasing => '연재 중';

  @override
  String get cancelled => '취소됨';

  @override
  String get hiatus => '휴재 중';

  @override
  String get remove => '삭제';

  @override
  String syncToService(String service) {
    return '$service에 동기화';
  }

  @override
  String syncedToService(String service) {
    return '$service에 동기화했어요';
  }

  @override
  String get latestReleases => '최신 릴리스';

  @override
  String get topRated => '높은 평점';

  @override
  String localSection(String title) {
    return '$title · 로컬';
  }

  @override
  String get localEntryNote =>
      '이 작품은 이 기기의 로컬 리스트에만 있어요. 계정 리스트와 충돌할 수 있어서 여기서는 편집할 수 없지만, 삭제는 할 수 있어요.';

  @override
  String get cardPresetPoster => '포스터';

  @override
  String get cardPresetCard => '카드';

  @override
  String get cardPresetCozy => '코지';

  @override
  String get sortTopRated => '높은 평점';

  @override
  String get sortMostPopular => '인기순';

  @override
  String get sortTrending => '트렌딩';

  @override
  String get sortNewest => '최신순';

  @override
  String get sortAz => '가나다순';

  @override
  String get sortMostFavourited => '즐겨찾기 많은 순';

  @override
  String get anyCountry => '모든 국가';

  @override
  String get orderScore => '점수';

  @override
  String get orderTitle => '제목';

  @override
  String get orderLastUpdated => '마지막 업데이트';

  @override
  String get orderLastAdded => '마지막으로 추가';

  @override
  String get never => '안 함';

  @override
  String get always => '항상';

  @override
  String get scorePoint100 => '100점';

  @override
  String get scorePoint10Decimal => '10점 (소수점)';

  @override
  String get scorePoint10 => '10점';

  @override
  String get scorePoint5 => '별 5개';

  @override
  String get scorePoint3 => '스마일 3단계';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count시간',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count주',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => '이어하기';

  @override
  String get resumeSourceMissing => '이어하려면 이 작품의 소스를 설치하세요';

  @override
  String get resumeRemove => '이어하기에서 삭제';

  @override
  String resumeAt(String time) {
    return '$time 남음';
  }

  @override
  String resumePage(int page, int total) {
    return '$total쪽 중 $page쪽';
  }

  @override
  String get continueWatching => '이어서 보기';

  @override
  String get continueReading => '이어서 읽기';

  @override
  String get favouriteAnimeSection => '즐겨찾는 애니';

  @override
  String get favouriteMangaSection => '즐겨찾는 만화';

  @override
  String get plannedAnime => '볼 예정인 애니';

  @override
  String get plannedManga => '읽을 예정인 만화';

  @override
  String get completedAnime => '완료한 애니';

  @override
  String get completedManga => '완료한 만화';

  @override
  String get hiddenMedia => '숨긴 미디어';

  @override
  String get recentUpdates => '최근 업데이트';

  @override
  String get trendingNow => '지금 트렌딩';

  @override
  String get popularThisSeason => '이번 시즌 인기작';

  @override
  String get trendingMovies => '트렌딩 영화';

  @override
  String get topRatedSeries => '높은 평점 시리즈';

  @override
  String get mostFavouriteSeries => '즐겨찾기 많은 시리즈';

  @override
  String get popularAnime => '인기 애니';

  @override
  String get trendingManhwa => '트렌딩 웹툰';

  @override
  String get trendingNovels => '트렌딩 웹소설';

  @override
  String get topRatedManga => '높은 평점 만화';

  @override
  String get mostFavouriteManga => '즐겨찾기 많은 만화';

  @override
  String get popularManga => '인기 만화';

  @override
  String get topMovies => '인기 영화';

  @override
  String get topOna => '인기 ONA';

  @override
  String get topOva => '인기 OVA';

  @override
  String get mostPopular => '가장 인기 있는';

  @override
  String get mostFavourite => '즐겨찾기 가장 많은';

  @override
  String get upcoming => '공개 예정';

  @override
  String get topManga => '인기 만화';

  @override
  String get topManhwa => '인기 웹툰';

  @override
  String get topManhua => '인기 중국 만화';

  @override
  String get topNovels => '인기 웹소설';

  @override
  String get topOneShots => '인기 단편';

  @override
  String get trendingMoviesToday => '오늘의 트렌딩 영화';

  @override
  String get trendingShowsToday => '오늘의 트렌딩 프로그램';

  @override
  String get trendingMoviesWeek => '이번 주 트렌딩 영화';

  @override
  String get trendingShowsWeek => '이번 주 트렌딩 프로그램';

  @override
  String get mostWatchedMoviesMonth => '이번 달 가장 많이 본 영화';

  @override
  String get mostWatchedShowsMonth => '이번 달 가장 많이 본 프로그램';

  @override
  String get trendingThisWeek => '이번 주 트렌딩';

  @override
  String get mostWatchedThisMonth => '이번 달 가장 많이 본 작품';

  @override
  String get repoLinksAdded => '저장소 링크를 추가했어요!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList에서 데이터를 가져오는 중 오류가 났어요.';

  @override
  String get navInfo => '정보';

  @override
  String get navComments => '댓글';

  @override
  String get playerNotAvailable => '플레이어는 아직 사용할 수 없어요';

  @override
  String deepLinkInitialError(String error) {
    return '초기 딥링크를 가져오는 중 오류: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return '링크를 여는 중 오류: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return '이 링크는 열 수 없어요: $link';
  }

  @override
  String linkOpenError(String error) {
    return '링크를 여는 중 오류: $error';
  }

  @override
  String get forReleasingTitles => '현재 연재 중인 작품용';

  @override
  String get progress => '진행도';

  @override
  String get notes => '메모';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" 서비스를 찾을 수 없어요';
  }

  @override
  String get glassEffectEnabled => '글래스 효과를 켰어요';

  @override
  String get glassEffectDisabled => '글래스 효과를 껐어요';

  @override
  String get materialYouEnabled => 'Material You를 켰어요';

  @override
  String get materialYouDisabled => 'Material You를 껐어요';

  @override
  String get darkModeEnabled => '다크 모드를 켰어요';

  @override
  String get darkModeDisabled => '다크 모드를 껐어요';

  @override
  String get animeList => '애니 리스트';

  @override
  String get mangaList => '만화 리스트';

  @override
  String ownerAnimeList(String owner) {
    return '$owner님의 애니 리스트';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner님의 만화 리스트';
  }

  @override
  String get loadingList => '리스트 불러오는 중';

  @override
  String get earlier => '이전';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 전',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count시간 전',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count분 전',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count분 전';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count시간 전';
  }

  @override
  String daysAgoShort(int count) {
    return '$count일 전';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count주 전';
  }

  @override
  String get couldntLoadSource => '이 소스를 불러오지 못했어요';

  @override
  String get followers => '팔로워';

  @override
  String couldntLoadTitle(String title) {
    return '$title을(를) 불러오지 못했어요';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => '이 프로필을 불러오지 못했어요';

  @override
  String get profile => '프로필';

  @override
  String get feed => '피드';

  @override
  String get stats => '통계';

  @override
  String get received => '받은';

  @override
  String get sent => '보낸';

  @override
  String get global => '전체 공개';

  @override
  String get couldntLoadPage => '이 페이지를 불러오지 못했어요';

  @override
  String get couldntLoadAllDetails => '모든 상세 정보를 불러오지 못했어요';

  @override
  String get series => '시리즈';

  @override
  String get studios => '스튜디오';

  @override
  String get users => '사용자';

  @override
  String repositoriesTitle(String type) {
    return '$type 저장소';
  }

  @override
  String get repositoryUrl => '저장소 URL';

  @override
  String get downloadingRepository => '저장소 다운로드 중…';

  @override
  String get noRepositories => '추가된 저장소가 없어요';

  @override
  String repoExtensionsCount(String count) {
    return '확장 프로그램 $count개';
  }

  @override
  String get searchExtensions => '확장 프로그램 검색...';

  @override
  String deletePluginTitle(String name) {
    return '$name을(를) 삭제할까요?';
  }

  @override
  String get deletePluginMessage => '이 플러그인을 정말 삭제할까요?';

  @override
  String pluginDeleted(String name) {
    return '$name을(를) 삭제했어요';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name은(는) 설정된 저장소에 없어요';
  }

  @override
  String get pluginFetchFailed => '플러그인 정보를 가져오지 못했어요';

  @override
  String installPluginTitle(String name) {
    return '$name 설치';
  }

  @override
  String sizeLabel(String size) {
    return '크기: $size';
  }

  @override
  String get installedState => '설치됨';

  @override
  String get errorLabel => '오류:';

  @override
  String get stackTraceDetails => '상세 정보 (스택 트레이스)';

  @override
  String get shareLogFile => '로그 파일 공유';

  @override
  String get copyLogs => '로그 복사';

  @override
  String noListToEdit(String service) {
    return '$service에는 편집할 리스트가 없어요';
  }

  @override
  String get couldNotReadFile => '그 파일을 읽을 수 없어요';

  @override
  String importedSummary(int anime, int manga) {
    return '애니 $anime개와 만화 $manga개를 가져왔어요';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count개는 이미 있어요';
  }

  @override
  String get airingNow => '지금 방영 중';

  @override
  String get topRatedMovies => '높은 평점 영화';

  @override
  String get koreanDramas => '한국 드라마';

  @override
  String get chineseDramas => '중국 드라마';

  @override
  String get japaneseDramas => '일본 드라마';

  @override
  String get thaiDramas => '태국 드라마';

  @override
  String get turkishDramas => '튀르키예 드라마';

  @override
  String get miniSeries => '미니시리즈';

  @override
  String get topRatedShows => '높은 평점 프로그램';

  @override
  String get recommendedSection => '추천작';

  @override
  String get syncRow => '리스트 동기화';

  @override
  String get syncRowDesc => '한 서비스의 리스트를 다른 계정에도 그대로 반영해요';

  @override
  String get syncTitle => '동기화';

  @override
  String get syncMainService => '메인 서비스';

  @override
  String get syncMainServiceDesc =>
      '이 서비스의 리스트가 기준이에요. 로그인된 다른 서비스는 여기에 맞춰 업데이트돼요';

  @override
  String get syncAuto => '자동 동기화';

  @override
  String get syncAutoDesc => '앱을 열 때와 30분마다 백그라운드에서 가져와서 동기화해요';

  @override
  String get syncAddMissing => '없는 항목 추가';

  @override
  String get syncAddMissingDesc => '다른 서비스에 아직 없는 항목도 추가해요';

  @override
  String get syncOnlyForward => '더 나간 진행도 유지';

  @override
  String get syncOnlyForwardDesc => '이미 더 앞서 있는 서비스의 진행도는 낮추지 않아요';

  @override
  String get syncFetch => '가져오기';

  @override
  String get syncFetchAgain => '다시 가져오기';

  @override
  String get syncAll => '모두 동기화';

  @override
  String get syncStop => '중지';

  @override
  String get syncResume => '이어하기';

  @override
  String get syncNothingToSync => '이 서비스는 이 유형을 동기화할 수 없어요';

  @override
  String get syncNoTargets => '동기화할 다른 서비스에도 로그인하세요';

  @override
  String get syncLoadingMap => 'ID 매핑 불러오는 중';

  @override
  String get syncComparing => '리스트 비교 중';

  @override
  String get syncIntro =>
      '메인 서비스를 고르고 가져오기를 누르세요. 각 서비스에서 리스트를 한 번씩 가져와서 메인과 비교해요.';

  @override
  String get syncStateSynced => '동기화됨';

  @override
  String get syncStateOutdated => '동기화 안 됨';

  @override
  String get syncStateMissing => '리스트에 없음';

  @override
  String get syncStateUnmapped => '일치 없음';

  @override
  String syncPaused(String time) {
    return '요청 제한을 기다리는 중이에요. $time 후에 이어가요';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$name에만 있는 $count개는 그대로 둬요';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total개 중 $done개';
  }

  @override
  String get syncNothingHere => '보여줄 게 없어요';

  @override
  String syncLimits(int used, int max, String window) {
    return '이번 $window에 요청 $max회 중 $used회 사용';
  }

  @override
  String get syncMinute => '1분';

  @override
  String get syncDay => '1일';

  @override
  String get syncNotInList => '아직 리스트에 없어요';

  @override
  String get syncCleared => '계획을 지웠어요';

  @override
  String get syncClear => '지우기';

  @override
  String get syncOptions => '옵션';

  @override
  String get syncShared => '다른 항목과 같은 엔트리를 공유해요';

  @override
  String syncNotFound(String service) {
    return '$service에서 찾을 수 없어요';
  }

  @override
  String syncService(String service, int count) {
    return '$service 동기화 ($count)';
  }

  @override
  String get syncOnEdit => '변경 사항 바로 동기화';

  @override
  String get syncOnEditDesc => '진행도 업데이트와 리스트 편집을 로그인된 다른 서비스에 바로 반영해요';

  @override
  String syncPushed(String services) {
    return '$services에 동기화했어요';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => '요청이 너무 많아요. 잠시 후에 다시 시도하세요';

  @override
  String get syncAhead => '더 앞선 쪽 우선';

  @override
  String get syncAheadDesc => '양방향: 작품마다 가장 많이 진행된 엔트리가 우선하고, 다른 모든 서비스에 복사돼요';

  @override
  String syncAheadFrom(String service) {
    return '$service에서';
  }

  @override
  String get syncConfirm => '동기화 전에 확인';

  @override
  String get syncConfirmDesc => '모두 동기화로 뭐가 바뀌는지, 요청이 몇 번 필요한지 보여줘요';

  @override
  String get syncPreviewTitle => '동기화 준비 완료';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '업데이트 $updates개, 추가 $adds개';
  }

  @override
  String syncPreviewRequests(int count) {
    return '요청 약 $count회';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'ID $count개는 먼저 조회가 필요해요';
  }

  @override
  String get syncPreviewNothing => '바꿀 게 없어요';

  @override
  String get syncStart => '시작';

  @override
  String get syncRetry => '다시 시도';

  @override
  String get syncSkip => '이 항목 건너뛰기';

  @override
  String get syncInclude => '이 항목 다시 포함';

  @override
  String get syncSkippedLabel => '건너뜀';

  @override
  String get syncChanges => '차이점';

  @override
  String get syncChangeStatus => '상태';

  @override
  String get syncChangeProgress => '진행도';

  @override
  String get syncChangeScore => '점수';

  @override
  String get syncChangeDates => '날짜';

  @override
  String get syncChangeRepeat => '다시 본 횟수';

  @override
  String get syncFailedReason => '실패한 이유';

  @override
  String get syncSkippedHint => '건너뛴 항목은 다시 가져와도 그대로 둬요';

  @override
  String get commentsRules => '댓글 규칙';

  @override
  String get commentsRulesBody =>
      '규칙을 어기면 바로 퇴장\n\n1. 인종차별, 차별, 혐오 발언 금지\n2. 도배와 자기 홍보 금지\n3. NSFW 콘텐츠 절대 금지\n4. 영어만 사용, 예외 없음\n5. 사칭, 괴롭힘, 욕설 금지\n6. 불법 콘텐츠나 팬덤에 대한 심한 무례 금지\n7. 저장소나 확장 프로그램 요청 및 공유 금지\n8. 스포일러는 스포일러 태그와 경고를 달 때만\n9. 미성년 캐릭터를 성적으로 다루거나 부적절한 댓글 금지\n10. 아닌 것 같으면 올리지 마세요!';

  @override
  String get commentsRulesAccept => '알겠어요';

  @override
  String get commentsSortNewest => '최신순';

  @override
  String get commentsSortOldest => '오래된순';

  @override
  String get commentsSortHighest => '평점 높은 순';

  @override
  String get commentsSortLowest => '평점 낮은 순';

  @override
  String commentsEpisodeShort(int number) {
    return '$number화';
  }

  @override
  String commentsChapterShort(int number) {
    return '챕터 $number';
  }

  @override
  String get commentsFilterEpisodeTitle => '에피소드로 필터';

  @override
  String get commentsFilterChapterTitle => '챕터로 필터';

  @override
  String get commentsFilterTagTitle => '에피소드나 챕터 번호를 입력하세요';

  @override
  String get commentsFilterHint => '번호';

  @override
  String get commentsFilterApply => '필터';

  @override
  String get commentsFilterClear => '모두 보기';

  @override
  String get commentsPlaceholder => '댓글 추가…';

  @override
  String commentsReplyingTo(String name) {
    return '$name님에게 답글 작성 중';
  }

  @override
  String get commentsSend => '보내기';

  @override
  String get commentsTagButton => '태그';

  @override
  String commentsTagTitle(String label) {
    return '$label 태그 (선택)';
  }

  @override
  String get commentsTagEpisode => '에피소드';

  @override
  String get commentsTagChapter => '챕터';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label 번호';
  }

  @override
  String commentsTagTooHigh(int total) {
    return '태그는 전체($total)를 넘을 수 없어요';
  }

  @override
  String get commentsNoTag => '태그 없음';

  @override
  String get commentsSpoiler => '스포일러';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF 검색';

  @override
  String get commentsGifEmpty => 'GIF를 찾을 수 없어요';

  @override
  String get commentsEmptyText => '댓글은 비워둘 수 없어요';

  @override
  String get commentsBannedYou => '댓글 작성이 차단되었어요';

  @override
  String get commentsEdited => '댓글을 수정했어요';

  @override
  String get commentsDeleted => '댓글을 삭제했어요';

  @override
  String get commentsDeletedPlaceholder => '[삭제됨]';

  @override
  String get commentsReported => '댓글을 신고했어요';

  @override
  String get commentsUserBanned => '사용자를 차단했어요';

  @override
  String get commentsReport => '신고';

  @override
  String get commentsReportAsk => '이 댓글을 관리자에게 신고할까요?';

  @override
  String get commentsDelete => '삭제';

  @override
  String get commentsDeleteAsk => '이 댓글은 모두에게서 삭제돼요.';

  @override
  String get commentsBan => '차단';

  @override
  String get commentsBanAsk => '이 사용자의 댓글 작성을 차단할까요?';

  @override
  String get commentsCopy => '복사';

  @override
  String get commentsViewReply => '답글 1개 보기';

  @override
  String commentsViewReplies(int count) {
    return '답글 $count개 보기';
  }

  @override
  String get commentsHideReplies => '답글 숨기기';

  @override
  String get commentsLoadMore => '댓글 더 불러오기';

  @override
  String get commentsEmpty => '아직 댓글이 없어요. 첫 댓글을 남겨보세요!';

  @override
  String get commentsEmptyFiltered => '이 필터에 맞는 댓글이 없어요';

  @override
  String get commentsSignIn => '댓글을 읽고 쓰려면 AniList에 로그인하세요';

  @override
  String get commentsSignInMessage => '댓글은 모든 서비스에서 공유되고 AniList 계정을 사용해요.';

  @override
  String get commentsUnavailable => '이 작품은 댓글을 쓸 수 없어요';

  @override
  String get commentsUnavailableMessage => 'AniList 항목과 연결하지 못했어요.';

  @override
  String get commentsDisabled => '댓글이 꺼져 있어요';

  @override
  String get commentsDisabledMessage => '설정 › 일반에서 다시 켤 수 있어요.';

  @override
  String get commentsOffline => '댓글을 불러오지 못했어요';

  @override
  String get commentsSingleTitle => '댓글 1개 표시 중';

  @override
  String get commentsShowAll => '모든 댓글 보기';

  @override
  String get commentsSettingsHeader => '댓글';

  @override
  String get commentsSettingEnabled => '댓글';

  @override
  String get commentsSettingEnabledDesc =>
      '작품에 댓글 탭을 보여주고 AniList 계정으로 댓글 서버에 로그인해요';

  @override
  String get commentsSettingAlerts => '답글 알림';

  @override
  String get commentsSettingAlertsDesc => '내 댓글에 누가 답글을 달면 알려줘요';

  @override
  String get commentsNoticeReplyTitle => '새 댓글 답글';

  @override
  String commentsNoticeReply(String name) {
    return '$name님이 내 댓글에 답글을 달았어요';
  }

  @override
  String get commentsNoticeWarningTitle => '경고를 받았어요';

  @override
  String get commentsNoticeWarning => '댓글을 조금 더 신중하게 써주세요';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu 소식';

  @override
  String get barcodeTitle => '바코드 스캔';

  @override
  String get barcodeTooltip => '바코드로 만화나 웹소설을 찾아요';

  @override
  String get barcodeIntro => '단행본 뒷면의 바코드에 카메라를 대거나 ISBN을 입력하세요.';

  @override
  String get barcodeIntroManual => '단행본 뒷면 바코드 위에 인쇄된 ISBN을 입력하세요.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => '올바른 ISBN이 아니에요';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn에 해당하는 책을 찾을 수 없어요';
  }

  @override
  String get barcodeCameraDenied =>
      '카메라를 사용할 수 없어요. 카메라 접근을 허용하거나 ISBN을 직접 입력하세요.';

  @override
  String get themesTitle => '오프닝 & 엔딩';

  @override
  String get themesPlayVideo => '영상 재생';

  @override
  String get themesPlayAudio => '오디오만 재생';

  @override
  String get themesOpenSite => 'AnimeThemes에서 열기';

  @override
  String get themesCredit => 'AnimeThemes의 테마곡';

  @override
  String get themesVersions => '버전';

  @override
  String get sauceTitle => '출처 찾기';

  @override
  String get sauceIntro => '만화 페이지나 일러스트를 업로드하거나 링크를 붙여넣어서 출처를 찾아보세요.';

  @override
  String get sauceKeyTitle => 'SauceNAO API 키';

  @override
  String get sauceKeyHint => '선택 사항이에요. 하루 검색 한도가 늘어나요';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php에서 무료 키를 받으세요';

  @override
  String get sauceOpen => '출처 열기';

  @override
  String get sauceCredit => 'SauceNAO 이미지 검색';

  @override
  String get sauceEmpty => '일치하는 결과가 없어요';

  @override
  String get sauceTooltip => '만화 페이지나 일러스트의 출처를 찾아요';

  @override
  String get trendzTitle => '애니 차트';

  @override
  String get trendzAnime => '애니';

  @override
  String get trendzFemale => '여성 캐릭터';

  @override
  String get trendzMale => '남성 캐릭터';

  @override
  String get trendzCouple => '커플';

  @override
  String get trendzCredit => 'AniTrendz의 주간 차트';

  @override
  String get trendzNew => 'NEW';

  @override
  String get trendzEmpty => '차트가 비어 있어요';

  @override
  String get shareCard => '카드 공유';

  @override
  String get shareCardList => '리스트 카드 공유';

  @override
  String get shareCardSaved => '카드를 저장했어요';

  @override
  String get shareCardFailed => '카드를 만들지 못했어요';

  @override
  String get shareCardListEmpty => '공유할 내용이 리스트에 아직 없어요';

  @override
  String get shareCardTop => '내 추천작';

  @override
  String themesEpisodes(String eps) {
    return '총 $eps화';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% 일치';
  }

  @override
  String trendzWeek(String week, String season) {
    return '$week주차 · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count표';
  }

  @override
  String trendzPeak(String rank) {
    return '최고 $rank위';
  }

  @override
  String trendzWeeks(String count) {
    return '톱 10에 $count주';
  }

  @override
  String get imageSearchTitle => '이미지로 검색';

  @override
  String get imageSearchTooltip => '스크린샷으로 애니를 찾아요';

  @override
  String get imageSearchIntro =>
      '스크린샷을 고르거나 이미지 링크를 붙여넣으면 trace.moe가 어느 에피소드의 어느 장면인지 찾아줘요.';

  @override
  String get imageSearchPick => '이미지 선택';

  @override
  String get imageSearchLinkHint => '이미지 링크 붙여넣기';

  @override
  String get imageSearchGo => '검색';

  @override
  String get imageSearchEmpty => '일치하는 결과가 없어요';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return '$number화';
  }

  @override
  String imageSearchAt(String time) {
    return '$time 지점';
  }

  @override
  String get imageSearchPreview => '미리보기 클립';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% 일치';
  }

  @override
  String get imageSearchCredit => 'trace.moe 제공';

  @override
  String get imageSearchOpenFailed => '이 작품을 열 수 없어요';

  @override
  String get groups => '그룹';

  @override
  String get groupsYours => '내 그룹';

  @override
  String get groupsPopular => '인기';

  @override
  String get groupsNew => '신규';

  @override
  String get groupsFeatured => '추천';

  @override
  String get groupsSearch => '그룹 검색';

  @override
  String get groupsAll => '전체';

  @override
  String get groupsEmpty => '그룹을 찾을 수 없어요';

  @override
  String get groupsEmptyYours => '아직 가입한 그룹이 없어요';

  @override
  String get groupsSignIn => '가입한 그룹을 보려면 로그인하세요';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '멤버 $count명',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => '가입';

  @override
  String get groupsJoined => '가입함';

  @override
  String get groupsLeave => '그룹 나가기';

  @override
  String get groupsLeaveAsk => '피드에서 이 그룹의 게시물이 더 이상 보이지 않아요.';

  @override
  String get groupsJoinFailed => '이 그룹에 가입하지 못했어요. 초대 전용일 수 있어요';

  @override
  String get groupsLeaveFailed => '이 그룹을 나가지 못했어요';

  @override
  String get groupsPosts => '게시물';

  @override
  String get groupsMembersTab => '멤버';

  @override
  String get groupsAbout => '정보';

  @override
  String get groupsRules => '규칙';

  @override
  String get groupsPrivacyOpen => '공개';

  @override
  String get groupsPrivacyRestricted => '제한';

  @override
  String get groupsPrivacyClosed => '비공개';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => '관리자';

  @override
  String get groupsRoleMod => '운영자';

  @override
  String get groupsCouldntLoad => '이 그룹을 불러오지 못했어요';

  @override
  String get groupsNewPost => '그룹에 게시';

  @override
  String get groupsPostHint => '그룹에 하고 싶은 말을 남겨보세요';

  @override
  String get groupsOpenInBrowser => '브라우저에서 열기';

  @override
  String get groupsCategory => '카테고리';

  @override
  String get groupsLanguage => '언어';

  @override
  String get groupsCreated => '생성일';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '리더 $count명',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => '개인정보';

  @override
  String get notificationsAll => '전체';

  @override
  String get notificationsAiring => '방영 중';

  @override
  String get notificationsMedia => '신작';

  @override
  String get notificationsReplies => '답글';

  @override
  String get notificationsMentions => '멘션';

  @override
  String get notificationsMessages => '메시지';

  @override
  String get notificationsLikes => '좋아요';

  @override
  String get notificationsFollows => '팔로우';

  @override
  String get notificationsNoServices => '알림을 지원하는 로그인된 서비스가 없어요';

  @override
  String get notificationsNoServicesMessage => '알림을 보내는 서비스에 로그인하면 여기에 나타나요.';

  @override
  String get notificationsEmptyKind => '이 카테고리에는 아직 아무것도 없어요';

  @override
  String get notificationsCommentsEmpty => '댓글 알림이 없어요';

  @override
  String get notificationsCommentsEmptyMessage =>
      '내 댓글에 달린 답글과 Dantotsu의 공지가 여기에 나타나요.';

  @override
  String get notificationsSettings => '알림 설정';

  @override
  String get notificationsPollTitle => '새 알림 확인';

  @override
  String notificationsPollDesc(int minutes) {
    return '앱이 열려 있는 동안 $minutes분마다';
  }

  @override
  String get notificationsNotifyAbout => '알림 받을 항목';

  @override
  String get notificationsCommentsHeader => '댓글 알림';

  @override
  String systemNotificationsDescFor(String service) {
    return '앱이 실행 중일 때 읽지 않은 $service 알림마다 시스템 알림을 보여줘요.';
  }

  @override
  String get notificationsTestSent => '테스트 알림을 보냈어요';

  @override
  String get notificationsTestDenied =>
      'Dartotsu의 알림이 허용되지 않았어요. 시스템 설정에서 켜주세요.';

  @override
  String get notificationsTestHint => '길게 눌러서 테스트 알림 보내기';

  @override
  String get notificationsTestSample => '테스트 알림이에요';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name님이 $media의 내 댓글에 답글을 달았어요';
  }

  @override
  String get imageSearchNotLink => '링크가 아닌 것 같아요';

  @override
  String get imageSearchQuota => '검색 할당량을 초과했어요';

  @override
  String get imageSearchBusy => '요청이 너무 많아요. 잠시 후에 다시 시도하세요';

  @override
  String imageSearchFailed(int code) {
    return '검색에 실패했어요 ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '새 알림 $count개';
  }

  @override
  String get reactionsTitle => '반응';

  @override
  String get reactionsNeedEntry => '반응하기 전에 이 작품을 리스트에 추가하세요';

  @override
  String get reactionsAdd => '반응 추가';

  @override
  String get reactionsHint => '어땠어요? (짧게, 스포일러 없이)';

  @override
  String get reactionsPost => '게시';

  @override
  String get reactionsFailed => '반응을 업데이트하지 못했어요';

  @override
  String get settingsWatch => '보기 & 읽기';

  @override
  String get settingsWatchDesc => '에피소드 목록, 소스 매칭, 에피소드 상세 정보';

  @override
  String get watchSettingsLayout => '에피소드 목록';

  @override
  String get watchSettingsSources => '소스';

  @override
  String get watchSettingsMetadata => '에피소드 상세 정보';

  @override
  String get watchLayout => '레이아웃';

  @override
  String get watchListView => '리스트';

  @override
  String get watchGridView => '그리드';

  @override
  String get watchCompactView => '컴팩트';

  @override
  String get watchDefaultLayoutDesc => '작품별로 바꾸기 전까지 에피소드와 챕터를 배치하는 방식이에요';

  @override
  String get watchChunkSize => '범위 크기';

  @override
  String get watchChunkSizeDesc => '범위 탭 하나에 담을 에피소드나 챕터 수';

  @override
  String get watchShowDescription => '설명 표시';

  @override
  String get watchShowDescriptionDesc => '리스트 레이아웃에서 각 제목 아래에 에피소드 줄거리를 보여줘요';

  @override
  String get watchShowFiller => '필러 에피소드 표시';

  @override
  String get watchShowFillerDesc => '끄면 필러로 표시된 에피소드를 숨겨요';

  @override
  String get watchBlurUnwatched => '스포일러 썸네일 숨기기';

  @override
  String get watchBlurUnwatchedDesc => '아직 안 본 에피소드의 썸네일을 흐리게 해요';

  @override
  String get watchResumeShelf => '이어보기 선반';

  @override
  String get watchResumeShelfDesc => '홈에 이어하기 행을 보여줘요';

  @override
  String get watchMarkOnLongPress => '길게 눌러 진행도 표시';

  @override
  String get watchMarkOnLongPressDesc => '에피소드나 챕터를 길게 눌러 본 것 / 안 본 것으로 표시해요';

  @override
  String get watchMatching => '소스 매칭';

  @override
  String get watchMatchingDesc =>
      '\"가장 가까운 것\"은 검색 결과 중 가장 좋은 걸 골라요. \"정확히 일치만\"은 거의 똑같은 제목만 받아들이고 나머지는 직접 고르게 해요.';

  @override
  String get watchMatchClosest => '가장 가까운 것';

  @override
  String get watchMatchExact => '정확히 일치만';

  @override
  String get watchMetadataDesc =>
      '에피소드 제목, 줄거리, 썸네일, 방영일, 필러 표시를 가져올 곳이에요. 드래그해서 우선순위를 정하세요. 값이 있는 첫 번째 소스가 사용돼요.';

  @override
  String get watchMetaAniZipDesc => '에피소드 제목, 줄거리, 스틸컷, 방영일';

  @override
  String get watchMetaKitsuDesc => '에피소드 제목, 설명, 썸네일';

  @override
  String get watchMetaSimklDesc => '에피소드 제목, 설명, 스틸컷, 방영일';

  @override
  String get watchMetaAniListDesc => '스트리밍 에피소드 제목, 썸네일, 방영 일정';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai를 통한 MyAnimeList 에피소드 제목, 방영일, 필러 및 요약 편 표시';

  @override
  String get watchClearMetadata => '에피소드 상세 정보 새로고침';

  @override
  String get watchClearMetadataDesc => '캐시된 에피소드 상세 정보를 지우고 다시 가져와요';

  @override
  String get watchMetadataCleared => '에피소드 상세 정보를 다시 가져올 거예요';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '에피소드 $count개',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '챕터 $count개',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return '에피소드 $number';
  }

  @override
  String watchChapterNumber(String number) {
    return '챕터 $number';
  }

  @override
  String get watchSearching => '검색 중…';

  @override
  String watchSearchingFor(String term) {
    return '검색 중: $term';
  }

  @override
  String watchSelected(String title) {
    return '선택됨: $title';
  }

  @override
  String watchFound(String title) {
    return '찾음: $title';
  }

  @override
  String get watchNothingFound => '이 소스에서 찾지 못했어요';

  @override
  String get watchSearchFailed => '소스 검색에 실패했어요';

  @override
  String get watchLoadFailed => '리스트를 불러오지 못했어요';

  @override
  String get watchSignInToTrack => '진행도를 기록하려면 로그인하세요';

  @override
  String watchInstallSource(String action) {
    return '$action을(를) 시작하려면 확장 프로그램을 설치하세요';
  }

  @override
  String get watchSourceMissing => '이 소스는 설치되어 있지 않아요';

  @override
  String get watchWrongTitle => '다른 제목인가요?';

  @override
  String get watchSearchAgain => '다시 검색';

  @override
  String watchSearchSource(String source) {
    return '$source 검색';
  }

  @override
  String get watchSource => '소스';

  @override
  String get watchOptions => '옵션';

  @override
  String get watchReverse => '순서 뒤집기';

  @override
  String get watchScanlators => '그룹';

  @override
  String get watchResetOptions => '이 옵션 초기화';

  @override
  String get watchContinue => '계속';

  @override
  String get watchStart => '시작';

  @override
  String get watchPlay => '재생';

  @override
  String get watchRead => '읽기';

  @override
  String get watchMarkWatched => '본 것으로 표시';

  @override
  String get watchMarkUnwatched => '안 본 것으로 표시';

  @override
  String get watchMarkRead => '읽은 것으로 표시';

  @override
  String get watchMarkUnread => '안 읽은 것으로 표시';

  @override
  String get watchFiller => '필러';

  @override
  String get watchRecap => '요약 편';

  @override
  String get watchNoEpisodes => '에피소드를 찾을 수 없어요';

  @override
  String get watchNoChapters => '챕터를 찾을 수 없어요';

  @override
  String get watchSourceTools => '소스 도구';

  @override
  String get watchSourceSettings => '소스 설정';

  @override
  String get watchOpenWebView => '웹뷰로 열기';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare 확인을 통과하거나 로그인하세요. 쿠키는 소스 요청과 공유돼요';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host에 저장된 쿠키 $count개',
      one: '$host에 저장된 쿠키 1개',
      zero: '$host에 저장된 쿠키가 없어요',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare 통과 상태 유효, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare 통과 쿠키가 없어요';

  @override
  String get watchClearanceSession => '앱을 닫을 때까지 유지돼요';

  @override
  String get watchAgentShared => '요청은 웹뷰의 사용자 에이전트를 사용해요. Cloudflare가 이걸 확인해요';

  @override
  String get watchAgentCustom =>
      '사용자 지정 사용자 에이전트가 설정되어 있어서 웹뷰의 Cloudflare 통과가 거부될 수 있어요';

  @override
  String get watchTestConnection => '연결 테스트';

  @override
  String get watchSolveChallenge => '해결하기';

  @override
  String watchProbeOk(int code) {
    return '접속 가능 (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare가 아직 확인을 요구해요';

  @override
  String watchProbeBlocked(int code) {
    return '사이트에서 차단했어요 (HTTP $code)';
  }

  @override
  String get watchProbeFailed => '사이트에 접속할 수 없어요';

  @override
  String get watchClearCookies => '이 사이트의 쿠키 지우기';

  @override
  String get watchCookiesCleared => '쿠키를 지웠어요';

  @override
  String get watchMetaSource => '에피소드 상세 정보 출처';

  @override
  String get watchMetaAuto => '자동';

  @override
  String get watchMetaOff => '끔';

  @override
  String get playerSettingsTitle => '플레이어 설정';

  @override
  String get playerSectionPlayback => '재생';

  @override
  String get playerSectionSkip => '건너뛰기';

  @override
  String get playerSectionGestures => '컨트롤';

  @override
  String get playerSectionSubtitles => '자막';

  @override
  String get playerSectionShaders => '셰이더';

  @override
  String get playerSectionEngine => '엔진';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => '재생 속도';

  @override
  String get playerCursedSpeed => '추가 속도';

  @override
  String get playerCursedSpeedDesc => '최대 10배까지 속도를 목록에 추가해요';

  @override
  String get playerResize => '크기 조절 모드';

  @override
  String get playerFitFit => '맞춤';

  @override
  String get playerFitCover => '채우기';

  @override
  String get playerFitStretch => '늘이기';

  @override
  String get playerSkipDuration => '건너뛰기 버튼 길이';

  @override
  String get playerSkipDurationDesc => '오프닝과 엔딩 밖에서 건너뛰기 버튼이 넘어가는 초';

  @override
  String get playerSeekDuration => '두 번 탭해서 이동';

  @override
  String get playerSeekDurationDesc => '두 번 탭하거나 방향키를 누를 때 이동하는 초';

  @override
  String get playerAutoPlay => '다음 화 자동 재생';

  @override
  String get playerAutoPlayDesc => '이 에피소드가 끝나면 다음 에피소드를 시작해요';

  @override
  String get playerResume => '보던 곳부터 이어보기';

  @override
  String get playerResumeDesc => '에피소드를 마지막 위치부터 이어서 재생해요';

  @override
  String get playerOrientation => '화면 방향';

  @override
  String get playerOrientationAuto => '기기 따라가기';

  @override
  String get playerOrientationLandscape => '가로';

  @override
  String get playerOrientationPortrait => '세로';

  @override
  String get playerAutoSkipOpening => '오프닝 건너뛰기';

  @override
  String get playerAutoSkipEnding => '엔딩 건너뛰기';

  @override
  String get playerAutoSkipRecap => '요약 건너뛰기';

  @override
  String get playerAutoSkipDesc => 'AniSkip과 스트림 타임스탬프를 사용해서 시작하자마자 넘어가요';

  @override
  String get playerSkipOnce => '한 번만 건너뛰기';

  @override
  String get playerSkipOnceDesc => '그 구간으로 되돌아가도 같은 부분을 다시 건너뛰지 않아요';

  @override
  String get playerAdjustBrightness => '밝기 제스처';

  @override
  String get playerAdjustBrightnessDesc => '화면 오른쪽 절반에서 위아래로 스와이프';

  @override
  String get playerAdjustVolume => '볼륨 제스처';

  @override
  String get playerAdjustVolumeDesc => '화면 왼쪽 절반에서 위아래로 스와이프';

  @override
  String get playerHoldToSpeed => '길게 눌러 배속';

  @override
  String get playerHoldToSpeedDesc =>
      '영상을 길게 누르면 더 빠르게 재생되고, 옆으로 드래그하면 속도를 바꿀 수 있어요';

  @override
  String get playerThumbless => '두꺼운 탐색 바';

  @override
  String get playerThumblessDesc => '핸들 없는 두꺼운 바';

  @override
  String get playerShowSubtitles => '자막 표시';

  @override
  String get playerShowSubtitlesDesc => '끄면 모든 자막 트랙을 숨겨요';

  @override
  String get playerSubtitleLanguage => '선호 자막 언어';

  @override
  String get playerSubtitleSize => '자막 크기';

  @override
  String get playerSubtitleWeight => '자막 굵기';

  @override
  String get playerSubtitleBottom => '자막 아래 여백';

  @override
  String get playerSubtitleFont => '자막 글꼴';

  @override
  String get playerSubtitleColor => '자막 색상';

  @override
  String get playerSubtitleBackground => '자막 배경';

  @override
  String get playerSubtitleOutline => '자막 외곽선';

  @override
  String get playerLibass => 'libass 사용';

  @override
  String get playerLibassDesc =>
      '스타일이 적용된 .ass 자막을 렌더링해요. 위의 크기, 색상, 글꼴은 적용되지 않아요';

  @override
  String get playerShaders => '셰이더';

  @override
  String get playerShadersEnable => '셰이더 사용';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K 같은 GLSL 셰이더로 화질을 업스케일하고 깔끔하게 만들어요';

  @override
  String get playerShadersOff => '셰이더 꺼짐';

  @override
  String get playerShadersMissing => 'Anime4K가 설치되어 있지 않아요';

  @override
  String get playerShadersMissingDesc =>
      '기본 제공 모드를 쓰려면 Anime4K 셰이더 팩(약 0.8MB)을 다운로드하세요.';

  @override
  String get playerShadersDownload => 'Anime4K 다운로드';

  @override
  String get playerPictureSave => 'Save this frame';

  @override
  String get playerPictureOriginal => 'Original';

  @override
  String get playerPictureOriginalDesc =>
      'The frame as the video has it, without shaders or colors';

  @override
  String get playerPictureProcessed => 'With shaders and colors';

  @override
  String get playerPictureProcessedDesc => 'The frame as you see it now';

  @override
  String get playerPictureSaved => 'Frame saved';

  @override
  String get playerPictureSaveFailed => 'Could not save the frame';

  @override
  String get playerShadersPreview => '이 프레임으로 미리보기';

  @override
  String get playerShadersUse => '이걸로 사용';

  @override
  String get playerPicture => '화면';

  @override
  String get playerColors => '색상';

  @override
  String get playerColorDefault => '기본';

  @override
  String get playerColorVivid => '비비드';

  @override
  String get playerColorPop => '애니 팝';

  @override
  String get playerColorSoft => '부드럽게';

  @override
  String get playerColorCinematic => '시네마틱';

  @override
  String get playerColorBright => '밝게';

  @override
  String get playerColorNight => '야간';

  @override
  String get playerColorMono => '모노';

  @override
  String get playerColorCustom => '사용자 지정';

  @override
  String get playerColorBrightness => '밝기';

  @override
  String get playerColorContrast => '대비';

  @override
  String get playerColorSaturation => '채도';

  @override
  String get playerColorGamma => '감마';

  @override
  String get playerColorHue => '색조';

  @override
  String get playerColorReset => '초기화';

  @override
  String get playerColorAdjust => '조정';

  @override
  String get playerShadersOriginal => '원본';

  @override
  String get playerShadersPreviewFailed => '미리볼 프레임을 가져오지 못했어요';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => '내 셰이더';

  @override
  String get playerShadersCustom => '사용자 지정 셰이더';

  @override
  String get playerShadersImport => '.glsl 가져오기';

  @override
  String get playerShadersNone => '직접 만든 .glsl이나 .hook 파일을 가져와서 체크하면 이어서 적용돼요';

  @override
  String get playerShadersBadFile => '.glsl 또는 .hook 셰이더 파일 선택';

  @override
  String get playerDecoder => '디코더';

  @override
  String get playerDecoderAuto => '자동';

  @override
  String get playerDecoderAutoSafe => '자동 (안전)';

  @override
  String get playerDecoderSoftware => '소프트웨어';

  @override
  String get playerDecoderHardware => '하드웨어';

  @override
  String get playerDecoderHardwarePlus => '하드웨어+';

  @override
  String get playerVideoOutput => '비디오 출력';

  @override
  String get playerAudioChannels => '오디오 채널';

  @override
  String get playerBuffer => '버퍼 크기 (MB)';

  @override
  String get playerBufferDesc => '스트림을 버퍼링하는 데 플레이어가 쓸 수 있는 메모리';

  @override
  String get playerUseMpvConf => 'mpv.conf 사용';

  @override
  String get playerUseMpvConfDesc => '재생이 시작될 때 mpv.conf의 옵션을 적용해요';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv 설정 편집';

  @override
  String get playerMpvConfDesc =>
      '한 줄에 옵션 하나씩, 일반 mpv.conf의 --hwdec=auto처럼 쓰세요. [대괄호] 프로필은 무시돼요.';

  @override
  String get playerMpvConfSaved => 'mpv.conf를 저장했어요';

  @override
  String get playerUseScripts => 'mpv 스크립트 사용';

  @override
  String get playerUseScriptsDesc =>
      'scripts 폴더의 플러그인을 불러와요. Lua나 JavaScript를 지원하는 libmpv 빌드가 필요해요';

  @override
  String get playerScripts => 'mpv 스크립트';

  @override
  String get playerScriptsManage => '플러그인 추가, 삭제, 전환';

  @override
  String get playerScriptsAdd => '스크립트 추가';

  @override
  String get playerScriptsDesc =>
      '여기에 둔 Lua, JavaScript, 네이티브 플러그인은 재생이 시작될 때 불러와요.';

  @override
  String get playerScriptsNone => '아직 스크립트가 없어요';

  @override
  String get playerScriptsBadFile => '.lua, .js 또는 네이티브 플러그인 파일 선택';

  @override
  String get playerTuning => '고급 비디오 튜닝';

  @override
  String get playerTuningDesc =>
      '동기화, 캐시, 스케일링, 톤 매핑을 직접 바꿔요. 값을 잘못 넣으면 재생에 문제가 생길 수 있어요';

  @override
  String get playerVideoSync => '비디오 동기화';

  @override
  String get playerInterpolation => '프레임 보간';

  @override
  String get playerInterpolationDesc =>
      '부드러운 움직임이에요. display-resample 동기화가 필요해요';

  @override
  String get playerPitch => '피치 보정';

  @override
  String get playerPitchDesc => '다른 속도에서도 목소리를 자연스럽게 유지해요';

  @override
  String get playerCacheSeconds => '캐시 (초)';

  @override
  String get playerReadahead => '미리 읽기 (초)';

  @override
  String get playerThreads => '디코더 스레드';

  @override
  String get playerDeband => '디밴드';

  @override
  String get playerDebandDesc => '그라데이션의 색 띠 현상을 줄여요';

  @override
  String get playerDebandIterations => '디밴드 반복 횟수';

  @override
  String get playerDebandThreshold => '디밴드 임계값';

  @override
  String get playerCorrectDownscaling => '정확한 다운스케일링';

  @override
  String get playerSigmoid => '시그모이드 업스케일링';

  @override
  String get playerScale => '업스케일러';

  @override
  String get playerCscale => '크로마 업스케일러';

  @override
  String get playerDscale => '다운스케일러';

  @override
  String get playerToneMapping => '톤 매핑';

  @override
  String get playerTargetPeak => '목표 피크';

  @override
  String get playerOpenFiles => '비디오 파일 열기';

  @override
  String get playerOpenFilesDesc => '이 기기의 파일을 재생해요';

  @override
  String get playerOpenFolder => '폴더 열기';

  @override
  String get playerOpenFolderDesc => '폴더 안의 모든 영상을 재생목록으로 재생해요';

  @override
  String get playerNetworkStream => '네트워크 스트림';

  @override
  String get playerNetworkStreamDesc => '영상 직접 링크나 HLS 링크를 열어요';

  @override
  String get playerStreamUrl => '스트림 URL';

  @override
  String get playerStreamReferer => 'Referer (선택)';

  @override
  String get playerTorrent => '토렌트';

  @override
  String get playerTorrentDesc => '마그넷 링크나 .torrent 파일을 스트리밍해요';

  @override
  String get playerMagnetLink => '마그넷 링크 또는 토렌트 URL';

  @override
  String get playerPickTorrent => '.torrent 파일 선택';

  @override
  String get playerTorrentMissing => '먼저 설정 > 애드온에서 토렌트 애드온을 설치하세요';

  @override
  String get playerNoVideos => '재생할 수 있는 영상을 찾지 못했어요';

  @override
  String get playerReset => '플레이어 설정 초기화';

  @override
  String get playerResetDesc => '모든 플레이어 옵션을 기본값으로 되돌려요';

  @override
  String get playerResetConfirm => '플레이어 설정을 모두 초기화할까요?';

  @override
  String get playerResetDone => '플레이어 설정을 초기화했어요';

  @override
  String get playerQuality => '화질';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Raw';

  @override
  String get streamGroupOther => 'Other';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count streams',
      one: '1 stream',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => '스트림';

  @override
  String get playerAutoSelect => '스트림 자동 선택';

  @override
  String get playerAutoSelectDesc => '이 작품에서 마지막으로 고른 것과 가장 비슷한 스트림을 골라요';

  @override
  String get playerLoadingStreams => '스트림을 찾는 중…';

  @override
  String get playerNoStreams => '이 에피소드에는 스트림이 없어요';

  @override
  String get playerNoStreamsTitle => '스트림을 찾을 수 없어요';

  @override
  String get playerFailed => '재생에 실패했어요';

  @override
  String get playerTorrentNeeded => '이 스트림은 토렌트예요';

  @override
  String get playerTorrentNeededDesc =>
      '마그넷 링크와 .torrent 파일을 재생하려면 토렌트 애드온을 설치하세요';

  @override
  String get playerOpenAddons => '애드온 열기';

  @override
  String get playerTryAnotherStream => '다른 스트림 시도';

  @override
  String get playerEpisodes => '에피소드';

  @override
  String get playerLock => '컨트롤 잠금';

  @override
  String get playerFullscreen => '전체 화면';

  @override
  String get readerChapters => '챕터';

  @override
  String get readerSettingsTitle => '리더 설정';

  @override
  String get readerPreviousChapter => '이전 챕터';

  @override
  String get readerNextChapter => '다음 챕터';

  @override
  String get readerFirstChapter => '첫 번째 챕터예요';

  @override
  String get readerLastChapter => '다 따라잡았어요';

  @override
  String get readerFailed => '이 챕터를 열 수 없어요';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => '이 챕터에는 텍스트가 없어요';

  @override
  String get readerPerTitle => '이 작품만';

  @override
  String get readerPerTitleDesc => '이 리더 설정을 이 작품에만 적용해요';

  @override
  String get readerSectionReading => '읽기';

  @override
  String get readerSectionControls => '컨트롤';

  @override
  String get readerSectionDisplay => '화면';

  @override
  String get readerSectionNovel => '웹소설';

  @override
  String get readerMode => '읽기 모드';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => '오른쪽에서 왼쪽';

  @override
  String get readerModeLtr => '왼쪽에서 오른쪽';

  @override
  String get readerModeVertical => '세로 페이지';

  @override
  String get readerModeWebtoon => '웹툰';

  @override
  String get readerModeContinuous => '연속 스크롤';

  @override
  String get readerScale => '이미지 크기';

  @override
  String get readerScaleFit => '화면에 맞춤';

  @override
  String get readerScaleWidth => '너비에 맞춤';

  @override
  String get readerScaleHeight => '높이에 맞춤';

  @override
  String get readerScaleOriginal => '원본 크기';

  @override
  String get readerScaleSmart => '스마트 맞춤';

  @override
  String get readerDoublePage => '두 페이지씩';

  @override
  String get readerDoublePageDesc => '가로 모드에서 두 페이지를 나란히 보여줘요';

  @override
  String get readerDoubleTapZoom => '두 번 탭해서 확대';

  @override
  String get readerDoubleTapZoomDesc => '두 번 탭해서 페이지를 확대하거나 축소해요';

  @override
  String get readerAnimate => '페이지 애니메이션';

  @override
  String get readerAnimateDesc => '페이지 넘김 애니메이션';

  @override
  String get readerSidePadding => '좌우 여백';

  @override
  String get readerSidePaddingDesc => '페이지 옆 여백(퍼센트)';

  @override
  String get readerPageGap => '페이지 간격';

  @override
  String get readerPageGapDesc => '페이지 사이 간격';

  @override
  String get readerAutoNext => '다음 챕터로 이어가기';

  @override
  String get readerAutoNextDesc => '이 챕터의 끝을 읽는 동안 다음 챕터를 불러와요';

  @override
  String get readerPreload => '페이지 미리 불러오기';

  @override
  String get readerPreloadDesc => '미리 다운로드할 페이지 수';

  @override
  String get readerTapZones => '탭 영역';

  @override
  String get readerTapDefault => '기본';

  @override
  String get readerTapLShaped => 'L자형';

  @override
  String get readerTapKindle => 'Kindle 스타일';

  @override
  String get readerTapEdge => '가장자리만';

  @override
  String get readerTapOff => '사용 안 함';

  @override
  String get readerInvertTaps => '탭 영역 반전';

  @override
  String get readerInvertTapsDesc => '이전과 다음 영역을 서로 바꿔요';

  @override
  String get readerBackground => '배경';

  @override
  String get readerBackgroundBlack => '검정';

  @override
  String get readerBackgroundGray => '회색';

  @override
  String get readerBackgroundWhite => '흰색';

  @override
  String get readerBackgroundTheme => '앱 테마';

  @override
  String get readerFilter => '색상 필터';

  @override
  String get readerFilterNone => '없음';

  @override
  String get readerFilterGrayscale => '흑백';

  @override
  String get readerFilterInvert => '반전';

  @override
  String get readerFilterSepia => '세피아';

  @override
  String get readerFilterQuality => 'Image filter quality';

  @override
  String get readerFilterQualityNone => 'None (Nearest neighbor)';

  @override
  String get readerFilterQualityLow => 'Low (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Medium (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'High (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rust high quality)';

  @override
  String get readerDim => '어둡게';

  @override
  String get readerDimDesc => '페이지를 어둡게 해요';

  @override
  String get readerPageNumber => '페이지 번호';

  @override
  String get readerPageNumberDesc => '읽는 동안 페이지 번호를 보여줘요';

  @override
  String get readerFullscreen => '전체 화면';

  @override
  String get readerFullscreenDesc => '시스템 바를 숨겨요';

  @override
  String get readerCropBorders => '여백 자르기';

  @override
  String get readerCropBordersDesc => '페이지의 빈 흰색·검은색 여백을 잘라내요';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => '볼륨 키로 페이지 넘기기';

  @override
  String get readerVolumeKeysDesc => '볼륨 내리기는 앞으로, 볼륨 올리기는 뒤로 가요';

  @override
  String get readerBookmarks => '북마크';

  @override
  String get readerBookmarkAdd => '북마크 추가';

  @override
  String get readerBookmarkRemove => '북마크 삭제';

  @override
  String get readerBookmarksEmpty => '아직 북마크가 없어요';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$total쪽 중 $page쪽';
  }

  @override
  String get readerAutoScroll => '자동 스크롤';

  @override
  String get readerAutoScrollStop => '자동 스크롤 중지';

  @override
  String get readerAutoScrollSpeed => '자동 스크롤 속도';

  @override
  String get readerAutoScrollSpeedDesc => '페이지가 저절로 스크롤되거나 넘어가는 속도';

  @override
  String get readerKeepOn => '화면 켜두기';

  @override
  String get readerKeepOnDesc => '읽는 동안 화면이 꺼지지 않게 해요';

  @override
  String get readerOrientation => '화면 방향';

  @override
  String get readerOrientationFree => '자유';

  @override
  String get readerOrientationPortrait => '세로';

  @override
  String get readerOrientationLandscape => '가로';

  @override
  String get readerSaveProgress => '진행도 저장';

  @override
  String get readerSaveProgressDesc => '읽던 페이지를 기억하고 챕터를 읽은 것으로 표시해요';

  @override
  String get readerReset => '리더 설정 초기화';

  @override
  String get readerResetDesc => '기본값으로 되돌려요';

  @override
  String get novelSize => '글자 크기';

  @override
  String get novelFont => '글꼴';

  @override
  String get novelLineHeight => '줄 높이';

  @override
  String get novelParagraph => '문단 간격';

  @override
  String get novelMargin => '여백';

  @override
  String get novelTheme => '리더 테마';

  @override
  String get novelThemeApp => '앱 테마';

  @override
  String get novelThemeLight => '라이트';

  @override
  String get novelThemeSepia => '세피아';

  @override
  String get novelThemeDark => '다크';

  @override
  String get novelThemeBlack => '검정';

  @override
  String get novelJustify => '양쪽 맞춤';

  @override
  String get novelJustifyDesc => '텍스트를 양쪽 가장자리에 맞춰요';

  @override
  String get trackProgressTitle => '진행도를 저장할까요?';

  @override
  String trackProgressAnime(String name) {
    return '보면서 $name을(를) 내 리스트에 기록할까요? \"이 기기에만\"을 고르면 로컬에만 저장하고, \"아니요\"를 고르면 아무것도 저장하지 않아요.';
  }

  @override
  String trackProgressManga(String name) {
    return '챕터를 다 읽으면 $name을(를) 내 리스트에 기록할까요? \"이 기기에만\"을 고르면 로컬에만 저장하고, \"아니요\"를 고르면 아무것도 저장하지 않아요.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Save your progress on $name to your list on this device as you watch?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Save your progress on $name to your list on this device when you finish a chapter?';
  }

  @override
  String get downloadClearQueue => 'Clear queue';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancel all $count downloads in the queue? What was already downloaded is deleted.';
  }

  @override
  String get castTitle => 'Cast to device';

  @override
  String get castSearching => 'Looking for devices on your network…';

  @override
  String get castNoDevices =>
      'No devices found. Make sure the TV or Chromecast is on the same Wi-Fi, then search again.';

  @override
  String get castRefresh => 'Search again';

  @override
  String get castFailed => 'Could not start casting';

  @override
  String get castStop => 'Stop casting';

  @override
  String castNowCasting(String name) {
    return 'Casting to $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku can\'t report or change the position';

  @override
  String get castControls => 'Controls';

  @override
  String get castVolume => 'TV volume';

  @override
  String castSkipPart(String name) {
    return 'Skip $name';
  }

  @override
  String get trackProgressRememberSeries => 'Remember for this series';

  @override
  String get trackProgressYes => '저장';

  @override
  String get trackProgressReset => '이 유형의 진행도 저장 확인을 초기화했어요. 다시 물어볼게요';

  @override
  String get trackProgressNo => '아니요';

  @override
  String get trackProgressOff => '끔';

  @override
  String get trackProgressLocal => '이 기기에만';

  @override
  String get trackProgressSettingAnime => '애니 진행도 기록';

  @override
  String get trackProgressSettingManga => '만화와 웹소설 진행도 기록';

  @override
  String get trackProgressSettingDesc => '에피소드를 열거나 챕터를 다 읽었을 때 할 동작이에요';

  @override
  String get trackProgressAsk => '물어보기';

  @override
  String get trackProgressAlways => '항상';

  @override
  String get dantotsuImport => 'Dantotsu에서 가져오기';

  @override
  String get dantotsuImportDesc => 'Dantotsu 설정 백업을 읽어요 (.ani 또는 암호화된 .sani)';

  @override
  String get dantotsuPick => 'Dantotsu 백업 선택';

  @override
  String get dantotsuNothing => '이 파일에는 가져올 수 있는 게 없어요';

  @override
  String get dantotsuApply => '선택 항목 가져오기';

  @override
  String dantotsuDone(int done, int total) {
    return '$total개 중 $done개를 가져왔어요';
  }

  @override
  String get dantotsuGroupAccounts => '계정';

  @override
  String get dantotsuGroupAppearance => '외관';

  @override
  String get dantotsuGroupExtensions => '확장 프로그램';

  @override
  String get dantotsuGroupApp => '앱';

  @override
  String get dantotsuGroupPlayer => '플레이어';

  @override
  String get dantotsuAnilist => 'AniList 로그인';

  @override
  String get dantotsuMal => 'MyAnimeList 로그인';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence 토큰';

  @override
  String get dantotsuTheme => '테마';

  @override
  String get dantotsuReposAnime => '애니 확장 프로그램 저장소';

  @override
  String get dantotsuReposManga => '만화 확장 프로그램 저장소';

  @override
  String get dantotsuReposNovel => '웹소설 확장 프로그램 저장소';

  @override
  String get dantotsuUpdates => '업데이트 확인';

  @override
  String get dantotsuComments => '댓글';

  @override
  String get dantotsuActivity => 'AniList 알림 폴링';

  @override
  String get dantotsuDns => 'DNS 제공자';

  @override
  String get dantotsuPlayer => '플레이어 속도와 자막 색상';

  @override
  String get dantotsuWarning => '이 파일에는 로그인 토큰이 들어 있어요. 남에게 보여주지 마세요.';

  @override
  String get novelIndent => '문단 들여쓰기';

  @override
  String get novelIndentDesc => '각 문단의 첫 줄을 들여써요';

  @override
  String get novelLetterSpacing => '자간';

  @override
  String get novelSectionTranslate => '번역';

  @override
  String get sectionExperimental => '실험 기능';

  @override
  String get kitsuGraphqlDetail => '더 빠른 상세 페이지 (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc => '작품, 캐릭터, 스태프, 내 항목을 요청 한 번에 불러와요';

  @override
  String get togetherTitle => '함께 보기';

  @override
  String get togetherIntro =>
      '친구가 보낸 방 링크를 붙여넣으세요. 바로 참가하고, 친구가 재생을 시작하면 플레이어가 열려요.';

  @override
  String get togetherName => '내 이름';

  @override
  String get togetherConnecting => '연결 중…';

  @override
  String get togetherLeave => '방 나가기';

  @override
  String get togetherYou => '나';

  @override
  String get togetherNoChat => '아직 메시지가 없어요';

  @override
  String get togetherChatHint => '메시지';

  @override
  String get togetherCopyInvite => '초대 복사';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => '서버와 방을 복사했어요';

  @override
  String get togetherConnectionLost => '연결이 끊겼어요';

  @override
  String togetherConnectedTo(String room) {
    return '$room에 연결했어요';
  }

  @override
  String togetherFailed(String error) {
    return '연결하지 못했어요: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name님이 들어왔어요';
  }

  @override
  String togetherLeft(String name) {
    return '$name님이 나갔어요';
  }

  @override
  String togetherPaused(String name) {
    return '$name님이 일시정지했어요';
  }

  @override
  String togetherResumed(String name) {
    return '$name님이 다시 재생했어요';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name님이 $time(으)로 이동했어요';
  }

  @override
  String get togetherFollowFailed => '호스트의 에피소드를 열지 못했어요. 직접 열어주세요.';

  @override
  String get togetherJoinRole => '방 참가';

  @override
  String get togetherOpenHost => '호스트의 에피소드 열기';

  @override
  String get togetherShowChat => '실시간 채팅 표시';

  @override
  String get togetherWaitingHost => '호스트가 에피소드를 시작하길 기다리는 중';

  @override
  String get togetherRoomLink => '방 링크';

  @override
  String get togetherBadLink => '방 링크가 아니에요';

  @override
  String get togetherHostClosed => '호스트가 방을 닫았어요';

  @override
  String get togetherNowPlaying => '재생 중';

  @override
  String togetherWatchingCount(int count) {
    return '$count명 시청 중';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user님이 일시정지하고 싶어 해요';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user님이 다시 재생하고 싶어 해요';
  }

  @override
  String get togetherChip => '함께';

  @override
  String get togetherSettingsDesc => '링크로 친구의 방에 참가해요';

  @override
  String get novelBilingual => '원문과 번역 함께 표시';

  @override
  String get novelBilingualDesc => '각 문단에 원문을 보여주고 그 아래에 번역을 보여줘요';

  @override
  String get novelTranslateTo => '번역 언어';

  @override
  String get novelTranslateOff => '끔';

  @override
  String get novelSectionSpeech => '음성 읽기';

  @override
  String get novelSpeechRate => '읽기 속도';

  @override
  String get novelSpeechPitch => '읽기 음높이';

  @override
  String get novelSpeak => '소리 내어 읽기';

  @override
  String get novelSpeakStop => '소리 내어 읽기 중지';

  @override
  String get novelTranslate => '챕터 번역';

  @override
  String get novelTranslateShowOriginal => '원문 보기';

  @override
  String novelTranslateFailed(String error) {
    return '번역에 실패했어요: $error';
  }

  @override
  String get novelSpeechUnavailable => '이 기기에서는 음성 읽기를 사용할 수 없어요';

  @override
  String get novelSpeechVoice => '음성';

  @override
  String get novelSpeechVoiceDefault => '시스템 기본';

  @override
  String get novelSpeakPrevious => '이전 줄';

  @override
  String get novelSpeakNext => '다음 줄';

  @override
  String get novelTapPaging => '가장자리를 탭해서 페이지 넘기기';

  @override
  String get novelTapPagingDesc =>
      '왼쪽이나 오른쪽을 탭하면 한 페이지씩 스크롤되고, 가운데를 탭하면 컨트롤이 나와요';

  @override
  String get novelPaged => 'Page turning';

  @override
  String get novelPagedDesc =>
      'Split the chapter into pages and swipe or tap to turn them instead of scrolling';

  @override
  String novelPageOf(int current, int total) {
    return 'Page $current of $total';
  }

  @override
  String get novelPaginating => 'Laying out pages';

  @override
  String get novelTools => 'Contents, search and highlights';

  @override
  String get novelContents => 'Contents';

  @override
  String get novelContentsEmpty => 'This chapter has no headings';

  @override
  String get novelSearch => 'Search';

  @override
  String get novelSearchHint => 'Search in this chapter';

  @override
  String get novelSearchNone => 'No matches';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches',
      one: '1 match',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Highlights';

  @override
  String get novelHighlightsEmpty =>
      'Select some text and tap Highlight to keep it here';

  @override
  String get novelHighlight => 'Highlight';

  @override
  String get novelHighlightNote => 'Note';

  @override
  String get novelHighlightNoteHint => 'Add a note';

  @override
  String get novelHighlightRemove => 'Remove highlight';

  @override
  String get novelHighlightFailed =>
      'Couldn\'t match that selection to the text';

  @override
  String novelMinutesLeft(int count) {
    return '$count분 남음';
  }

  @override
  String get novelBold => '굵은 글씨';

  @override
  String get novelBoldDesc => '더 굵은 두께를 써요';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter을(를) 다 읽었어요';
  }

  @override
  String readerNextUp(String chapter) {
    return '다음: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return '이전: $chapter';
  }

  @override
  String get readerNoPages => '이 챕터에는 페이지가 없어요';

  @override
  String get readerLoadingPages => '페이지 불러오는 중…';

  @override
  String get readerSlowPage => '이 페이지를 아직 불러오는 중이에요…';

  @override
  String get readerPageFailed => '이 페이지를 불러오지 못했어요';

  @override
  String get playerShowComments => '댓글 보기';

  @override
  String get playerHideComments => '댓글 숨기기';

  @override
  String get playerSubtitles => '자막';

  @override
  String get playerSubtitlesOff => '자막 끔';

  @override
  String get playerAudio => '오디오';

  @override
  String get playerAddSubtitle => '자막 파일 추가';

  @override
  String get playerAddAudio => '오디오 파일 추가';

  @override
  String get playerChapters => '챕터';

  @override
  String get playerSkipSubmit => 'Submit skip times';

  @override
  String get playerSkipSubmitDesc =>
      'Mark where the opening, ending or recap starts and ends in this episode and share it with AniSkip, so everyone gets the skip button.';

  @override
  String get playerSkipStart => 'Start';

  @override
  String get playerSkipEnd => 'End';

  @override
  String get playerSkipUseNow => 'Use current position';

  @override
  String get playerSkipSend => 'Submit to AniSkip';

  @override
  String get playerSkipSent => 'Skip times submitted to AniSkip, thank you';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip refused the skip times: $error';
  }

  @override
  String get playerUnsupported =>
      'The video player can\'t run on this device (its Android version is too old for the bundled player library). Tap to copy the details.';

  @override
  String get playerSkipNoMal =>
      'This title has no MyAnimeList id, AniSkip can\'t take it';

  @override
  String get playerNoChapters => '챕터 없음';

  @override
  String get playerTimestamp => '타임스탬프';

  @override
  String get playerAutoPlayDelay => '다음 에피소드 카운트다운';

  @override
  String get playerWatchedAt => '시청한 것으로 처리할 시점';

  @override
  String playerNextIn(int seconds) {
    return '$seconds초 후 다음 에피소드';
  }

  @override
  String get playerPlayNow => '지금 재생';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: 이 작품은 자동으로 건너뛰어요';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: 이 작품은 자동으로 건너뛰지 않아요';
  }

  @override
  String get playerAudioLanguage => '선호 오디오 언어';

  @override
  String get playerLanguageOrderHint => '언어는 쉼표로 구분하세요. 처음 발견된 언어가 사용돼요.';

  @override
  String get playerPip => '화면 속 화면';

  @override
  String get playerAutoPip => '나갈 때 화면 속 화면';

  @override
  String get playerAutoPipDesc => '앱을 나가도 작은 창으로 계속 재생해요';

  @override
  String playerAutoPlaying(String title) {
    return '다음으로 $title을(를) 재생해요…';
  }

  @override
  String playerShadersFailed(String error) {
    return '셰이더를 설치하지 못했어요: $error';
  }

  @override
  String playerChapter(int number) {
    return '챕터 $number';
  }

  @override
  String get playerPerTitle => '이 작품만';

  @override
  String get playerPerTitleDesc => '이 작품에만 이 옵션을 쓰고 기본값은 그대로 둬요';

  @override
  String get playerSwapGestures => '스와이프 좌우 바꾸기';

  @override
  String get playerSwapGesturesDesc => '왼쪽은 밝기, 오른쪽은 볼륨';

  @override
  String get playerOpenBig => '큰 화면으로 열기';

  @override
  String get playerOpenBigDesc => '에피소드 목록 없이 플레이어를 전체 화면으로 시작해요';

  @override
  String get playerPauseOnBlur => '포커스를 잃으면 일시정지';

  @override
  String get playerPauseOnBlurDesc => '알림창 등으로 앱이 가려진 동안 일시정지하고, 돌아오면 다시 재생해요';

  @override
  String get playerAudioOutput => '오디오 출력';

  @override
  String get fontAppDefault => '앱 글꼴';

  @override
  String get fontImport => '글꼴 가져오기';

  @override
  String get fontSample =>
      '다람쥐 헌 쳇바퀴에 타고파 The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => '자막 지연';

  @override
  String get playerAudioDelay => '오디오 지연';

  @override
  String get playerDelayReset => '초기화';

  @override
  String get playerOnlineSubtitles => '온라인 자막';

  @override
  String get playerOnlineSearchHint => '제목과 에피소드';

  @override
  String get playerOnlineNone => '자막을 찾을 수 없어요';

  @override
  String playerOnlineFailed(String error) {
    return '자막 검색에 실패했어요: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return '이 자막을 다운로드하지 못했어요: $error';
  }

  @override
  String get playerOnlineMatch => '이 파일과 일치';

  @override
  String get playerOnlineEpisode => '에피소드 일치';

  @override
  String playerOnlineDownloads(int count) {
    return '다운로드 $count회';
  }

  @override
  String get playerSeekPreview => '탐색 미리보기';

  @override
  String get playerSeekPreviewDesc =>
      '탐색할 때 바 위에 작은 프레임 미리보기를 보여줘요. 저해상도 디코더를 하나 더 열어서 스트림에서는 데이터를 더 써요.';

  @override
  String get playerSettingsChip => '설정';

  @override
  String get playerAudioDevice => '오디오 장치';

  @override
  String get settingsDownloads => '다운로드';

  @override
  String get settingsDownloadsDesc => '오프라인 에피소드, 대기열, 오프라인 모드';

  @override
  String get downloadsTitle => '다운로드';

  @override
  String get widgetContinue => 'Continue';

  @override
  String get widgetReleases => 'Releasing soon';

  @override
  String get widgetMore => 'Also in progress';

  @override
  String get widgetNothing => 'Nothing to continue yet';

  @override
  String get downloadStorageTitle => 'Storage';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 download',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size already watched or read';
  }

  @override
  String get downloadFreeUp => 'Free up space';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count watched downloads',
      one: '1 watched download',
    );
    return 'Delete $_temp0 and free $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Freed $size';
  }

  @override
  String get downloadDeleteWatched => 'Delete watched';

  @override
  String get downloadDeleteAll => 'Delete all';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Delete every download of $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Nothing you have finished is downloaded';

  @override
  String get downloadStorageEmpty => 'No downloads are using space';

  @override
  String get downloadsOpenDesc => '대기열과 이 기기에 저장된 모든 항목을 봐요';

  @override
  String get downloadTitle => '다운로드';

  @override
  String get downloadAlready => '이미 다운로드했거나 대기열에 있어요';

  @override
  String get downloadPickStream => '어떤 스트림을 다운로드할까요?';

  @override
  String get downloadPickSubtitle => '어떤 자막을 다운로드할까요?';

  @override
  String get downloadPickAudio => '어떤 오디오 트랙을 다운로드할까요?';

  @override
  String get downloadNoAudio => '추가 오디오 없음';

  @override
  String get downloadAudio => '오디오';

  @override
  String get downloadNoSubtitle => '자막 없음';

  @override
  String get downloadHlsNeedsFfmpeg =>
      '이 스트림은 HLS 재생목록이에요. 다운로드하려면 FFmpeg 애드온이 필요해요.';

  @override
  String get downloadSourceMissing => '이 에피소드의 소스가 설치되어 있지 않아요';

  @override
  String get downloadWaitingConnection => '연결을 기다리는 중';

  @override
  String get downloadSubtitles => '자막';

  @override
  String get downloadDownloaded => '다운로드됨';

  @override
  String get downloadOffline => '오프라인';

  @override
  String get downloadDelete => '다운로드 삭제';

  @override
  String get downloadCancel => '취소';

  @override
  String get downloadPause => '일시정지';

  @override
  String get downloadPaused => '일시정지됨';

  @override
  String get downloadResume => '이어하기';

  @override
  String get downloadPauseAll => '모두 일시정지';

  @override
  String get downloadResumeAll => '모두 이어하기';

  @override
  String get downloadQueuedState => '대기열에서 대기 중';

  @override
  String get downloadResolving => '스트림을 가져오는 중…';

  @override
  String get downloadUsedFallback => '일치하는 스트림이 없어서 첫 번째 것을 사용했어요';

  @override
  String get downloadTabQueue => '대기열';

  @override
  String get downloadTabDone => '완료';

  @override
  String get downloadTabFailed => '실패';

  @override
  String get downloadEmptyQueue => '다운로드 중인 게 없어요';

  @override
  String get downloadEmptyDone => '아직 다운로드한 게 없어요';

  @override
  String get downloadEmptyFailed => '실패한 다운로드가 없어요';

  @override
  String get downloadNext => '다음 에피소드';

  @override
  String downloadNextN(int count) {
    return '다음 에피소드 $count개';
  }

  @override
  String downloadUnwatched(int count) {
    return '안 본 것 모두 ($count)';
  }

  @override
  String downloadRange(int count) {
    return '이 범위 ($count)';
  }

  @override
  String downloadAll(int count) {
    return '모든 에피소드 ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '에피소드 $count개를 대기열에 추가했어요',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name 다운로드 완료';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name 다운로드에 실패했어요';
  }

  @override
  String downloadStorage(String size) {
    return '다운로드가 $size 사용 중';
  }

  @override
  String get downloadQueueHeader => '대기열';

  @override
  String get downloadParallel => '동시 다운로드 수';

  @override
  String get downloadParallelDesc => '한 번에 하나씩 또는 여러 개를 함께 다운로드해요';

  @override
  String get downloadOneByOne => '하나씩';

  @override
  String get downloadNotifications => '다운로드 알림';

  @override
  String get downloadNotificationsDesc =>
      '시스템이 지원하면 실시간 진행도를, 아니면 다운로드가 끝났을 때 알려줘요';

  @override
  String get downloadNotifyLive => '실시간';

  @override
  String get downloadNotifyDone => '완료 시';

  @override
  String get downloadNotifyOff => '끔';

  @override
  String get downloadInfoFile => '다운로드마다 정보 파일 쓰기';

  @override
  String get downloadInfoFileDesc => '스트림, 화질, 자막, 건너뛰기 시간을 작은 .json 파일로 저장해요';

  @override
  String get offlineHeader => '오프라인';

  @override
  String get offlineModeDesc =>
      '\"자동\"은 연결 없이 앱을 시작했을 때만 오프라인이 돼요. \"항상\"은 바꾸기 전까지 오프라인으로 유지해요.';

  @override
  String get offlineModeOff => '끔';

  @override
  String get offlineModeAlways => '항상';

  @override
  String get offlineModeOn =>
      '오프라인 모드가 켜져 있어요. 변경 사항은 여기에 저장되고, 다시 온라인이 되면 전송돼요.';

  @override
  String get offlineSaved => '이 기기에 저장했어요. 온라인이 되면 동기화돼요';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '변경 사항 $count개를 동기화했어요',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '변경 사항 $count개가 동기화를 기다리고 있어요',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => '동기화 대기 중인 변경 사항';

  @override
  String get offlinePendingNone => '기다리는 게 없어요';

  @override
  String get offlineSyncNow => '지금 동기화';

  @override
  String get offlineDiscard => '버리기';

  @override
  String get downloadNotOffline => '이 에피소드는 다운로드되지 않아서 오프라인에서는 사용할 수 없어요';

  @override
  String get offlineModeChip => '오프라인';

  @override
  String get downloadNextChapter => '다음 챕터';

  @override
  String downloadNextChapters(int count) {
    return '다음 챕터 $count개';
  }

  @override
  String downloadUnread(int count) {
    return '안 읽은 것 모두 ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return '모든 챕터 ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total쪽';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count쪽';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg 애드온이 필요해요';

  @override
  String get downloadFfmpegBody =>
      '이 스트림은 HLS 재생목록이에요. FFmpeg 애드온이 조각들을 하나의 mp4 파일로 합쳐줘요. 없으면 조각이 에피소드 폴더에 그대로 남고 거기서 재생돼요.';

  @override
  String get downloadFfmpegInstall => '설치';

  @override
  String get downloadFfmpegInstalling => 'FFmpeg 설치 중이에요. 시간이 좀 걸릴 수 있어요…';

  @override
  String get downloadFinishing => '조각들을 하나의 파일로 합치는 중…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total개 조각';
  }

  @override
  String get downloadTorrentNoFile => '이 토렌트에는 다운로드할 영상 파일이 없어요';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개 다운로드 중',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => '시청한 다운로드 삭제';

  @override
  String get downloadAutoDeleteDesc => '진행도가 해당 에피소드나 챕터에 도달하면 다운로드를 삭제해요';

  @override
  String get downloadConnections => '다운로드당 연결 수';

  @override
  String get downloadConnectionsDesc =>
      '큰 파일을 여러 조각으로 나눠서 동시에 받아요. 일부 서버는 제한할 수 있어요.';

  @override
  String get downloadPlayChoice => '재생 위치';

  @override
  String get downloadPlayLocalDesc => '이 기기에 저장된 파일';

  @override
  String get downloadPlayStream => '온라인 스트리밍';

  @override
  String get downloadPlayStreamDesc => '소스에서 에피소드를 불러와요';

  @override
  String get offlineFeedTitle => '이 기기에 다운로드됨';

  @override
  String get offlineFeedEmpty => '온라인일 때 뭔가 다운로드하면 여기에 나타나요';

  @override
  String get offlineEnabled => '오프라인 모드가 켜져 있어요';

  @override
  String get offlineDisabled => '오프라인 모드가 꺼져 있어요';

  @override
  String get downloadReadChoice => '읽기 위치';

  @override
  String get downloadReadLocalDesc => '이 기기에 저장된 페이지';

  @override
  String get downloadReadOnline => '온라인으로 읽기';

  @override
  String get downloadReadOnlineDesc => '소스에서 챕터를 불러와요';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name을(를) 이 기기에서 삭제할까요?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name 다운로드를 취소할까요? 이미 받은 부분은 삭제돼요.';
  }

  @override
  String get downloadFfmpegFolder => '폴더로 유지';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '전송되지 않은 변경 사항 $count개를 버릴까요? 되돌릴 수 없어요.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi를 기다리는 중';

  @override
  String get downloadWaitingMetered => '데이터 요금제 연결이라 일시정지됨';

  @override
  String get downloadWifiOnly => 'Wi-Fi 전용';

  @override
  String get downloadWifiOnlyDesc => '모바일 데이터를 쓰는 동안은 다운로드를 대기해요';

  @override
  String get downloadMetered => '데이터 요금제 연결에서 일시정지';

  @override
  String get downloadMeteredDesc => '기기가 데이터 요금제로 표시한 Wi-Fi에서도 대기해요';

  @override
  String get downloadSpeedLimit => '속도 제한';

  @override
  String get downloadSpeedLimitDesc => '전체 다운로드 속도에 상한을 둬요';

  @override
  String get downloadUnlimited => '무제한';

  @override
  String get downloadMoveToTop => '맨 위로 이동';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '시드 $seeds · 피어 $peers';
  }

  @override
  String get downloadTorrentFile => '어떤 파일인가요?';

  @override
  String get downloadTorrentAuto => '에피소드 자동 매칭';

  @override
  String get downloadTorrentLoading => '토렌트 읽는 중…';

  @override
  String get watchAutoSource => '다음 소스로 자동 전환';

  @override
  String get watchAutoSourceDesc => '소스에서 작품을 못 찾거나 불러오지 못하면 설치된 다음 소스를 시도해요';

  @override
  String get extensionTest => '확장 프로그램 테스트';

  @override
  String get extensionTestCopy => '실패한 항목과 로그를 복사해요';

  @override
  String get extensionTestQuery => '검색어';

  @override
  String get extensionTestRun => '실행';

  @override
  String get extensionTestStop => '중지';

  @override
  String get extensionTestNone => '이 유형으로 설치된 확장 프로그램이 없어요';

  @override
  String get extensionTestNotRun => '아직 테스트 안 함';

  @override
  String get extensionTestSearch => '검색';

  @override
  String get extensionTestDetail => '상세 정보';

  @override
  String get extensionTestUnits => '에피소드 / 챕터';

  @override
  String get extensionTestLinks => '스트림 / 페이지';

  @override
  String extensionTestFailedAt(String step) {
    return '$step에서 실패';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total개 중 $done개 테스트 · 통과 $passed · 실패 $failed';
  }

  @override
  String get extensionTestCopyLogs => '전체 로그와 함께 모두 복사';

  @override
  String get onboardingFeaturesTitle => '모든 걸 한곳에';

  @override
  String get onboardingFeaturesBody => '기록하고, 보고, 읽는 모든 걸 앱을 오가지 않고 한 번에.';

  @override
  String get onboardingFeatureTrack => '전부 기록하기';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu, MangaBaka에서 리스트, 진행도, 점수를 관리해요.';

  @override
  String get onboardingFeatureWatch => '보고 읽기';

  @override
  String get onboardingFeatureWatchDesc =>
      '확장 프로그램을 설치해서 애니 스트리밍과 만화·웹소설 읽기를 앱 안에서 바로 즐기세요.';

  @override
  String get onboardingFeatureOffline => '오프라인으로 즐기기';

  @override
  String get onboardingFeatureOfflineDesc =>
      '에피소드와 챕터를 다운로드해서 연결이 없어도 이어서 즐기세요.';

  @override
  String get onboardingFeatureSync => '리스트 동기화 유지';

  @override
  String get onboardingFeatureSyncDesc =>
      '서비스 간에 리스트를 그대로 반영하거나, 더 앞선 쪽이 우선하게 할 수 있어요.';

  @override
  String get onboardingServices => '연동 서비스';

  @override
  String sourceNotifyOn(String source) {
    return 'You\'ll be told when $source has something new';
  }

  @override
  String get sourceNotifyOff => 'Release notifications off';

  @override
  String get sourceNotifyNeedsSource => 'Pick a source with a match first';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Everything ($count) is already out, nothing to wait for';
  }

  @override
  String get sourceNotifyTooltipOn => 'Stop release notifications';

  @override
  String get sourceNotifyTooltipOff => 'Notify me about new releases';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Episode $number is out on $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Episodes $from–$to are out on $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Chapter $number is out on $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Chapters $from–$to are out on $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count titles have something new';
  }

  @override
  String get navSources => 'Sources';

  @override
  String sourceInactiveOpen(String manager) {
    return 'This source belongs to $manager, which isn\'t the active extension service';
  }

  @override
  String get sourceAlertsHeader => 'Release notifications';

  @override
  String get sourceAlertsSwitch => 'Check subscribed titles';

  @override
  String get sourceAlertsSwitchDesc =>
      'Once each time the app opens, for titles you turned the bell on';

  @override
  String get sourceSkipUnstarted => 'Skip titles you haven\'t started';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nothing watched or read yet, but episodes already exist';

  @override
  String get sourceSkipUnseen => 'Skip while you have unseen episodes';

  @override
  String get sourceSkipUnseenDesc =>
      'You still have released episodes to catch up on';

  @override
  String get sourceManage => 'Subscriptions';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles',
      one: '1 title',
      zero: 'No titles',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Check now';

  @override
  String get sourceCheckNowDesc => 'Ignores the schedule and the skip rules';

  @override
  String get sourceChecking => 'Checking…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles have something new',
      one: '1 title has something new',
      zero: 'Nothing new',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'No subscriptions yet';

  @override
  String get sourceEmptyMessage =>
      'Tap the bell above a title\'s episodes to be told about new ones';

  @override
  String get sourceAll => 'All';

  @override
  String sourceInactive(String manager) {
    return 'Inactive: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source isn\'t installed in this extension service';
  }

  @override
  String get sourceUnreachable => 'Source isn\'t responding';

  @override
  String get sourceFinished => 'Finished';

  @override
  String get sourceSkippedCompleted => 'Skipped: completed';

  @override
  String get sourceSkippedUnstarted => 'Skipped: not started';

  @override
  String get sourceSkippedUnseen => 'Skipped: unseen episodes';

  @override
  String get sourceWaiting => 'Waiting for the next release';

  @override
  String sourceNextCheck(String when) {
    return 'Next check $when';
  }

  @override
  String get sourceSoon => 'soon';

  @override
  String sourceInHours(int count) {
    return 'in ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'in ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Latest: $number';
  }

  @override
  String get sourceMute => 'Mute';

  @override
  String get sourceUnmute => 'Unmute';

  @override
  String get sourceMuted => 'Muted';

  @override
  String get sourceUnsubscribe => 'Unsubscribe';

  @override
  String get sourcePickAnother => 'Pick another source';

  @override
  String get sourceOpenExtensions => 'Open extensions';

  @override
  String get sourceNoticesEmpty => 'No release notices yet';

  @override
  String get sourceNoticesEmptyMessage =>
      'New episodes and chapters from your subscribed titles show up here';

  @override
  String get sourceOpenTitle => 'Open title';

  @override
  String get extensionsLoading => 'Loading extensions…';

  @override
  String get updateWhatsNew => 'What\'s new';

  @override
  String get updateLater => 'Later';

  @override
  String get updateSkipVersion => 'Skip this version';

  @override
  String get updatePreparing => 'Preparing…';

  @override
  String get updateDownloading => 'Downloading';

  @override
  String get updateInstalling => 'Installing…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done of $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Released $date';
  }

  @override
  String get updateNoAsset => 'This release has no download for your device';

  @override
  String get updateUpToDate => 'You\'re on the latest version';

  @override
  String get updateIosHint =>
      'iOS builds aren\'t on the App Store. Grab the .ipa from the release page and sideload it with AltStore or SideStore';

  @override
  String get updateOpenedBrowser => 'Check your browser';

  @override
  String get updateTryAgain => 'Try again';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsNotificationsDesc =>
      'Alerts for your lists, new episodes and chapters, and comment replies';

  @override
  String get settingsAboutUpdates => 'About & updates';

  @override
  String get settingsAboutUpdatesDesc =>
      'App updates, version, logs, links and support';

  @override
  String get settingsGroupAccount => 'Your account';

  @override
  String get settingsGroupContent => 'Content';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Player, subtitles, skipping, episode list and episode details';

  @override
  String get settingsMangaDesc =>
      'Reader mode, controls, display and chapter tracking';

  @override
  String get settingsNovelDesc =>
      'Text, page turning, translation and read aloud';

  @override
  String get settingsLocalPlay => 'Local play';

  @override
  String get settingsLocalPlayDesc =>
      'Play files, folders, network streams and torrents, or open a book';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Books';

  @override
  String get settingsWatchSections => 'Sections';

  @override
  String get settingsSectionLists => 'Episode and chapter lists';

  @override
  String get settingsSectionProgress => 'Progress tracking';

  @override
  String get updateChannelDesc =>
      'Stable is the tested release. Pre-release and Alpha get new features sooner but may break';

  @override
  String get checkNowDesc => 'Look for a newer version right away';

  @override
  String get generalSectionBasics => 'Language & behaviour';

  @override
  String get generalSectionSecurity => 'Security';

  @override
  String get generalSectionPrivacy => 'Privacy';

  @override
  String notificationsOtherService(String service) {
    return 'Switch to $service to open this';
  }

  @override
  String get secPlayerPlayback =>
      'Default speed, auto play, video fit, orientation and picture in picture';

  @override
  String get secPlayerSkip => 'Skip openings, endings and recaps automatically';

  @override
  String get secPlayerControls =>
      'Swipe, hold and tap gestures and seek preview';

  @override
  String get secPlayerSubtitles =>
      'Languages, appearance and subtitle rendering';

  @override
  String get secPlayerShaders => 'Anime upscaling and your own shaders';

  @override
  String get secPlayerEngine =>
      'Decoder, video and audio output, buffering. Only change these if playback has problems';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts and advanced tuning';

  @override
  String get secAnimeList => 'Filler episodes and unwatched thumbnails';

  @override
  String get secProgress =>
      'When your watched or read progress is saved to your list';

  @override
  String get secAnimeDetails =>
      'Where episode titles, thumbnails and summaries come from';

  @override
  String get secReaderReading =>
      'Reading mode, page turning, zoom and next chapter';

  @override
  String get secReaderControls => 'Tap zones, volume keys and auto scroll';

  @override
  String get secReaderDisplay =>
      'Background, brightness, fullscreen and page number';

  @override
  String get secNovelText => 'Font, size, spacing, margins and page turning';

  @override
  String get secNovelTranslate => 'Translate chapters while you read';

  @override
  String get secNovelSpeech => 'Voice, speed and pitch for read aloud';

  @override
  String get secNotifyAbout => 'Pick which kinds of activity send an alert';

  @override
  String get layoutTitle => 'Layout';

  @override
  String get layoutDesc => 'Choose, move and hide the buttons on the bars';

  @override
  String get layoutHint =>
      'Drag a button to move it (hold first on a touch screen). Tap one to cut, move or hide it';

  @override
  String layoutDropInto(String zone) {
    return 'Drop in: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Moving $name. Press a paste button to place it';
  }

  @override
  String get layoutTitleFixed => 'Title';

  @override
  String get layoutZoneTopStart => 'Top bar, before the title';

  @override
  String get layoutZoneTopEnd => 'Top bar, after the title';

  @override
  String get layoutZoneBottomStart => 'Bottom bar, left';

  @override
  String get layoutZoneBottomEnd => 'Bottom bar, right';

  @override
  String get layoutZoneSecondRow => 'Hidden: second row in normal view';

  @override
  String get layoutZoneOverflow => 'Hidden: in the more menu';

  @override
  String get layoutEmptyZone => 'Drop buttons here';

  @override
  String get layoutCut => 'Cut';

  @override
  String get layoutPaste => 'Paste here';

  @override
  String get layoutHide => 'Hide';

  @override
  String layoutMoveTo(String zone) {
    return 'Move to $zone';
  }

  @override
  String get layoutReset => 'Reset to default';

  @override
  String get layoutMore => 'More';

  @override
  String get sourceWhyAction => 'Why no alert?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Last checked';

  @override
  String get sourceWhyNever => 'Not yet';

  @override
  String get sourceWhyNextCheck => 'Next check';

  @override
  String get sourceWhyNewest => 'Newest at the source';

  @override
  String get sourceWhyProgress => 'Your progress';

  @override
  String get sourceWhyListStatus => 'List status';

  @override
  String get sourceWhyFailures => 'Failed checks in a row';

  @override
  String get sourceWhyLastRelease => 'Last new release seen';

  @override
  String get sourceWhyVerdictNew =>
      'A new release appears here as soon as the source lists it and the next check runs.';

  @override
  String get sourceWhyVerdictAhead =>
      'The source is already ahead of your progress, so you were told about it once. Read or watch up to it to get the next alert.';

  @override
  String get sourceWhyVerdictSkipped =>
      'This title is skipped by the rules above. Change them in notification settings, or use Check now to run it anyway.';

  @override
  String get sourceWhyVerdictBroken =>
      'The source can\'t be reached or has been removed, so nothing is being checked.';

  @override
  String get sourceWhyVerdictMuted => 'This subscription is muted.';

  @override
  String get externalPlayerTitle => 'Open stream elsewhere';

  @override
  String get externalCopyUrl => 'Copy stream link';

  @override
  String get externalCopied => 'Stream link copied';

  @override
  String get externalChooser => 'Open in another app';

  @override
  String get externalVlc => 'Open in VLC';

  @override
  String get externalMpv => 'Open in mpv';

  @override
  String get externalFailed =>
      'Couldn\'t open the stream. Is the player installed?';

  @override
  String get addonInstalled => 'Installed';

  @override
  String get loadFailedActivity => 'Couldn\'t load activity';

  @override
  String get loadFailedFavourites => 'Couldn\'t load favourites. Retry';

  @override
  String get loadFailedStats => 'Couldn\'t load stats';

  @override
  String get loadFailedReplies => 'Couldn\'t load replies';

  @override
  String get cantBeUndone => 'This can\'t be undone.';

  @override
  String get searchTags => 'Search tags';

  @override
  String get spoilerTapToView => ' Spoiler, tap to view ';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Someone';

  @override
  String get notificationATitle => 'a title';

  @override
  String get notificationAddedDetail => 'Was added to AniList';

  @override
  String get updateNoReleases => 'No releases found';

  @override
  String get updateInvalidResponse => 'Invalid update response';

  @override
  String get commentsRateLimited => 'Rate limited';

  @override
  String get commentsConnectFailed => 'Failed to connect';

  @override
  String get dnsNoRecords => 'No A records returned';

  @override
  String get importTokenRejected => 'Token rejected';

  @override
  String get developerRoleLead => 'Lead Developer';

  @override
  String get developerRoleModerator => 'Discord Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type manager';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensions';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name settings';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name doesn\'t provide any settings.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episode $episode of $title aired';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episode $episode aired';
  }

  @override
  String notificationAdded(String title) {
    return '$title was added to AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Update server couldn\'t find that release: $message';
  }
}
