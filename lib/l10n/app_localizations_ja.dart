// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => '新しい、いちばんのアプリ\nアニメ＆マンガの管理に';

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
  String get loadMore => 'もっと読み込む';

  @override
  String get login => 'ログイン';

  @override
  String get continueAsGuest => 'ゲストで続ける';

  @override
  String get getStarted => 'はじめる';

  @override
  String get loginWithToken => 'トークンでログイン';

  @override
  String get pasteTokenHint => 'アクセストークンを貼り付けてね';

  @override
  String loginTo(String service) {
    return '$serviceにログイン';
  }

  @override
  String get settings => '設定';

  @override
  String get account => 'アカウント';

  @override
  String get about => 'このアプリについて';

  @override
  String get language => '言語';

  @override
  String get animationSpeed => 'アニメーション';

  @override
  String get animationSpeedDesc => 'アプリ全体の画面遷移や登場エフェクトの速さ';

  @override
  String get animationSpeedOff => 'オフ';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '拡張機能',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => '不明なソース';

  @override
  String get install => 'インストール';

  @override
  String get update => 'アップデート';

  @override
  String get uninstall => 'アンインストール';

  @override
  String get updateInstallCancelled =>
      'インストールがキャンセルされました。Androidで既存のアプリと競合すると表示された場合は、署名が違うためです。いまのバージョンを先にアンインストールしてから、アップデートを入れてください';

  @override
  String updateInstallFailed(String error) {
    return 'アップデートに失敗しました: $error';
  }

  @override
  String get appLock => 'アプリロック';

  @override
  String get appLockDesc => 'アプリを開いたとき、またはしばらくして戻ったときにパスコードを聞く';

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
  String get appLockUnlock => 'パスコードを入力';

  @override
  String get appLockWrong => 'パスコードが違います';

  @override
  String appLockWait(String seconds) {
    return '試行しすぎです。$seconds秒待ってね';
  }

  @override
  String get appLockNew => 'パスコードを決めてね';

  @override
  String get appLockNewHint => '4〜8桁の数字';

  @override
  String get appLockConfirm => 'もう一度入力';

  @override
  String get appLockMismatch => 'パスコードが一致しません';

  @override
  String get appLockOn => 'パスコード設定済み';

  @override
  String get appLockRemoveTitle => 'ロックをオフにするにはパスコードを入力';

  @override
  String get installFailed => 'インストールに失敗';

  @override
  String get updateFailed => 'アップデートに失敗';

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
  String get noSourceSettings => 'このソースには設定がないよ';

  @override
  String get addPluginRepository => 'プラグインリポジトリを追加';

  @override
  String get pluginIndexUrlHint => 'プラグインのインデックスURL';

  @override
  String get addRepository => 'リポジトリを追加';

  @override
  String get pluginRepoUpdated => 'プラグインリポジトリを更新したよ';

  @override
  String get pluginRepoUpdateFailed => 'プラグインリポジトリの更新に失敗';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'キャンセル';

  @override
  String get yes => 'はい';

  @override
  String get no => 'いいえ';

  @override
  String get save => '保存';

  @override
  String get reset => 'リセット';

  @override
  String get clear => 'クリア';

  @override
  String get test => 'テスト';

  @override
  String get testing => 'テスト中…';

  @override
  String get resolving => '解決中…';

  @override
  String get none => 'なし';

  @override
  String get selectMediaService => 'メディアサービスを選択';

  @override
  String get pickColor => '色を選ぶ';

  @override
  String get colorPickerCustom => 'カスタム';

  @override
  String get colorPickerTransparent => '透明';

  @override
  String get ltr => '左から右';

  @override
  String get searchSettings => '設定を検索';

  @override
  String nothingMatches(String query) {
    return '「$query」に一致するものはないよ';
  }

  @override
  String searchCategory(String category) {
    return '$categoryを検索';
  }

  @override
  String get settingsAppearance => '外観';

  @override
  String get settingsAppearanceDesc => 'テーマ、カラー、ガラスモード';

  @override
  String get settingsGeneral => '一般';

  @override
  String get settingsGeneralDesc => '言語と動作';

  @override
  String get settingsNetwork => 'ネットワーク';

  @override
  String get settingsNetworkDesc => 'ユーザーエージェント、証明書、DNS、プロキシ';

  @override
  String get settingsAccountDesc => '管理サービスとログイン';

  @override
  String get settingsUpdates => 'アップデート';

  @override
  String get amoledBlack => 'AMOLEDブラック';

  @override
  String get amoledBlackDesc => 'ダークモードで真っ黒な背景にする';

  @override
  String get glassMode => 'ガラスモード';

  @override
  String get glassModeDesc => 'ライブラリの画像の上にすりガラス風の面を重ねる';

  @override
  String get shelfFrame => 'セクションの枠';

  @override
  String get shelfFrameDesc => '各シェルフの後ろにカードを表示するか、行をそのままページに並べるか選べるよ';

  @override
  String get settingsExtensionsDesc => 'ソースマネージャー、リポジトリ、拡張機能のオプション';

  @override
  String get settingsAddons => 'アドオン';

  @override
  String get customPath => 'カスタム保存先';

  @override
  String get customPathDesc => 'アプリのデータを置く場所。長押しでリセット';

  @override
  String get selectDirectory => 'フォルダを選択';

  @override
  String get differentCacheManager => '別の画像キャッシュ';

  @override
  String get differentCacheManagerDesc => '画像に別のキャッシュマネージャーを使う';

  @override
  String get backupAndRestore => 'バックアップと復元';

  @override
  String get backupAndRestoreDesc => '設定を保存・読み込み';

  @override
  String get backup => 'バックアップ';

  @override
  String get restore => '復元';

  @override
  String get loadExtensionsIcon => '拡張機能のアイコンを読み込む';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => '拡張機能の一覧にソースのアイコンを表示';

  @override
  String get sectionStorage => 'ストレージ';

  @override
  String get sectionManagers => 'マネージャー';

  @override
  String get sectionOptions => 'オプション';

  @override
  String get backupTabBackup => 'バックアップする';

  @override
  String get backupTabRestore => '復元する';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categoriesカテゴリ、$keys件の設定';
  }

  @override
  String backupLastBackup(Object time) {
    return '最終バックアップ：$time';
  }

  @override
  String get backupNever => 'まだバックアップなし';

  @override
  String get backupSelectAll => 'すべて選択';

  @override
  String get backupClearAll => 'クリア';

  @override
  String backupKeys(Object count) {
    return '$count件の設定';
  }

  @override
  String get backupPassword => 'パスワード（任意）';

  @override
  String get backupPasswordHint => '空欄ならデフォルトを使うよ';

  @override
  String get backupSensitive => 'ログイントークンを含むよ。このファイルは人に見せないでね';

  @override
  String get backupCreate => 'バックアップを作成';

  @override
  String backupSaved(Object name) {
    return '$nameにバックアップを保存したよ';
  }

  @override
  String backupFailed(Object error) {
    return 'バックアップに失敗：$error';
  }

  @override
  String get backupPickFile => 'バックアップファイルを選択';

  @override
  String get backupPickFileDesc => 'Dartotsuで作った.jsonファイルを選んでね';

  @override
  String get backupChooseAnother => '別のファイルを選ぶ';

  @override
  String get backupCreatedAt => '作成日';

  @override
  String get backupAppVersion => 'アプリのバージョン';

  @override
  String get backupDevice => 'デバイス';

  @override
  String get backupAccounts => 'アカウント';

  @override
  String get backupSize => 'サイズ';

  @override
  String get backupEncrypted => 'パスワード保護あり';

  @override
  String get backupUnlock => 'ロック解除';

  @override
  String get backupWrongPassword => 'このファイルを読み込めなかったよ。パスワードを確認してね';

  @override
  String get backupRestoreSelected => '選択したものを復元';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count件の設定を復元する？ これらのカテゴリの既存の値は上書きされるよ。';
  }

  @override
  String get backupRestored => '復元したよ。すべて反映するにはアプリを再起動してね';

  @override
  String backupRestoreFailed(Object error) {
    return '復元に失敗：$error';
  }

  @override
  String get backupSelectOne => 'カテゴリを1つ以上選んでね';

  @override
  String get backupCatTheme => '外観';

  @override
  String get backupCatThemeDesc => 'テーマ、カラー、ガラス、フォント、カードスタイル';

  @override
  String get backupCatCommon => '一般';

  @override
  String get backupCatCommonDesc => '言語、ストレージ、ネットワーク、拡張機能のオプション';

  @override
  String get backupCatPlayer => 'プレイヤー';

  @override
  String get backupCatPlayerDesc => 'プレイヤーの設定';

  @override
  String get backupCatReader => 'リーダー';

  @override
  String get backupCatReaderDesc => 'リーダーの設定';

  @override
  String get backupCatProtected => 'アカウント';

  @override
  String get backupCatProtectedDesc => 'ログイントークンとサインインデータ';

  @override
  String get backupCatOther => 'サービスとフィード';

  @override
  String get backupCatOtherDesc => 'フィードのレイアウト、リスト、サービスのオプション';

  @override
  String get logFile => 'ログファイル';

  @override
  String get logFileDesc => 'アプリのログを共有、またはLinuxではパスをコピー';

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
  String get logFileCopied => 'ログのパスをコピーしたよ';

  @override
  String get donateSheetTitle => 'Dartotsu、楽しんでる？';

  @override
  String get donateSheetMessage =>
      'Dartotsuは1人で作って運営してるよ。役に立ってたら、開発を応援してもらえるとうれしい。';

  @override
  String get donateLater => 'あとで';

  @override
  String get glassBackground => 'ガラス背景';

  @override
  String get glassBackgroundDesc => '画像リンクを設定しない限り、プロフィールのバナーを使うよ';

  @override
  String get glassBackgroundHint => '画像リンク（空欄ならバナーを使う）';

  @override
  String get followCover => 'カバーに合わせる';

  @override
  String get followCoverDesc => '色は背景に、詳細ページではカバーに合わせるよ';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'カードスタイル';

  @override
  String get cardStyleDesc => 'タイトルの位置、サイズ、進捗、バッジ';

  @override
  String get customFont => 'フォント';

  @override
  String get customFontDesc => 'デフォルト、端末内のファイル、またはGoogle Fonts';

  @override
  String get customFontError => 'そのフォントファイルを読み込めなかったよ';

  @override
  String get googleFontError => 'そのフォントをダウンロードできなかったよ';

  @override
  String get yourFonts => 'マイフォント';

  @override
  String get addFontFile => 'フォントファイルを追加…';

  @override
  String get browseGoogleFonts => 'Google Fontsを見る…';

  @override
  String get searchGoogleFonts => 'Google Fontsを検索';

  @override
  String get defaultFont => 'デフォルト';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'システムのダイナミックカラー';

  @override
  String get jsonTheme => 'カスタムテーマファイル';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.jsonからリアルタイムで色を反映（自作スクリプトや手動編集）';

  @override
  String get themeMode => 'テーマモード';

  @override
  String get mode => 'モード';

  @override
  String get trackingService => '管理サービス';

  @override
  String get signOut => 'ログアウト';

  @override
  String get signIn => 'ログイン';

  @override
  String get notSignedIn => 'ログインしてないよ';

  @override
  String signOutOf(String service) {
    return '$serviceからログアウトする？';
  }

  @override
  String get checkForUpdates => 'アップデートを確認';

  @override
  String get checkForUpdatesDesc => 'GitHubに新しいリリースが出たら通知';

  @override
  String get updateChannel => 'アップデートチャンネル';

  @override
  String get channel => 'チャンネル';

  @override
  String get stable => '安定版';

  @override
  String get preRelease => 'プレリリース';

  @override
  String get alpha => 'アルファ';

  @override
  String get checkNow => '今すぐ確認';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'デフォルト';

  @override
  String currentlyUsing(String value) {
    return '現在：$value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'デフォルト（Cloudflare）';

  @override
  String get proxy => 'プロキシ';

  @override
  String get proxyProtocol => 'タイプ';

  @override
  String get proxyHost => 'ホスト';

  @override
  String get proxyPort => 'ポート';

  @override
  String get proxyUsername => 'ユーザー名';

  @override
  String get proxyPassword => 'パスワード';

  @override
  String get optional => '任意';

  @override
  String get clearCookies => 'Cookieを削除';

  @override
  String get clearCookiesDesc => '保存してるCookieをすべて削除';

  @override
  String notImplementedArea(String area) {
    return '$areaは近日公開';
  }

  @override
  String notImplementedService(String service) {
    return '$serviceはまだ対応してないよ。';
  }

  @override
  String get couldNotLoadResults => '結果を読み込めなかったよ';

  @override
  String get updateCheckFailed => 'アップデートを確認できなかったよ';

  @override
  String get highRefreshRate => '高リフレッシュレート';

  @override
  String get highRefreshRateDesc => '画面が対応している最高のリフレッシュレートを使う';

  @override
  String get imageSave => '画像を保存';

  @override
  String imageSavedTo(String path) {
    return '$pathに保存したよ';
  }

  @override
  String get imageActionFailed => '画像をダウンロードできなかったよ';

  @override
  String get imageTitleCover => 'カバー';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'バナー';

  @override
  String get imageTitleAvatar => 'プロフィール画像';

  @override
  String get verifyTls => '証明書を検証';

  @override
  String get verifyTlsDesc => 'HTTPS証明書が無効なサーバーを拒否するよ。自己署名証明書を使うソースのときだけオフにしてね';

  @override
  String get clearCookiesConfirm => '保存してるCookieをすべて削除する？ 一部のソースからログアウトされるかも。';

  @override
  String get version => 'バージョン';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'ソース、Issue、リリース';

  @override
  String get discordDesc => 'コミュニティとサポート';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => '開発を支援';

  @override
  String get contributors => 'コントリビューター';

  @override
  String get contributorsDesc => 'Dartotsuを作ってきた人たち';

  @override
  String get contributorsLoadFailed => 'コントリビューターを読み込めなかったよ';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsuをベースにしたプロジェクト';

  @override
  String get forksEmpty => 'フォークが見つからないよ';

  @override
  String get sectionColors => 'カラー';

  @override
  String get sectionDisplay => '表示';

  @override
  String get sectionStyle => 'スタイル';

  @override
  String get sectionCommunity => 'コミュニティ';

  @override
  String get sectionAppInfo => 'アプリ情報';

  @override
  String get sectionRequests => 'リクエスト';

  @override
  String get sectionDnsProxy => 'DNSとプロキシ';

  @override
  String get onboardingBack => '戻る';

  @override
  String get onboardingNext => '次へ';

  @override
  String get onboardingSkip => 'スキップ';

  @override
  String get onboardingPaletteTitle => '自分好みにしよう';

  @override
  String get onboardingPaletteBody =>
      'パレットを選んでね。カードからプレイヤーまで、アクセントカラーはすべてそれに合わせるよ。';

  @override
  String get themeModeAuto => '自動';

  @override
  String get themeModeLight => 'ライト';

  @override
  String get themeModeDark => 'ダーク';

  @override
  String get onboardingSyncTitle => 'ライブラリを同期';

  @override
  String get onboardingSyncBody =>
      'AniListにログインして、リスト、進捗、スコアを持ち込もう。スキップしてゲストで見てもOK。';

  @override
  String get onboardingOpenLinks => 'AniListとリポジトリのリンクをDartotsuで開く';

  @override
  String get onboardingPermsTitle => '権限';

  @override
  String get onboardingPermsBody =>
      '今のうちに許可しておくと、ダウンロードやアップデート、通知がスムーズに動くよ。あとでシステム設定からも変えられる。';

  @override
  String get permNotifications => '通知';

  @override
  String get permNotificationsDesc => 'ダウンロードの進捗、新エピソード、返信';

  @override
  String get permStorage => 'すべてのファイルへのアクセス';

  @override
  String get permStorageDesc => 'ダウンロードを公開のDartotsuフォルダに保存';

  @override
  String get permInstall => 'アップデートのインストール';

  @override
  String get permInstallDesc => 'Dartotsu自身のアップデートをインストールできるようにする';

  @override
  String get permBattery => 'バッテリー制限なし';

  @override
  String get permBatteryDesc => '長いダウンロードをバックグラウンドで動かし続ける';

  @override
  String get permGrant => '許可';

  @override
  String get linkOpenInApp => 'リンクをDartotsuで開く';

  @override
  String get linkOpenInAppDesc => 'AniListとリポジトリのリンクからアプリを開けるようにする';

  @override
  String get reviewsTitle => 'レビュー';

  @override
  String get reviewsEmpty => 'まだレビューはないよ';

  @override
  String get reviewsFailed => 'レビューを読み込めなかったよ';

  @override
  String get reviewHelpfulQuestion => 'このレビューは参考になった？';

  @override
  String get reviewVoteFailed => '投票を保存できなかったよ';

  @override
  String reviewHelpful(int n, int total) {
    return '$total人中$n人が参考になったと回答';
  }

  @override
  String get calendarTitle => '放送スケジュール';

  @override
  String get calendarToday => '今日';

  @override
  String get calendarEmpty => 'この日の放送はないよ';

  @override
  String get calendarFailed => 'スケジュールを読み込めなかったよ';

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
    return '第$n話';
  }

  @override
  String get shareAnalytics => '匿名の利用データを共有';

  @override
  String get shareAnalyticsDesc => '匿名のユーザー数とクラッシュレポート。アカウントや個人データは含まないよ';

  @override
  String get linkOpenAnilist => 'AniListのリンクをDartotsuで開く';

  @override
  String get linkOpenAnilistDesc => 'リンクの処理をオンにすると、anilist.coのリンクでアプリが開くよ';

  @override
  String get linkSettingsFailed => 'システム設定を開けなかったよ';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Discordのプロフィールに今やってることを表示するよ。Discordトークンが必要。';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Discordのプロフィールに今やってることを表示するよ。Discordのデスクトップアプリを起動しておく必要があるよ。';

  @override
  String get discordBrowsing => '閲覧中の画面も表示';

  @override
  String get discordBrowsingDesc =>
      '見たり読んだりしてる作品だけでなく、開いてるタブ、ページ、プロフィールも表示するよ。';

  @override
  String get discordLookHeader => 'プレゼンスの見た目';

  @override
  String get discordActivityType => 'アクティビティの種類';

  @override
  String get discordActivityTypeDesc =>
      'Discordでの表示のされ方：「視聴中…」か「プレイ中…」。自動だとアニメは視聴中、それ以外はプレイ中になるよ。';

  @override
  String get discordWatching => '視聴中';

  @override
  String get discordPlaying => 'プレイ中';

  @override
  String get discordCovers => 'カバーを表示';

  @override
  String get discordCoversDesc => 'カードにカバー画像とDartotsuのアイコンを表示。';

  @override
  String get discordTimer => 'タイマーを表示';

  @override
  String get discordTimerDesc => 'タイトルの下に経過時間か残り時間を表示。';

  @override
  String get discordButtons => 'ボタンを表示';

  @override
  String get discordButtonsDesc => '「アニメ／マンガを見る」と「Dartotsuを開く」ボタン。';

  @override
  String get discordHideTitles => 'タイトルを隠す';

  @override
  String get discordHideTitlesDesc => 'アニメやマンガの名前（とカバー、リンク）を「ひみつ」に置き換えるよ。';

  @override
  String get discordConnectionHeader => '接続';

  @override
  String get listSearchHint => 'このリストを検索';

  @override
  String get listSort => '並べ替え';

  @override
  String get listFilter => '絞り込み';

  @override
  String get listRandom => 'ランダムに選ぶ';

  @override
  String get listReverse => '逆順';

  @override
  String get listSortDefault => 'リストの並び順';

  @override
  String get listSortScore => 'あなたのスコア';

  @override
  String get listSortTitle => 'タイトル';

  @override
  String get listSortUpdated => '最終更新';

  @override
  String get listSortProgress => '進捗';

  @override
  String get listSortReleased => '公開日';

  @override
  String get listSortAverage => '平均スコア';

  @override
  String get listFilterFormat => 'フォーマット';

  @override
  String get listFilterStatus => 'ステータス';

  @override
  String get listFilterGenres => 'ジャンル';

  @override
  String get listFilterClear => '絞り込みをクリア';

  @override
  String get listNoMatches => 'このリストに一致するものはないよ';

  @override
  String get discordLogin => 'Discordにログイン';

  @override
  String get discordToken => 'Discordトークン';

  @override
  String get discordTokenSaved => '保存済み。タップで置き換え、長押しで削除。';

  @override
  String get discordTokenNotSet => '未設定。タップで追加。';

  @override
  String get discordTokenSavedSnack => 'Discordトークンを保存したよ';

  @override
  String get discordTokenRemovedSnack => 'Discordトークンを削除したよ';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'オン · タップして見た目を変更';

  @override
  String get discordRichPresenceRowOff => 'Discordのプロフィールに今やってることを表示';

  @override
  String get loginCancelled => 'ログインをキャンセルしたよ';

  @override
  String get invalidToken => '無効なトークン';

  @override
  String loginFailed(String error) {
    return 'ログインに失敗：$error';
  }

  @override
  String get malLoginFailed => 'MyAnimeListのログインに失敗';

  @override
  String get kitsuLoginFailed => 'Kitsuのログインに失敗。メールアドレスとパスワードを確認してね。';

  @override
  String get kitsuLoginTitle => 'Kitsuにログイン';

  @override
  String get emailOrUsername => 'メールアドレスまたはユーザー名';

  @override
  String get password => 'パスワード';

  @override
  String get kitsuProfile => 'Kitsuプロフィール';

  @override
  String get mangaBakaLoginFailed => 'MangaBakaのログインに失敗';

  @override
  String get mangaBakaProfile => 'MangaBakaプロフィール';

  @override
  String get refreshFromMangaBaka => 'MangaBakaから更新';

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
  String get artistsLabel => 'アーティスト';

  @override
  String get authorsLabel => '作者';

  @override
  String get publishersLabel => '出版社';

  @override
  String get licensedLabel => 'ライセンス済み';

  @override
  String get contentRatingLabel => 'コンテンツレーティング';

  @override
  String get yesLabel => 'はい';

  @override
  String get noLabel => 'いいえ';

  @override
  String get ratingSteps => '評価の刻み';

  @override
  String get hideNsfw => 'NSFWを隠す';

  @override
  String get hideNsfwDesc => 'アダルト作品をフィードや検索から外して、自分のアダルト作品は「非表示メディア」にまとめるよ。';

  @override
  String get kitsuAccountOptions => 'Kitsuアカウントのオプション';

  @override
  String get mangaBakaAccountOptions => 'MangaBakaアカウントの設定';

  @override
  String get couldNotUpdateKitsuSettings => 'Kitsuの設定を更新できなかったよ';

  @override
  String get titleCanonical => '正式名';

  @override
  String get titleRomanized => 'ローマ字';

  @override
  String get titleLocalized => 'ローカライズ';

  @override
  String get ratingSystem => '評価システム';

  @override
  String get ratingSimple => 'シンプル（顔3段階）';

  @override
  String get ratingRegular => '標準（星5つ）';

  @override
  String get ratingAdvanced => '詳細（10点満点）';

  @override
  String get contentFilter => 'コンテンツフィルター';

  @override
  String get contentSfw => '全年齢向けのみ';

  @override
  String get contentSometimes => '検索では成人向けも表示';

  @override
  String get contentEverywhere => 'すべて成人向けも表示';

  @override
  String get shareToGlobal => 'グローバルフィードに共有';

  @override
  String get shareToGlobalDesc => 'あなたのアクティビティをKitsuのグローバルフィードに表示するよ。';

  @override
  String get memberSince => '登録日';

  @override
  String get location => '場所';

  @override
  String get accountType => 'アカウントの種類';

  @override
  String get accountSupporter => 'サポーター';

  @override
  String get accountFree => '無料';

  @override
  String get accountDetails => 'アカウントの詳細';

  @override
  String get refreshFromKitsu => 'Kitsuから更新';

  @override
  String get simklReadOnly => 'Simklの読み取り専用アクセスを許可したよ';

  @override
  String get incognitoEditsBlocked => 'シークレット：リストの編集はブロック中';

  @override
  String serviceError(String service, String error) {
    return '$service：$error';
  }

  @override
  String get incognitoProgressNotSaved => 'シークレット：進捗は保存されないよ';

  @override
  String progressSet(int progress) {
    return '進捗を$progressにしたよ';
  }

  @override
  String removedFromList(String title) {
    return '$titleをリストから削除したよ';
  }

  @override
  String get following => 'フォロー中';

  @override
  String get homeSections => 'ホームのセクション';

  @override
  String get homeSectionsHint => 'ドラッグで並べ替え。非表示のセクションは読み込まないよ。';

  @override
  String get customListDeleteFailed => 'カスタムリストを削除できなかったよ';

  @override
  String get customListsSaveFailed => 'カスタムリストを保存できなかったよ';

  @override
  String get customListsSaved => 'カスタムリストを保存したよ';

  @override
  String get listName => 'リスト名';

  @override
  String get addList => 'リストを追加';

  @override
  String voiceActorsIn(String name) {
    return '声優 · $name';
  }

  @override
  String get animeAppearances => 'アニメ出演';

  @override
  String get mangaAppearances => 'マンガ出演';

  @override
  String get voicedCharacters => '演じたキャラクター';

  @override
  String get animeCredits => 'アニメのクレジット';

  @override
  String get mangaCredits => 'マンガのクレジット';

  @override
  String get mainProductions => '主な作品';

  @override
  String get otherWorks => 'その他の作品';

  @override
  String get prequelSequel => '前日譚＆続編';

  @override
  String get previousSeason => '前のシーズン';

  @override
  String get thisSeason => '今シーズン';

  @override
  String get nextSeason => '次のシーズン';

  @override
  String get voiceRoles => '声の出演';

  @override
  String get staffPositions => 'スタッフとしての役職';

  @override
  String get mangaWorks => 'マンガ作品';

  @override
  String get malProfile => 'MyAnimeListプロフィール';

  @override
  String get refreshFromMal => 'MyAnimeListから更新';

  @override
  String get repullProfileCounts => 'プロフィールと件数を取得し直す';

  @override
  String get refreshed => '更新したよ';

  @override
  String get simklProfile => 'Simklプロフィール';

  @override
  String get refreshFromSimkl => 'Simklから更新';

  @override
  String get repullProfileLibrary => 'プロフィールとライブラリを取得し直す';

  @override
  String get simklSignInToSearch => '検索するにはSimklにログインしてね';

  @override
  String get dropRate => '中断率';

  @override
  String get simklAttribution => 'データとアートワークの提供元：Simkl。Simklで見る';

  @override
  String get onHold => '保留中';

  @override
  String get scoredBy => '採点した人数';

  @override
  String get planToWatch => '視聴予定';

  @override
  String get planToRead => '読む予定';

  @override
  String get timesRewatched => '再視聴回数';

  @override
  String get timesReread => '再読回数';

  @override
  String get comments => 'コメント';

  @override
  String get moviesAndSeries => '映画＆シリーズ';

  @override
  String get trackingOnly => '管理のみ';

  @override
  String get signedIn => 'ログイン済み';

  @override
  String get searchLanguage => '検索言語';

  @override
  String get savedToList => 'リストに保存したよ';

  @override
  String get removedFromYourList => 'リストから削除したよ';

  @override
  String get retry => '再試行';

  @override
  String get synopsis => 'あらすじ';

  @override
  String get details => '詳細';

  @override
  String get addToList => 'リストに追加';

  @override
  String get trailer => '予告編';

  @override
  String get titleCopied => 'タイトルをコピーしたよ';

  @override
  String get linkCopied => 'リンクをコピーしたよ';

  @override
  String get watchTrailer => '予告編を見る';

  @override
  String get copyTitle => 'タイトルをコピー';

  @override
  String get copyLink => 'リンクをコピー';

  @override
  String get openInBrowser => 'ブラウザで開く';

  @override
  String viewOnSource(String source) {
    return '$sourceで見る';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return '第$ep話の放送まであと$time';
  }

  @override
  String nextEpisodeIn(String time) {
    return '次のエピソードまであと$time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return '第$chapter話は約$time後に公開予定';
  }

  @override
  String get logPathCopied => 'ログファイルのパスをクリップボードにコピーしたよ';

  @override
  String get animeSource => 'アニメのソース';

  @override
  String get mangaSource => 'マンガのソース';

  @override
  String get popular => '人気';

  @override
  String get latest => '最新';

  @override
  String get saved => '保存済み';

  @override
  String get nothingMatched => '一致するものはなし';

  @override
  String get nothingSavedFromSource => 'このソースからはまだ何も保存してないよ';

  @override
  String get sourceReturnedNothing => 'このソースからは何も返ってこなかったよ';

  @override
  String get checkConnectionOrSource => '接続を確認するか、別のソースを試してね。';

  @override
  String get tryDifferentSearch => '別のキーワードで試してみてね。';

  @override
  String get savedTitlesAppearHere => 'リストに追加した作品はここに表示されるよ。';

  @override
  String get tryOtherFeed => 'もう一方のフィードか検索を試してみてね。';

  @override
  String searchSource(String source) {
    return '$sourceを検索';
  }

  @override
  String get animeExtensions => 'アニメ拡張機能';

  @override
  String get mangaExtensions => 'マンガ拡張機能';

  @override
  String get nothingHereYet => 'まだ何もないよ';

  @override
  String get savedOnDeviceUntilLogin => 'あなたが操作するまで、下のものはすべてこの端末に保存されてるよ。';

  @override
  String get yourProfile => 'あなたのプロフィール';

  @override
  String get activity => 'アクティビティ';

  @override
  String get extensions => '拡張機能';

  @override
  String get logOut => 'ログアウト';

  @override
  String get logIn => 'ログイン';

  @override
  String get logOutConfirm => '本当にログアウトする？';

  @override
  String get incognitoMode => 'シークレットモード';

  @override
  String get alsoBlockListEdits => 'リストの編集もブロック';

  @override
  String get offlineMode => 'オフラインモード';

  @override
  String get switchService => 'サービスを切り替え';

  @override
  String logOutOf(String name) {
    return '$nameからログアウト';
  }

  @override
  String get loggedIn => 'ログイン中';

  @override
  String get notifications => '通知';

  @override
  String get nothingNew => '新しいものはなし';

  @override
  String get thisWeek => '今週';

  @override
  String get listOnly => 'リストのみ';

  @override
  String get filter => '絞り込み';

  @override
  String get searchResults => '検索結果';

  @override
  String get recentSearches => '最近の検索';

  @override
  String get searchOrSetFilter => '検索するか、フィルターを設定してね';

  @override
  String get filters => 'フィルター';

  @override
  String get showLess => '少なく表示';

  @override
  String get showAll => 'すべて表示';

  @override
  String get apply => '適用';

  @override
  String get preview => 'プレビュー';

  @override
  String get preset => 'プリセット';

  @override
  String get cardNormal => '標準';

  @override
  String get cardOnCard => 'カードの上';

  @override
  String get cardInCard => 'カードの中';

  @override
  String get size => 'サイズ';

  @override
  String get cardWidth => 'カードの幅';

  @override
  String get compact => 'コンパクト';

  @override
  String get coverAndTitleOnly => 'カバーとタイトルだけ';

  @override
  String get titleLines => 'タイトルの行数';

  @override
  String get shape => '形';

  @override
  String get posterShape => 'ポスターの形';

  @override
  String get cornerRadius => '角の丸み';

  @override
  String get off => 'オフ';

  @override
  String get topLeft => '左上';

  @override
  String get topRight => '右上';

  @override
  String get bottomLeft => '左下';

  @override
  String get bottomRight => '右下';

  @override
  String get overlays => 'オーバーレイ';

  @override
  String get progressCount => '進捗／件数';

  @override
  String get pill => 'ピル';

  @override
  String get bar => 'バー';

  @override
  String get outside => '外側';

  @override
  String get scoreBadge => 'スコアバッジ';

  @override
  String get airingDot => '放送中ドット';

  @override
  String get updateAvailable => 'アップデートあり';

  @override
  String get notInstalled => '未インストール';

  @override
  String get done => '完了';

  @override
  String get searchOrEnterUrl => '検索またはURLを入力';

  @override
  String get refresh => '更新';

  @override
  String get share => '共有';

  @override
  String get characters => 'キャラクター';

  @override
  String get staff => 'スタッフ';

  @override
  String get readMore => '続きを読む';

  @override
  String get couldNotLoadList => 'リストを読み込めなかったよ';

  @override
  String get logInToFavourite => 'お気に入りに追加するにはログインしてね';

  @override
  String get alsoKnownAs => '別名';

  @override
  String get hideSpoilerNames => 'ネタバレの名前を隠す';

  @override
  String get showSpoilerNames => 'ネタバレの名前を表示';

  @override
  String get favourited => 'お気に入り済み';

  @override
  String get favourite => 'お気に入り';

  @override
  String get couldNotOpenTitle => 'この作品を開けなかったよ';

  @override
  String get nobodyHereYet => 'まだ誰もいないよ';

  @override
  String get noMatches => '一致なし';

  @override
  String get gridView => 'グリッド表示';

  @override
  String get fullWidth => '全幅';

  @override
  String get userNotFound => 'ユーザーが見つからないよ';

  @override
  String get couldNotUpdateFollow => 'フォローを更新できなかったよ';

  @override
  String followedUser(String name) {
    return '$nameをフォローしたよ';
  }

  @override
  String unfollowedUser(String name) {
    return '$nameのフォローを解除したよ';
  }

  @override
  String get messages => 'メッセージ';

  @override
  String get logInToSeeMessages => 'メッセージを見るにはログインしてね';

  @override
  String get editActivity => 'アクティビティを編集';

  @override
  String get newActivity => '新しいアクティビティ';

  @override
  String get editMessage => 'メッセージを編集';

  @override
  String get writeMessage => 'メッセージを書く';

  @override
  String get editReply => '返信を編集';

  @override
  String get posted => '投稿したよ';

  @override
  String get couldNotPost => '投稿できなかったよ';

  @override
  String get nothingToPreview => 'プレビューするものがないよ';

  @override
  String get writeSomethingHint => '何か書いてみよう… AniListのMarkdownが使えるよ';

  @override
  String get privateMessage => 'プライベートメッセージ';

  @override
  String get post => '投稿';

  @override
  String get nothingHere => '何もないよ';

  @override
  String get noAnimeProgress => 'アニメの進捗なし';

  @override
  String get noMangaProgress => 'マンガの進捗なし';

  @override
  String get noMessages => 'メッセージなし';

  @override
  String get writeMessageHint => 'メッセージを書く…';

  @override
  String get shareSomethingHint => '何かシェアしよう…';

  @override
  String get all => 'すべて';

  @override
  String get anime => 'アニメ';

  @override
  String get manga => 'マンガ';

  @override
  String get count => '件数';

  @override
  String get hoursWatched => '視聴時間';

  @override
  String get chaptersRead => '読んだチャプター数';

  @override
  String get meanScore => '平均スコア';

  @override
  String get noStatsYet => 'まだ統計はないよ';

  @override
  String get totalEntries => '総エントリー数';

  @override
  String get episodesWatched => '視聴したエピソード数';

  @override
  String get daysWatched => '視聴日数';

  @override
  String get volumesRead => '読んだ巻数';

  @override
  String get standardDeviation => '標準偏差';

  @override
  String get showMore => 'もっと見る';

  @override
  String get followsYou => 'フォローされてるよ';

  @override
  String get nobodyYet => 'まだ誰もいないよ';

  @override
  String get logInToLike => 'いいねするにはログインしてね';

  @override
  String get failedToLikeActivity => 'アクティビティにいいねできなかったよ';

  @override
  String get deleteActivityConfirm => 'アクティビティを削除する？';

  @override
  String get deletedActivity => 'アクティビティを削除したよ';

  @override
  String get failedToDeleteActivity => 'アクティビティを削除できなかったよ';

  @override
  String get subscribed => '購読中';

  @override
  String get unsubscribed => '購読を解除したよ';

  @override
  String get failedToUpdateSubscription => '購読を更新できなかったよ';

  @override
  String get edit => '編集';

  @override
  String get delete => '削除';

  @override
  String get likedBy => 'いいねした人';

  @override
  String get follow => 'フォロー';

  @override
  String get nameCopied => '名前をコピーしたよ';

  @override
  String get followsEachOther => '相互フォロー';

  @override
  String get unfollow => 'フォロー解除';

  @override
  String get userIdCopied => 'ユーザーIDをコピーしたよ';

  @override
  String get shareProfile => 'プロフィールを共有';

  @override
  String get copyUserId => 'ユーザーIDをコピー';

  @override
  String get failedToDelete => '削除できなかったよ';

  @override
  String get failedToLike => 'いいねできなかったよ';

  @override
  String get replies => '返信';

  @override
  String get reply => '返信する';

  @override
  String get noRepliesYet => 'まだ返信はないよ';

  @override
  String get favouriteAnime => 'お気に入りのアニメ';

  @override
  String get favouriteManga => 'お気に入りのマンガ';

  @override
  String get favouriteCharacters => 'お気に入りのキャラクター';

  @override
  String get favouriteStaff => 'お気に入りのスタッフ';

  @override
  String get favouriteStudios => 'お気に入りのスタジオ';

  @override
  String get noFavouritesYet => 'まだお気に入りはないよ';

  @override
  String get yourStory => 'あなたのストーリー';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしたよ';

  @override
  String get justNow => 'たった今';

  @override
  String get openImage => '画像を開く';

  @override
  String get hideSpoiler => 'ネタバレを隠す';

  @override
  String get showSpoiler => 'ネタバレを表示';

  @override
  String get status => 'ステータス';

  @override
  String get score => 'スコア';

  @override
  String get started => '開始日';

  @override
  String get completed => '完了日';

  @override
  String get private => '非公開';

  @override
  String get hideFromStatusLists => 'ステータスリストから隠す';

  @override
  String get totalRepeats => '合計リピート回数';

  @override
  String get other => 'その他';

  @override
  String get customLists => 'カスタムリスト';

  @override
  String get activeDays => 'アクティブ日数';

  @override
  String get longestStreak => '最長連続記録';

  @override
  String get currentStreak => '現在の連続記録';

  @override
  String get tapOrHoverDay => '日をタップまたはホバー';

  @override
  String get less => '少ない';

  @override
  String get more => '多い';

  @override
  String epIn(int ep, String time) {
    return '第$ep話まであと$time';
  }

  @override
  String get sectionLoading => '読み込み中';

  @override
  String get querySize => 'クエリのサイズ';

  @override
  String get querySizeDesc =>
      '「ひとまとめ」は全行（とプロフィール全体）を1回のリクエストで読み込むよ。「分割」は行やプロフィールの部分ごとに小さなリクエストを送るから、それぞれ速くて、届いたものから順に表示されるよ。';

  @override
  String get oneBig => 'ひとまとめ';

  @override
  String get split => '分割';

  @override
  String get sectionSocial => 'ソーシャル';

  @override
  String get systemNotifications => 'システム通知';

  @override
  String get feedLayout => 'フィードのレイアウト';

  @override
  String sectionsShown(int shown, int total) {
    return '$total件中$shown件を表示中 — タップして選択・並べ替え';
  }

  @override
  String labelSections(String label) {
    return '$labelのセクション';
  }

  @override
  String get accountOptions => 'アカウントのオプション';

  @override
  String get anilistAccountOptions => 'AniListアカウントのオプション';

  @override
  String get sectionPrivacy => 'プライバシー';

  @override
  String get hidePrivateEntries => '非公開エントリーを隠す';

  @override
  String get hidePrivateEntriesDesc => 'AniListで非公開にしたエントリーをフィードに出さない';

  @override
  String get anilistExcludeList => '自分のリストを除外';

  @override
  String get anilistExcludeListDesc => 'AniListのリストに入っている作品をアニメ・マンガページに出さない';

  @override
  String get anilistProfile => 'AniListプロフィール';

  @override
  String get refreshFromAnilist => 'AniListから更新';

  @override
  String get couldNotUpdateAnilistSettings => 'AniListの設定を更新できなかったよ';

  @override
  String get sectionNames => '名前';

  @override
  String get titleLanguage => 'タイトルの言語';

  @override
  String get titleLanguageDesc =>
      'あらゆる場所でのタイトルの表記。例：Attack on Titan / Shingeki no Kyojin / 進撃の巨人。';

  @override
  String get staffCharacterNames => 'スタッフとキャラクターの名前';

  @override
  String get sectionLists => 'リスト';

  @override
  String get scoreFormat => 'スコア形式';

  @override
  String get sortListsBy => 'リストの並べ替え';

  @override
  String labelCustomLists(String label) {
    return '$labelのカスタムリスト';
  }

  @override
  String customListsCount(int count) {
    return '$count件のリスト — タップして追加・削除';
  }

  @override
  String get mergeActivities => 'アクティビティをまとめる';

  @override
  String minutesCount(int count) {
    return '$count分';
  }

  @override
  String get timezone => 'タイムゾーン';

  @override
  String get notSet => '未設定';

  @override
  String get airingNotifications => '放送通知';

  @override
  String get airingNotificationsDesc => 'フォローしてる作品の新エピソードが放送されたら通知';

  @override
  String get displayAdultContent => 'アダルトコンテンツを表示';

  @override
  String get displayAdultContentDesc => 'ブラウズ、検索、フィードに18+作品を含める';

  @override
  String get restrictMessages => 'メッセージをフォロー中の人に限定';

  @override
  String get restrictMessagesDesc => 'フォローしてる人だけがメッセージを送れるよ';

  @override
  String get sectionServices => 'サービス';

  @override
  String get novel => 'ノベル';

  @override
  String labelService(String label) {
    return '$labelサービス';
  }

  @override
  String nameSettings(String name) {
    return '$nameの設定';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name拡張機能ブリッジのオプション';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$nameを起動できなかったよ：$error';
  }

  @override
  String get importLists => 'リストをインポート';

  @override
  String get importListsDesc => 'Aniyomi、Mihon / Tachiyomi、Kotatsuのバックアップから';

  @override
  String get exportLists => 'リストをエクスポート';

  @override
  String get exportListsDesc => 'Aniyomi、Mihon、Kotatsuのバックアップへ';

  @override
  String get sectionBrowse => 'ブラウズ';

  @override
  String get readingTab => '読書タブ';

  @override
  String get readingTabDesc => '3つ目のタブに表示する拡張機能';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'デフォルトのフィード';

  @override
  String get defaultFeedDesc => 'ソースを開いたときに最初に表示するリスト';

  @override
  String noServiceSupports(String type) {
    return '$typeに対応するサービスはないよ';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed個中$loaded個のソースを読み込み中';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ここでは$typeに対応する拡張機能サービスはないよ。';
  }

  @override
  String get loadDataFrom => 'データの取得元';

  @override
  String noInstalledSourcesYet(String type) {
    return 'インストール済みの$typeソースはまだないよ。';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$nameの拡張機能がインストールされてないよ';
  }

  @override
  String get thisSource => 'このソース';

  @override
  String failedToAddRepository(String error) {
    return 'リポジトリを追加できなかったよ：$error';
  }

  @override
  String installedType(String type) {
    return 'インストール済みの$type';
  }

  @override
  String availableType(String type) {
    return '利用可能な$type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'インストール済みの$type拡張機能はないよ';
  }

  @override
  String noAvailableExtensions(String type) {
    return '利用可能な$type拡張機能はないよ';
  }

  @override
  String get nothingToShowYet => 'まだ表示するものがないよ';

  @override
  String get addTitlesHint => 'リストに作品を追加すると、ここに表示されるよ。';

  @override
  String get couldntLoad => '読み込めなかったよ';

  @override
  String get progressStyleHint =>
      'ピルとバーはポスターの上に重なるよ。「外側」は同じ件数をただのテキストで表示するよ。どちらか1つを選んでね。';

  @override
  String get nixManagedUpdate =>
      'このビルドはNixで管理されてるよ。ここで更新せず、flakeで「nix flake update」を実行して再ビルドしてね';

  @override
  String autoUpdateFailed(String error) {
    return '自動アップデートに失敗（$error）— 代わりにダウンロードページを開くよ';
  }

  @override
  String get unknownPreference => '不明な設定';

  @override
  String unsupportedPreferenceType(String type) {
    return '未対応の設定タイプ：$type';
  }

  @override
  String get notYetReleased => '未公開';

  @override
  String get notStarted => '未開始';

  @override
  String get country => '国';

  @override
  String get sort => '並べ替え';

  @override
  String get chooseBackupDialog => 'Aniyomi、Mihon、Kotatsuのバックアップを選択';

  @override
  String get importListsHint =>
      'Aniyomi、Mihon / Tachiyomi、Kotatsuからライブラリを移行できるよ。タイトル、カバー、進捗、カテゴリはそのまま引き継ぐよ。';

  @override
  String get chooseBackupFile => 'バックアップファイルを選択';

  @override
  String importAnimeCount(int count) {
    return 'アニメを$count件インポート';
  }

  @override
  String importMangaCount(int count) {
    return 'マンガを$count件インポート';
  }

  @override
  String get mergeWithExisting => '既存のリストとマージ';

  @override
  String get mergeWithExistingDesc => '今あるものは残すよ。オフにすると、一致する作品は置き換えるよ';

  @override
  String get chooseAnother => '別のものを選ぶ';

  @override
  String get import => 'インポート';

  @override
  String animeCount(int count) {
    return 'アニメ$count件';
  }

  @override
  String mangaCount(int count) {
    return 'マンガ$count件';
  }

  @override
  String get chooseSaveLocation => 'バックアップの保存先を選択';

  @override
  String savedPath(String path) {
    return '$pathに保存したよ';
  }

  @override
  String exportFailed(String error) {
    return 'エクスポートに失敗：$error';
  }

  @override
  String get nothingInLocalLists => 'ローカルリストにはまだ何もないよ。';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ローカルリストからアニメ$anime件とマンガ$manga件をエクスポートするよ。Kotatsuはマンガのみ対応。';
  }

  @override
  String get saveToFolder => 'フォルダに保存';

  @override
  String get formatAnimeManga => 'アニメとマンガ · .tachibk';

  @override
  String get formatMangaTachibk => 'マンガのみ · .tachibk';

  @override
  String get formatMangaZip => 'マンガのみ · .zip';

  @override
  String get genres => 'ジャンル';

  @override
  String get relations => '関連作品';

  @override
  String get recommendations => 'おすすめ';

  @override
  String get openings => 'オープニング';

  @override
  String get endings => 'エンディング';

  @override
  String get background => '背景';

  @override
  String get links => 'リンク';

  @override
  String get rank => 'ランク';

  @override
  String get members => 'メンバー';

  @override
  String get favorites => 'お気に入り';

  @override
  String get episodes => 'エピソード';

  @override
  String get chapters => 'チャプター';

  @override
  String get volumes => '巻';

  @override
  String get format => 'フォーマット';

  @override
  String get source => '原作';

  @override
  String get duration => '長さ';

  @override
  String minutesPerEpisode(int minutes) {
    return '1話あたり$minutes分';
  }

  @override
  String get rating => 'レーティング';

  @override
  String get studio => 'スタジオ';

  @override
  String get serialization => '連載誌';

  @override
  String get season => 'シーズン';

  @override
  String get broadcast => '放送';

  @override
  String get aired => '放送期間';

  @override
  String get published => '連載期間';

  @override
  String get popularity => '人気';

  @override
  String get community => 'コミュニティ';

  @override
  String get watching => '視聴中';

  @override
  String get reading => '読書中';

  @override
  String get dropped => '中断';

  @override
  String get planned => '予定';

  @override
  String get trailers => '予告編';

  @override
  String get ratings => '評価';

  @override
  String get originalTitle => 'オリジナル';

  @override
  String get titleLabel => 'タイトル';

  @override
  String get votes => '投票数';

  @override
  String get watchedStat => '視聴済み';

  @override
  String get runtime => '上映時間';

  @override
  String get director => '監督';

  @override
  String get network => '放送局';

  @override
  String get certification => '認定';

  @override
  String get airs => '放送日';

  @override
  String get budget => '予算';

  @override
  String get revenue => '興行収入';

  @override
  String get released => '公開日';

  @override
  String get tags => 'タグ';

  @override
  String get author => '作者';

  @override
  String get born => '生年月日';

  @override
  String get website => 'ウェブサイト';

  @override
  String get established => '設立';

  @override
  String get manhwa => 'マンファ';

  @override
  String get manhua => 'マンホア';

  @override
  String get novels => 'ノベル';

  @override
  String get thisMonth => '今月';

  @override
  String get movies => '映画';

  @override
  String get shows => '番組';

  @override
  String get rewatching => '再視聴中';

  @override
  String get rereading => '再読中';

  @override
  String get watchedStatus => '視聴済み';

  @override
  String get planning => '予定';

  @override
  String get paused => '一時停止';

  @override
  String get watch => '見る';

  @override
  String get read => '読む';

  @override
  String get finished => '完結';

  @override
  String get releasing => '連載中';

  @override
  String get cancelled => '打ち切り';

  @override
  String get hiatus => '休載中';

  @override
  String get remove => '削除';

  @override
  String syncToService(String service) {
    return '$serviceに同期';
  }

  @override
  String syncedToService(String service) {
    return '$serviceに同期したよ';
  }

  @override
  String get latestReleases => '最新リリース';

  @override
  String get topRated => '高評価';

  @override
  String localSection(String title) {
    return '$title · ローカル';
  }

  @override
  String get localEntryNote =>
      'この作品はこの端末のローカルリストにだけあるよ。アカウントのリストと衝突するかもしれないから、ここでは編集できないけど、削除はできるよ。';

  @override
  String get cardPresetPoster => 'ポスター';

  @override
  String get cardPresetCard => 'カード';

  @override
  String get cardPresetCozy => 'ゆったり';

  @override
  String get sortTopRated => '高評価';

  @override
  String get sortMostPopular => '人気順';

  @override
  String get sortTrending => 'トレンド';

  @override
  String get sortNewest => '新着';

  @override
  String get sortAz => 'A〜Z';

  @override
  String get sortMostFavourited => 'お気に入り順';

  @override
  String get anyCountry => 'すべての国';

  @override
  String get orderScore => 'スコア';

  @override
  String get orderTitle => 'タイトル';

  @override
  String get orderLastUpdated => '最終更新';

  @override
  String get orderLastAdded => '最後に追加';

  @override
  String get never => 'しない';

  @override
  String get always => '常に';

  @override
  String get scorePoint100 => '100点';

  @override
  String get scorePoint10Decimal => '10点（小数）';

  @override
  String get scorePoint10 => '10点';

  @override
  String get scorePoint5 => '星5つ';

  @override
  String get scorePoint3 => '3段階スマイリー';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count時間',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count週間',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => '再開';

  @override
  String get resumeSourceMissing => '再開するにはこの作品のソースをインストールしてね';

  @override
  String get resumeRemove => '再開リストから削除';

  @override
  String resumeAt(String time) {
    return '残り$time';
  }

  @override
  String resumePage(int page, int total) {
    return '$totalページ中$pageページ目';
  }

  @override
  String get continueWatching => '続きを見る';

  @override
  String get continueReading => '続きを読む';

  @override
  String get favouriteAnimeSection => 'お気に入りのアニメ';

  @override
  String get favouriteMangaSection => 'お気に入りのマンガ';

  @override
  String get plannedAnime => '視聴予定のアニメ';

  @override
  String get plannedManga => '読む予定のマンガ';

  @override
  String get completedAnime => '完了したアニメ';

  @override
  String get completedManga => '完了したマンガ';

  @override
  String get hiddenMedia => '非表示メディア';

  @override
  String get recentUpdates => '最近の更新';

  @override
  String get trendingNow => '今のトレンド';

  @override
  String get popularThisSeason => '今シーズンの人気作';

  @override
  String get trendingMovies => 'トレンドの映画';

  @override
  String get topRatedSeries => '高評価のシリーズ';

  @override
  String get mostFavouriteSeries => 'お気に入りの多いシリーズ';

  @override
  String get popularAnime => '人気のアニメ';

  @override
  String get trendingManhwa => 'トレンドのマンファ';

  @override
  String get trendingNovels => 'トレンドのノベル';

  @override
  String get topRatedManga => '高評価のマンガ';

  @override
  String get mostFavouriteManga => 'お気に入りの多いマンガ';

  @override
  String get popularManga => '人気のマンガ';

  @override
  String get topMovies => '人気の映画';

  @override
  String get topOna => '人気のONA';

  @override
  String get topOva => '人気のOVA';

  @override
  String get mostPopular => 'いちばん人気';

  @override
  String get mostFavourite => 'お気に入りがいちばん多い';

  @override
  String get upcoming => '公開予定';

  @override
  String get topManga => '人気のマンガ';

  @override
  String get topManhwa => '人気のマンファ';

  @override
  String get topManhua => '人気のマンホア';

  @override
  String get topNovels => '人気のノベル';

  @override
  String get topOneShots => '人気の読み切り';

  @override
  String get trendingMoviesToday => '今日のトレンド映画';

  @override
  String get trendingShowsToday => '今日のトレンド番組';

  @override
  String get trendingMoviesWeek => '今週のトレンド映画';

  @override
  String get trendingShowsWeek => '今週のトレンド番組';

  @override
  String get mostWatchedMoviesMonth => '今月よく見られた映画';

  @override
  String get mostWatchedShowsMonth => '今月よく見られた番組';

  @override
  String get trendingThisWeek => '今週のトレンド';

  @override
  String get mostWatchedThisMonth => '今月よく見られた作品';

  @override
  String get repoLinksAdded => 'リポジトリのリンクを追加したよ！';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniListからデータを取得できなかったよ。';

  @override
  String get navInfo => '情報';

  @override
  String get navComments => 'コメント';

  @override
  String get playerNotAvailable => 'プレイヤーはまだ使えないよ';

  @override
  String deepLinkInitialError(String error) {
    return '最初のディープリンクの取得でエラー：$error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'リンクを開く際にエラー：$error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'このリンクは開けないよ：$link';
  }

  @override
  String linkOpenError(String error) {
    return 'リンクを開く際にエラー：$error';
  }

  @override
  String get forReleasingTitles => '現在連載中の作品向け';

  @override
  String get progress => '進捗';

  @override
  String get notes => 'メモ';

  @override
  String serviceNotFound(String id) {
    return 'サービス「$id」が見つからないよ';
  }

  @override
  String get glassEffectEnabled => 'ガラス効果をオンにしたよ';

  @override
  String get glassEffectDisabled => 'ガラス効果をオフにしたよ';

  @override
  String get materialYouEnabled => 'Material Youをオンにしたよ';

  @override
  String get materialYouDisabled => 'Material Youをオフにしたよ';

  @override
  String get darkModeEnabled => 'ダークモードをオンにしたよ';

  @override
  String get darkModeDisabled => 'ダークモードをオフにしたよ';

  @override
  String get animeList => 'アニメリスト';

  @override
  String get mangaList => 'マンガリスト';

  @override
  String ownerAnimeList(String owner) {
    return '$ownerのアニメリスト';
  }

  @override
  String ownerMangaList(String owner) {
    return '$ownerのマンガリスト';
  }

  @override
  String get loadingList => 'リストを読み込み中';

  @override
  String get earlier => '以前';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count時間前',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count分前',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count分前';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count時間前';
  }

  @override
  String daysAgoShort(int count) {
    return '$count日前';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count週間前';
  }

  @override
  String get couldntLoadSource => 'このソースを読み込めなかったよ';

  @override
  String get followers => 'フォロワー';

  @override
  String couldntLoadTitle(String title) {
    return '$titleを読み込めなかったよ';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'このプロフィールを読み込めなかったよ';

  @override
  String get profile => 'プロフィール';

  @override
  String get feed => 'フィード';

  @override
  String get stats => '統計';

  @override
  String get received => '受信';

  @override
  String get sent => '送信';

  @override
  String get global => 'グローバル';

  @override
  String get couldntLoadPage => 'このページを読み込めなかったよ';

  @override
  String get couldntLoadAllDetails => 'すべての詳細を読み込めなかったよ';

  @override
  String get series => 'シリーズ';

  @override
  String get studios => 'スタジオ';

  @override
  String get users => 'ユーザー';

  @override
  String repositoriesTitle(String type) {
    return '$typeのリポジトリ';
  }

  @override
  String get repositoryUrl => 'リポジトリURL';

  @override
  String get downloadingRepository => 'リポジトリをダウンロード中…';

  @override
  String get noRepositories => 'リポジトリが追加されてないよ';

  @override
  String repoExtensionsCount(String count) {
    return '拡張機能$count件';
  }

  @override
  String get searchExtensions => '拡張機能を検索...';

  @override
  String deletePluginTitle(String name) {
    return '$nameを削除する？';
  }

  @override
  String get deletePluginMessage => 'このプラグインを本当に削除する？';

  @override
  String pluginDeleted(String name) {
    return '$nameを削除したよ';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$nameは設定されたリポジトリにないよ';
  }

  @override
  String get pluginFetchFailed => 'プラグイン情報を取得できなかったよ';

  @override
  String installPluginTitle(String name) {
    return '$nameをインストール';
  }

  @override
  String sizeLabel(String size) {
    return 'サイズ：$size';
  }

  @override
  String get installedState => 'インストール済み';

  @override
  String get errorLabel => 'エラー：';

  @override
  String get stackTraceDetails => '詳細（スタックトレース）';

  @override
  String get shareLogFile => 'ログファイルを共有';

  @override
  String get copyLogs => 'ログをコピー';

  @override
  String noListToEdit(String service) {
    return '$serviceには編集できるリストがないよ';
  }

  @override
  String get couldNotReadFile => 'そのファイルを読み込めなかったよ';

  @override
  String importedSummary(int anime, int manga) {
    return 'アニメ$anime件とマンガ$manga件をインポートしたよ';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count件はすでにあるよ';
  }

  @override
  String get airingNow => '放送中';

  @override
  String get topRatedMovies => '高評価の映画';

  @override
  String get koreanDramas => '韓国ドラマ';

  @override
  String get chineseDramas => '中国ドラマ';

  @override
  String get japaneseDramas => '日本のドラマ';

  @override
  String get thaiDramas => 'タイドラマ';

  @override
  String get turkishDramas => 'トルコドラマ';

  @override
  String get miniSeries => 'ミニシリーズ';

  @override
  String get topRatedShows => '高評価の番組';

  @override
  String get recommendedSection => 'おすすめ';

  @override
  String get syncRow => 'リストを同期';

  @override
  String get syncRowDesc => '1つのサービスのリストを、ほかのアカウントにも反映するよ';

  @override
  String get syncTitle => '同期';

  @override
  String get syncMainService => 'メインサービス';

  @override
  String get syncMainServiceDesc =>
      'このサービスのリストが基準になるよ。ほかのログイン済みサービスはそれに合わせて更新されるよ';

  @override
  String get syncAuto => '自動同期';

  @override
  String get syncAutoDesc => 'アプリを開いたときと30分ごとに、バックグラウンドで取得して同期するよ';

  @override
  String get syncAddMissing => '足りないエントリーを追加';

  @override
  String get syncAddMissingDesc => 'もう一方のサービスにまだない作品も追加するよ';

  @override
  String get syncOnlyForward => '進んでる進捗は維持';

  @override
  String get syncOnlyForwardDesc => 'すでに先に進んでるサービスの進捗は下げないよ';

  @override
  String get syncFetch => '取得';

  @override
  String get syncFetchAgain => 'もう一度取得';

  @override
  String get syncAll => 'すべて同期';

  @override
  String get syncStop => '停止';

  @override
  String get syncResume => '再開';

  @override
  String get syncNothingToSync => 'このサービスはこのタイプでは同期できないよ';

  @override
  String get syncNoTargets => '同期先として、ほかのサービスにもログインしてね';

  @override
  String get syncLoadingMap => 'ID対応表を読み込み中';

  @override
  String get syncComparing => 'リストを比較中';

  @override
  String get syncIntro =>
      'メインサービスを選んで「取得」を押してね。各サービスからリストを1回ずつ取得して、メインのものと比べるよ。';

  @override
  String get syncStateSynced => '同期済み';

  @override
  String get syncStateOutdated => '未同期';

  @override
  String get syncStateMissing => 'リストにないよ';

  @override
  String get syncStateUnmapped => '一致なし';

  @override
  String syncPaused(String time) {
    return 'レート制限の解除待ち、$time後に再開するよ';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$nameにだけある$count件はそのままにするよ';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total件中$done件';
  }

  @override
  String get syncNothingHere => '表示するものはないよ';

  @override
  String syncLimits(int used, int max, String window) {
    return 'この$windowで$max回中$used回のリクエストを使用';
  }

  @override
  String get syncMinute => '1分間';

  @override
  String get syncDay => '1日';

  @override
  String get syncNotInList => 'まだリストにないよ';

  @override
  String get syncCleared => 'プランをクリアしたよ';

  @override
  String get syncClear => 'クリア';

  @override
  String get syncOptions => 'オプション';

  @override
  String get syncShared => 'ほかのアイテムとエントリーを共有してるよ';

  @override
  String syncNotFound(String service) {
    return '$serviceで見つからなかったよ';
  }

  @override
  String syncService(String service, int count) {
    return '$serviceを同期（$count）';
  }

  @override
  String get syncOnEdit => '変更をすぐに同期';

  @override
  String get syncOnEditDesc => '進捗の更新やリストの編集を、ほかのログイン済みサービスにすぐ反映するよ';

  @override
  String syncPushed(String services) {
    return '$servicesに同期したよ';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service：$error';
  }

  @override
  String get syncRateLimited => 'レート制限中だよ。少し待ってからもう一度試してね';

  @override
  String get syncAhead => '進んでるほうを優先';

  @override
  String get syncAheadDesc => '双方向：作品ごとにいちばん進んでるエントリーが勝って、ほかのすべてのサービスにコピーされるよ';

  @override
  String syncAheadFrom(String service) {
    return '$serviceから';
  }

  @override
  String get syncConfirm => '同期前に確認';

  @override
  String get syncConfirmDesc => '「すべて同期」で何が変わるか、何回リクエストが必要かを表示するよ';

  @override
  String get syncPreviewTitle => '同期の準備OK';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '更新$updates件、追加$adds件';
  }

  @override
  String syncPreviewRequests(int count) {
    return '約$count回のリクエスト';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count件のIDは先に照会が必要だよ';
  }

  @override
  String get syncPreviewNothing => '変更なし';

  @override
  String get syncStart => '開始';

  @override
  String get syncRetry => '再試行';

  @override
  String get syncSkip => 'この項目をスキップ';

  @override
  String get syncInclude => 'この項目をもう一度含める';

  @override
  String get syncSkippedLabel => 'スキップ済み';

  @override
  String get syncChanges => '差分';

  @override
  String get syncChangeStatus => 'ステータス';

  @override
  String get syncChangeProgress => '進捗';

  @override
  String get syncChangeScore => 'スコア';

  @override
  String get syncChangeDates => '日付';

  @override
  String get syncChangeRepeat => '再視聴回数';

  @override
  String get syncFailedReason => '失敗した理由';

  @override
  String get syncSkippedHint => 'スキップした項目は、もう一度取得してもそのままにするよ';

  @override
  String get commentsRules => 'コメントのルール';

  @override
  String get commentsRulesBody =>
      'ルールを破ったら即退場\n\n1. 人種差別、差別、ヘイトスピーチは禁止\n2. スパムや自己宣伝は禁止\n3. NSFWコンテンツは絶対禁止\n4. 英語のみ、例外なし\n5. なりすまし、嫌がらせ、暴言は禁止\n6. 違法なコンテンツや、ファンダムへの極端な侮辱は禁止\n7. リポジトリや拡張機能のリクエスト・共有は禁止\n8. ネタバレはスポイラータグと警告をつけた場合のみ\n9. 未成年キャラクターを性的に扱うコメントや不適切なコメントは禁止\n10. ダメだと思ったら、投稿しないでね！';

  @override
  String get commentsRulesAccept => 'わかった';

  @override
  String get commentsSortNewest => '新しい順';

  @override
  String get commentsSortOldest => '古い順';

  @override
  String get commentsSortHighest => '評価が高い順';

  @override
  String get commentsSortLowest => '評価が低い順';

  @override
  String commentsEpisodeShort(int number) {
    return '第$number話';
  }

  @override
  String commentsChapterShort(int number) {
    return '第$number章';
  }

  @override
  String get commentsFilterEpisodeTitle => 'エピソードで絞り込み';

  @override
  String get commentsFilterChapterTitle => 'チャプターで絞り込み';

  @override
  String get commentsFilterTagTitle => 'エピソードかチャプターの番号を入力';

  @override
  String get commentsFilterHint => '番号';

  @override
  String get commentsFilterApply => '絞り込み';

  @override
  String get commentsFilterClear => 'すべて表示';

  @override
  String get commentsPlaceholder => 'コメントを追加…';

  @override
  String commentsReplyingTo(String name) {
    return '$nameに返信中';
  }

  @override
  String get commentsSend => '送信';

  @override
  String get commentsTagButton => 'タグ';

  @override
  String commentsTagTitle(String label) {
    return '$labelタグ（任意）';
  }

  @override
  String get commentsTagEpisode => 'エピソード';

  @override
  String get commentsTagChapter => 'チャプター';

  @override
  String commentsTagRange(int total) {
    return '1〜$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label番号';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'タグは合計（$total）を超えられないよ';
  }

  @override
  String get commentsNoTag => 'タグなし';

  @override
  String get commentsSpoiler => 'ネタバレ';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIFを検索';

  @override
  String get commentsGifEmpty => 'GIFが見つからないよ';

  @override
  String get commentsEmptyText => 'コメントは空にできないよ';

  @override
  String get commentsBannedYou => 'コメントを禁止されてるよ';

  @override
  String get commentsEdited => 'コメントを編集したよ';

  @override
  String get commentsDeleted => 'コメントを削除したよ';

  @override
  String get commentsDeletedPlaceholder => '[削除済み]';

  @override
  String get commentsReported => 'コメントを報告したよ';

  @override
  String get commentsUserBanned => 'ユーザーをBANしたよ';

  @override
  String get commentsReport => '報告';

  @override
  String get commentsReportAsk => 'このコメントをモデレーターに報告する？';

  @override
  String get commentsDelete => '削除';

  @override
  String get commentsDeleteAsk => 'このコメントはみんなから見えなくなるよ。';

  @override
  String get commentsBan => 'BAN';

  @override
  String get commentsBanAsk => 'このユーザーをコメント禁止にする？';

  @override
  String get commentsCopy => 'コピー';

  @override
  String get commentsViewReply => '返信1件を表示';

  @override
  String commentsViewReplies(int count) {
    return '返信$count件を表示';
  }

  @override
  String get commentsHideReplies => '返信を隠す';

  @override
  String get commentsLoadMore => 'コメントをもっと読み込む';

  @override
  String get commentsEmpty => 'まだコメントはないよ。最初の1人になろう！';

  @override
  String get commentsEmptyFiltered => 'このフィルターに合うコメントはないよ';

  @override
  String get commentsSignIn => 'コメントを読み書きするにはAniListにログインしてね';

  @override
  String get commentsSignInMessage => 'コメントはすべてのサービスで共有されて、AniListアカウントを使うよ。';

  @override
  String get commentsUnavailable => 'この作品ではコメントを使えないよ';

  @override
  String get commentsUnavailableMessage => 'AniListのエントリーと照合できなかったよ。';

  @override
  String get commentsDisabled => 'コメントはオフになってるよ';

  @override
  String get commentsDisabledMessage => '設定›一般でオンに戻せるよ。';

  @override
  String get commentsOffline => 'コメントを読み込めなかったよ';

  @override
  String get commentsSingleTitle => 'コメント1件を表示中';

  @override
  String get commentsShowAll => 'すべてのコメントを表示';

  @override
  String get commentsSettingsHeader => 'コメント';

  @override
  String get commentsSettingEnabled => 'コメント';

  @override
  String get commentsSettingEnabledDesc =>
      '作品ページにコメントタブを表示して、AniListアカウントでコメントサーバーにログインするよ';

  @override
  String get commentsSettingAlerts => '返信の通知';

  @override
  String get commentsSettingAlertsDesc => '自分のコメントに返信があったら通知';

  @override
  String get commentsNoticeReplyTitle => 'コメントに新しい返信';

  @override
  String commentsNoticeReply(String name) {
    return '$nameがあなたのコメントに返信したよ';
  }

  @override
  String get commentsNoticeWarningTitle => '警告を受け取ったよ';

  @override
  String get commentsNoticeWarning => 'コメントはもう少し気をつけてね';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsuからのお知らせ';

  @override
  String get barcodeTitle => 'バーコードをスキャン';

  @override
  String get barcodeTooltip => 'バーコードからマンガやノベルを探す';

  @override
  String get barcodeIntro => '巻の裏にあるバーコードにカメラを向けるか、ISBNを入力してね。';

  @override
  String get barcodeIntroManual => '巻の裏のバーコードの上に印刷されてるISBNを入力してね。';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => '有効なISBNじゃないよ';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbnに該当する本は見つからなかったよ';
  }

  @override
  String get barcodeCameraDenied => 'カメラが使えないよ。カメラへのアクセスを許可するか、ISBNを入力してね。';

  @override
  String get themesTitle => 'オープニング＆エンディング';

  @override
  String get themesPlayVideo => '動画を再生';

  @override
  String get themesPlayAudio => '音声のみ再生';

  @override
  String get themesOpenSite => 'AnimeThemesで開く';

  @override
  String get themesCredit => 'AnimeThemesのテーマ曲';

  @override
  String get themesVersions => 'バージョン';

  @override
  String get sauceTitle => '元ネタを探す';

  @override
  String get sauceIntro => 'マンガのページやイラストをアップロード、またはリンクを貼り付けて、出どころを探そう。';

  @override
  String get sauceKeyTitle => 'SauceNAOのAPIキー';

  @override
  String get sauceKeyHint => '任意。1日の検索上限が上がるよ';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.phpで無料のキーを入手してね';

  @override
  String get sauceOpen => 'ソースを開く';

  @override
  String get sauceCredit => 'SauceNAOによる画像検索';

  @override
  String get sauceEmpty => '一致するものはないよ';

  @override
  String get sauceTooltip => 'マンガのページやイラストの元ネタを探す';

  @override
  String get trendzTitle => 'アニメランキング';

  @override
  String get trendzAnime => 'アニメ';

  @override
  String get trendzFemale => '女性キャラクター';

  @override
  String get trendzMale => '男性キャラクター';

  @override
  String get trendzCouple => 'カップル';

  @override
  String get trendzCredit => 'AniTrendzの週間ランキング';

  @override
  String get trendzNew => 'NEW';

  @override
  String get trendzEmpty => 'ランキングは空だよ';

  @override
  String get shareCard => 'カードを共有';

  @override
  String get shareCardList => 'リストカードを共有';

  @override
  String get shareCardSaved => 'カードを保存したよ';

  @override
  String get shareCardFailed => 'カードを作成できなかったよ';

  @override
  String get shareCardListEmpty => 'リストにはまだ共有できるものがないよ';

  @override
  String get shareCardTop => '私のおすすめ';

  @override
  String themesEpisodes(String eps) {
    return '全$eps話';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent%一致';
  }

  @override
  String trendzWeek(String week, String season) {
    return '第$week週 · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count票';
  }

  @override
  String trendzPeak(String rank) {
    return '最高#$rank位';
  }

  @override
  String trendzWeeks(String count) {
    return 'トップ10入り$count週';
  }

  @override
  String get imageSearchTitle => '画像で検索';

  @override
  String get imageSearchTooltip => 'スクリーンショットからアニメを探す';

  @override
  String get imageSearchIntro =>
      'スクリーンショットを選ぶか画像リンクを貼り付けると、trace.moeがそのシーンのエピソードと時間を見つけてくれるよ。';

  @override
  String get imageSearchPick => '画像を選ぶ';

  @override
  String get imageSearchLinkHint => '画像リンクを貼り付け';

  @override
  String get imageSearchGo => '検索';

  @override
  String get imageSearchEmpty => '一致するものはないよ';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return '第$number話';
  }

  @override
  String imageSearchAt(String time) {
    return '$timeあたり';
  }

  @override
  String get imageSearchPreview => 'プレビュークリップ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent%一致';
  }

  @override
  String get imageSearchCredit => 'trace.moe提供';

  @override
  String get imageSearchOpenFailed => 'この作品を開けなかったよ';

  @override
  String get groups => 'グループ';

  @override
  String get groupsYours => 'あなたのグループ';

  @override
  String get groupsPopular => '人気';

  @override
  String get groupsNew => '新着';

  @override
  String get groupsFeatured => '注目';

  @override
  String get groupsSearch => 'グループを検索';

  @override
  String get groupsAll => 'すべて';

  @override
  String get groupsEmpty => 'グループが見つからないよ';

  @override
  String get groupsEmptyYours => 'まだどのグループにも参加してないよ';

  @override
  String get groupsSignIn => '参加したグループを見るにはログインしてね';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'メンバー$count人',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => '参加';

  @override
  String get groupsJoined => '参加済み';

  @override
  String get groupsLeave => 'グループを抜ける';

  @override
  String get groupsLeaveAsk => 'このグループの投稿がフィードに表示されなくなるよ。';

  @override
  String get groupsJoinFailed => 'このグループに参加できなかったよ。招待制かも';

  @override
  String get groupsLeaveFailed => 'このグループを抜けられなかったよ';

  @override
  String get groupsPosts => '投稿';

  @override
  String get groupsMembersTab => 'メンバー';

  @override
  String get groupsAbout => '概要';

  @override
  String get groupsRules => 'ルール';

  @override
  String get groupsPrivacyOpen => '公開';

  @override
  String get groupsPrivacyRestricted => '制限あり';

  @override
  String get groupsPrivacyClosed => '非公開';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => '管理者';

  @override
  String get groupsRoleMod => 'モデレーター';

  @override
  String get groupsCouldntLoad => 'このグループを読み込めなかったよ';

  @override
  String get groupsNewPost => 'グループに投稿';

  @override
  String get groupsPostHint => 'グループに何かシェアしよう';

  @override
  String get groupsOpenInBrowser => 'ブラウザで開く';

  @override
  String get groupsCategory => 'カテゴリ';

  @override
  String get groupsLanguage => '言語';

  @override
  String get groupsCreated => '作成日';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'リーダー$count人',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'プライバシー';

  @override
  String get notificationsAll => 'すべて';

  @override
  String get notificationsAiring => '放送中';

  @override
  String get notificationsMedia => '新作';

  @override
  String get notificationsReplies => '返信';

  @override
  String get notificationsMentions => 'メンション';

  @override
  String get notificationsMessages => 'メッセージ';

  @override
  String get notificationsLikes => 'いいね';

  @override
  String get notificationsFollows => 'フォロー';

  @override
  String get notificationsNoServices => '通知に対応したログイン済みサービスがないよ';

  @override
  String get notificationsNoServicesMessage => '通知を送るサービスにログインすると、ここに表示されるよ。';

  @override
  String get notificationsEmptyKind => 'このカテゴリにはまだ何もないよ';

  @override
  String get notificationsCommentsEmpty => 'コメントの通知はないよ';

  @override
  String get notificationsCommentsEmptyMessage =>
      'コメントへの返信とDantotsuからのお知らせがここに表示されるよ。';

  @override
  String get notificationsSettings => '通知の設定';

  @override
  String get notificationsPollTitle => '新しい通知を確認';

  @override
  String notificationsPollDesc(int minutes) {
    return 'アプリを開いてる間、$minutes分ごと';
  }

  @override
  String get notificationsNotifyAbout => '通知する内容';

  @override
  String get notificationsCommentsHeader => 'コメントの通知';

  @override
  String systemNotificationsDescFor(String service) {
    return 'アプリの実行中、未読の$service通知ごとにシステム通知を表示するよ。';
  }

  @override
  String get notificationsTestSent => 'テスト通知を送ったよ';

  @override
  String get notificationsTestDenied => 'Dartotsuの通知が許可されてないよ。システム設定でオンにしてね。';

  @override
  String get notificationsTestHint => '長押しでテスト通知を送信';

  @override
  String get notificationsTestSample => 'これはテスト通知だよ';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$nameが$mediaのあなたのコメントに返信したよ';
  }

  @override
  String get imageSearchNotLink => 'リンクじゃないみたい';

  @override
  String get imageSearchQuota => '検索の上限を超えたよ';

  @override
  String get imageSearchBusy => 'リクエストが多すぎるよ。少し待ってからもう一度試してね';

  @override
  String imageSearchFailed(int code) {
    return '検索に失敗（$code）';
  }

  @override
  String notificationsNewCount(int count) {
    return '新しい通知が$count件';
  }

  @override
  String get reactionsTitle => 'リアクション';

  @override
  String get reactionsNeedEntry => 'リアクションする前に、この作品をリストに追加してね';

  @override
  String get reactionsAdd => 'リアクションを追加';

  @override
  String get reactionsHint => 'どうだった？（短く、ネタバレなしで）';

  @override
  String get reactionsPost => '投稿';

  @override
  String get reactionsFailed => 'リアクションを更新できなかったよ';

  @override
  String get settingsWatch => '見る＆読む';

  @override
  String get settingsWatchDesc => 'エピソード一覧、ソースの照合、エピソードの詳細';

  @override
  String get watchSettingsLayout => 'エピソード一覧';

  @override
  String get watchSettingsSources => 'ソース';

  @override
  String get watchSettingsMetadata => 'エピソードの詳細';

  @override
  String get watchLayout => 'レイアウト';

  @override
  String get watchListView => 'リスト';

  @override
  String get watchGridView => 'グリッド';

  @override
  String get watchCompactView => 'コンパクト';

  @override
  String get watchDefaultLayoutDesc => '作品ごとに変えるまで使われる、エピソードやチャプターの並べ方';

  @override
  String get watchChunkSize => '範囲のサイズ';

  @override
  String get watchChunkSizeDesc => '範囲タブ1つに入れるエピソードやチャプターの数';

  @override
  String get watchShowDescription => '説明を表示';

  @override
  String get watchShowDescriptionDesc => 'リストレイアウトで、各タイトルの下にエピソードのあらすじを表示';

  @override
  String get watchShowFiller => 'フィラーエピソードを表示';

  @override
  String get watchShowFillerDesc => 'オフにすると、フィラーのエピソードを隠すよ';

  @override
  String get watchBlurUnwatched => 'ネタバレのサムネイルを隠す';

  @override
  String get watchBlurUnwatchedDesc => 'まだ見てないエピソードのサムネイルをぼかすよ';

  @override
  String get watchResumeShelf => '再開シェルフ';

  @override
  String get watchResumeShelfDesc => 'ホームに「再開」の行を表示';

  @override
  String get watchMarkOnLongPress => '長押しで進捗を記録';

  @override
  String get watchMarkOnLongPressDesc => 'エピソードやチャプターを長押しして、視聴済み／未視聴を切り替え';

  @override
  String get watchMatching => 'ソースの照合';

  @override
  String get watchMatchingDesc =>
      '「いちばん近い」は検索結果のトップを選ぶよ。「完全一致のみ」はほぼ同じタイトルだけを採用して、残りは自分で選ぶ形になるよ。';

  @override
  String get watchMatchClosest => 'いちばん近いものを選ぶ';

  @override
  String get watchMatchExact => '完全一致のみ';

  @override
  String get watchMetadataDesc =>
      'エピソードのタイトル、あらすじ、サムネイル、放送日、フィラー情報の取得元。ドラッグで優先順位を決めてね。値があった最初のソースが採用されるよ。';

  @override
  String get watchMetaAniZipDesc => 'エピソードのタイトル、あらすじ、スチル、放送日';

  @override
  String get watchMetaKitsuDesc => 'エピソードのタイトル、説明、サムネイル';

  @override
  String get watchMetaSimklDesc => 'エピソードのタイトル、説明、スチル、放送日';

  @override
  String get watchMetaAniListDesc => '配信のエピソードタイトル、サムネイル、放送スケジュール';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai経由のMyAnimeListのエピソードタイトル、放送日、フィラー・総集編フラグ';

  @override
  String get watchClearMetadata => 'エピソードの詳細を更新';

  @override
  String get watchClearMetadataDesc => 'キャッシュしたエピソードの詳細を忘れて、取得し直すよ';

  @override
  String get watchMetadataCleared => 'エピソードの詳細を取得し直すよ';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countエピソード',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countチャプター',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'エピソード$number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'チャプター$number';
  }

  @override
  String get watchSearching => '検索中…';

  @override
  String watchSearchingFor(String term) {
    return '検索中：$term';
  }

  @override
  String watchSelected(String title) {
    return '選択中：$title';
  }

  @override
  String watchFound(String title) {
    return '見つかった：$title';
  }

  @override
  String get watchNothingFound => 'このソースでは見つからなかったよ';

  @override
  String get watchSearchFailed => 'ソースの検索に失敗したよ';

  @override
  String get watchLoadFailed => 'リストを読み込めなかったよ';

  @override
  String get watchSignInToTrack => '進捗を記録するにはログインしてね';

  @override
  String watchInstallSource(String action) {
    return '$actionを始めるには拡張機能をインストールしてね';
  }

  @override
  String get watchSourceMissing => 'このソースはインストールされてないよ';

  @override
  String get watchWrongTitle => 'タイトルが違う？';

  @override
  String get watchSearchAgain => 'もう一度検索';

  @override
  String watchSearchSource(String source) {
    return '$sourceを検索';
  }

  @override
  String get watchSource => 'ソース';

  @override
  String get watchOptions => 'オプション';

  @override
  String get watchReverse => '逆順';

  @override
  String get watchScanlators => 'グループ';

  @override
  String get watchResetOptions => 'これらのオプションをリセット';

  @override
  String get watchContinue => '続ける';

  @override
  String get watchStart => '開始';

  @override
  String get watchPlay => '再生';

  @override
  String get watchRead => '読む';

  @override
  String get watchMarkWatched => '視聴済みにする';

  @override
  String get watchMarkUnwatched => '未視聴にする';

  @override
  String get watchMarkRead => '読了にする';

  @override
  String get watchMarkUnread => '未読にする';

  @override
  String get watchFiller => 'フィラー';

  @override
  String get watchRecap => '総集編';

  @override
  String get watchNoEpisodes => 'エピソードが見つからないよ';

  @override
  String get watchNoChapters => 'チャプターが見つからないよ';

  @override
  String get watchSourceTools => 'ソースツール';

  @override
  String get watchSourceSettings => 'ソースの設定';

  @override
  String get watchOpenWebView => 'Webビューで開く';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflareのチェックを通すかログインしてね。Cookieはソースのリクエストと共有されるよ';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$hostのCookieを$count件保存済み',
      one: '$hostのCookieを1件保存済み',
      zero: '$hostのCookieは保存されてないよ',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflareのクリアランスが有効、$time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflareのクリアランスcookieがないよ';

  @override
  String get watchClearanceSession => 'アプリを閉じるまで有効';

  @override
  String get watchAgentShared =>
      'リクエストにはWebビューのユーザーエージェントを使うよ。Cloudflareがここをチェックするんだ';

  @override
  String get watchAgentCustom =>
      'カスタムのユーザーエージェントが設定されてるから、Webビューのクリアランスは拒否されるかも';

  @override
  String get watchTestConnection => '接続をテスト';

  @override
  String get watchSolveChallenge => '解決する';

  @override
  String watchProbeOk(int code) {
    return '接続OK（HTTP $code）';
  }

  @override
  String get watchProbeChallenge => 'Cloudflareがまだチェックを求めてるよ';

  @override
  String watchProbeBlocked(int code) {
    return 'サイトにブロックされたよ（HTTP $code）';
  }

  @override
  String get watchProbeFailed => 'サイトに接続できなかったよ';

  @override
  String get watchClearCookies => 'このサイトのCookieを削除';

  @override
  String get watchCookiesCleared => 'Cookieを削除したよ';

  @override
  String get watchMetaSource => 'エピソード詳細の取得元';

  @override
  String get watchMetaAuto => '自動';

  @override
  String get watchMetaOff => 'オフ';

  @override
  String get playerSettingsTitle => 'プレイヤーの設定';

  @override
  String get playerSectionPlayback => '再生';

  @override
  String get playerSectionSkip => 'スキップ';

  @override
  String get playerSectionGestures => '操作';

  @override
  String get playerSectionSubtitles => '字幕';

  @override
  String get playerSectionShaders => 'シェーダー';

  @override
  String get playerSectionEngine => 'エンジン';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => '再生速度';

  @override
  String get playerCursedSpeed => '追加の速度';

  @override
  String get playerCursedSpeedDesc => '最大10倍までの速度をリストに追加';

  @override
  String get playerResize => 'リサイズモード';

  @override
  String get playerFitFit => 'フィット';

  @override
  String get playerFitCover => 'カバー';

  @override
  String get playerFitStretch => '引き伸ばし';

  @override
  String get playerSkipDuration => 'スキップボタンの長さ';

  @override
  String get playerSkipDurationDesc => 'オープニングやエンディング以外でスキップボタンが飛ばす秒数';

  @override
  String get playerSeekDuration => 'ダブルタップでシーク';

  @override
  String get playerSeekDurationDesc => 'ダブルタップや矢印キーで飛ばす秒数';

  @override
  String get playerAutoPlay => '次を自動再生';

  @override
  String get playerAutoPlayDesc => 'このエピソードが終わったら次のエピソードを始める';

  @override
  String get playerResume => '続きから再生';

  @override
  String get playerResumeDesc => 'エピソードを最後に見た位置から続ける';

  @override
  String get playerOrientation => '画面の向き';

  @override
  String get playerOrientationAuto => '端末に合わせる';

  @override
  String get playerOrientationLandscape => '横向き';

  @override
  String get playerOrientationPortrait => '縦向き';

  @override
  String get playerAutoSkipOpening => 'オープニングをスキップ';

  @override
  String get playerAutoSkipEnding => 'エンディングをスキップ';

  @override
  String get playerAutoSkipRecap => '総集編をスキップ';

  @override
  String get playerAutoSkipDesc => 'AniSkipと配信のタイムスタンプを使って、始まったらすぐ飛ばすよ';

  @override
  String get playerSkipOnce => 'スキップは1回だけ';

  @override
  String get playerSkipOnceDesc => 'その部分に戻ってシークしても、もう一度スキップしないよ';

  @override
  String get playerAdjustBrightness => '明るさのジェスチャー';

  @override
  String get playerAdjustBrightnessDesc => '画面の右半分で上下にスワイプ';

  @override
  String get playerAdjustVolume => '音量のジェスチャー';

  @override
  String get playerAdjustVolumeDesc => '画面の左半分で上下にスワイプ';

  @override
  String get playerHoldToSpeed => '長押しで倍速';

  @override
  String get playerHoldToSpeedDesc => '動画を長押しすると速く再生、横にドラッグすると速度を変更できるよ';

  @override
  String get playerThumbless => '太いシークバー';

  @override
  String get playerThumblessDesc => 'つまみのない太いバー';

  @override
  String get playerShowSubtitles => '字幕を表示';

  @override
  String get playerShowSubtitlesDesc => 'オフにすると、すべての字幕トラックを隠すよ';

  @override
  String get playerSubtitleLanguage => '字幕の優先言語';

  @override
  String get playerSubtitleSize => '字幕のサイズ';

  @override
  String get playerSubtitleWeight => '字幕の太さ';

  @override
  String get playerSubtitleBottom => '字幕の下の余白';

  @override
  String get playerSubtitleFont => '字幕のフォント';

  @override
  String get playerSubtitleColor => '字幕の色';

  @override
  String get playerSubtitleBackground => '字幕の背景';

  @override
  String get playerSubtitleOutline => '字幕の縁取り';

  @override
  String get playerLibass => 'libassを使う';

  @override
  String get playerLibassDesc => 'スタイル付きの.ass字幕を描画するよ。上のサイズ、色、フォントは使われなくなるよ';

  @override
  String get playerShaders => 'シェーダー';

  @override
  String get playerShadersEnable => 'シェーダーを有効にする';

  @override
  String get playerShadersEnableDesc =>
      'Anime4KなどのGLSLシェーダーで映像をアップスケール・きれいにするよ';

  @override
  String get playerShadersOff => 'シェーダーはオフ';

  @override
  String get playerShadersMissing => 'Anime4Kがインストールされてないよ';

  @override
  String get playerShadersMissingDesc =>
      '内蔵モードを使うには、Anime4Kのシェーダーパック（約0.8MB）をダウンロードしてね。';

  @override
  String get playerShadersDownload => 'Anime4Kをダウンロード';

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
  String get playerShadersPreview => 'このフレームでプレビュー';

  @override
  String get playerShadersUse => 'これを使う';

  @override
  String get playerPicture => '映像';

  @override
  String get playerColors => 'カラー';

  @override
  String get playerColorDefault => 'デフォルト';

  @override
  String get playerColorVivid => 'ビビッド';

  @override
  String get playerColorPop => 'アニメポップ';

  @override
  String get playerColorSoft => 'ソフト';

  @override
  String get playerColorCinematic => 'シネマ';

  @override
  String get playerColorBright => 'ブライト';

  @override
  String get playerColorNight => 'ナイト';

  @override
  String get playerColorMono => 'モノ';

  @override
  String get playerColorCustom => 'カスタム';

  @override
  String get playerColorBrightness => '明るさ';

  @override
  String get playerColorContrast => 'コントラスト';

  @override
  String get playerColorSaturation => '彩度';

  @override
  String get playerColorGamma => 'ガンマ';

  @override
  String get playerColorHue => '色相';

  @override
  String get playerColorReset => 'リセット';

  @override
  String get playerColorAdjust => '調整';

  @override
  String get playerShadersOriginal => 'オリジナル';

  @override
  String get playerShadersPreviewFailed => 'プレビュー用のフレームを取得できなかったよ';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'マイシェーダー';

  @override
  String get playerShadersCustom => 'カスタムシェーダー';

  @override
  String get playerShadersImport => '.glslをインポート';

  @override
  String get playerShadersNone => '自作の.glslや.hookファイルをインポートして、チェックを入れてつなげられるよ';

  @override
  String get playerShadersBadFile => '.glslか.hookのシェーダーファイルを選択';

  @override
  String get playerDecoder => 'デコーダー';

  @override
  String get playerDecoderAuto => '自動';

  @override
  String get playerDecoderAutoSafe => '自動（安全）';

  @override
  String get playerDecoderSoftware => 'ソフトウェア';

  @override
  String get playerDecoderHardware => 'ハードウェア';

  @override
  String get playerDecoderHardwarePlus => 'ハードウェア+';

  @override
  String get playerVideoOutput => '映像出力';

  @override
  String get playerAudioChannels => '音声チャンネル';

  @override
  String get playerBuffer => 'バッファサイズ（MB）';

  @override
  String get playerBufferDesc => 'ストリームのバッファにプレイヤーが使えるメモリ量';

  @override
  String get playerUseMpvConf => 'mpv.confを使う';

  @override
  String get playerUseMpvConfDesc => '再生開始時にmpv.confのオプションを適用するよ';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpvの設定を編集';

  @override
  String get playerMpvConfDesc =>
      '普通のmpv.confのように、1行に1オプション（例：--hwdec=auto）。[角かっこ]のプロファイルは無視されるよ。';

  @override
  String get playerMpvConfSaved => 'mpv.confを保存したよ';

  @override
  String get playerUseScripts => 'mpvスクリプトを使う';

  @override
  String get playerUseScriptsDesc =>
      'scriptsフォルダのプラグインを読み込むよ。LuaかJavaScriptに対応したlibmpvビルドが必要';

  @override
  String get playerScripts => 'mpvスクリプト';

  @override
  String get playerScriptsManage => 'プラグインの追加、削除、切り替え';

  @override
  String get playerScriptsAdd => 'スクリプトを追加';

  @override
  String get playerScriptsDesc =>
      'ここに置いたLua、JavaScript、ネイティブのプラグインは再生開始時に読み込まれるよ。';

  @override
  String get playerScriptsNone => 'まだスクリプトはないよ';

  @override
  String get playerScriptsBadFile => '.lua、.js、またはネイティブのプラグインファイルを選択';

  @override
  String get playerTuning => '高度な映像チューニング';

  @override
  String get playerTuningDesc =>
      '同期、キャッシュ、スケーリング、トーンマッピングを上書きするよ。値を間違えると再生に影響するかも';

  @override
  String get playerVideoSync => '映像の同期';

  @override
  String get playerInterpolation => 'フレーム補間';

  @override
  String get playerInterpolationDesc => '滑らかな動き。display-resample同期が必要';

  @override
  String get playerPitch => 'ピッチ補正';

  @override
  String get playerPitchDesc => 'ほかの速度でも声を自然に保つ';

  @override
  String get playerCacheSeconds => 'キャッシュ（秒）';

  @override
  String get playerReadahead => '先読み（秒）';

  @override
  String get playerThreads => 'デコーダースレッド数';

  @override
  String get playerDeband => 'デバンド';

  @override
  String get playerDebandDesc => 'グラデーションの色の段差を軽減';

  @override
  String get playerDebandIterations => 'デバンドの反復回数';

  @override
  String get playerDebandThreshold => 'デバンドのしきい値';

  @override
  String get playerCorrectDownscaling => '正確なダウンスケーリング';

  @override
  String get playerSigmoid => 'シグモイドアップスケーリング';

  @override
  String get playerScale => 'アップスケーラー';

  @override
  String get playerCscale => 'クロマアップスケーラー';

  @override
  String get playerDscale => 'ダウンスケーラー';

  @override
  String get playerToneMapping => 'トーンマッピング';

  @override
  String get playerTargetPeak => 'ターゲットピーク';

  @override
  String get playerOpenFiles => '動画ファイルを開く';

  @override
  String get playerOpenFilesDesc => 'この端末のファイルを再生';

  @override
  String get playerOpenFolder => 'フォルダを開く';

  @override
  String get playerOpenFolderDesc => 'フォルダ内の動画をすべてプレイリストとして再生';

  @override
  String get playerNetworkStream => 'ネットワークストリーム';

  @override
  String get playerNetworkStreamDesc => '動画の直接リンクかHLSリンクを開く';

  @override
  String get playerStreamUrl => 'ストリームURL';

  @override
  String get playerStreamReferer => 'Referer（任意）';

  @override
  String get playerTorrent => 'トレント';

  @override
  String get playerTorrentDesc => 'マグネットリンクや.torrentファイルをストリーミング';

  @override
  String get playerMagnetLink => 'マグネットリンクまたはトレントのURL';

  @override
  String get playerPickTorrent => '.torrentファイルを選択';

  @override
  String get playerTorrentMissing => '先に設定＞アドオンからトレントアドオンをインストールしてね';

  @override
  String get playerNoVideos => '再生できる動画が見つからないよ';

  @override
  String get playerReset => 'プレイヤー設定をリセット';

  @override
  String get playerResetDesc => 'プレイヤーのオプションをすべてデフォルトに戻す';

  @override
  String get playerResetConfirm => 'プレイヤー設定をすべてリセットする？';

  @override
  String get playerResetDone => 'プレイヤー設定をリセットしたよ';

  @override
  String get playerQuality => '画質';

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
  String get playerStreams => 'ストリーム';

  @override
  String get playerAutoSelect => 'ストリームを自動で選ぶ';

  @override
  String get playerAutoSelectDesc => 'この作品で前回選んだものにいちばん近いストリームを選ぶよ';

  @override
  String get playerLoadingStreams => 'ストリームを探してるよ…';

  @override
  String get playerNoStreams => 'このエピソードにはストリームがないよ';

  @override
  String get playerNoStreamsTitle => 'ストリームが見つからないよ';

  @override
  String get playerFailed => '再生に失敗したよ';

  @override
  String get playerTorrentNeeded => 'このストリームはトレントだよ';

  @override
  String get playerTorrentNeededDesc =>
      'マグネットリンクや.torrentファイルを再生するには、トレントアドオンをインストールしてね';

  @override
  String get playerOpenAddons => 'アドオンを開く';

  @override
  String get playerTryAnotherStream => '別のストリームを試す';

  @override
  String get playerEpisodes => 'エピソード';

  @override
  String get playerLock => '操作をロック';

  @override
  String get playerFullscreen => '全画面';

  @override
  String get readerChapters => 'チャプター';

  @override
  String get readerSettingsTitle => 'リーダーの設定';

  @override
  String get readerPreviousChapter => '前のチャプター';

  @override
  String get readerNextChapter => '次のチャプター';

  @override
  String get readerFirstChapter => 'これが最初のチャプターだよ';

  @override
  String get readerLastChapter => '全部読み終わったよ';

  @override
  String get readerFailed => 'このチャプターを開けなかったよ';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'このチャプターにはテキストがないよ';

  @override
  String get readerPerTitle => 'この作品だけ';

  @override
  String get readerPerTitleDesc => 'このリーダー設定をこの作品だけに使う';

  @override
  String get readerSectionReading => '閲覧';

  @override
  String get readerSectionControls => '操作';

  @override
  String get readerSectionDisplay => '表示';

  @override
  String get readerSectionNovel => 'ノベル';

  @override
  String get readerMode => '閲覧モード';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => '右から左';

  @override
  String get readerModeLtr => '左から右';

  @override
  String get readerModeVertical => '縦スクロールのページ';

  @override
  String get readerModeWebtoon => 'ウェブトゥーン';

  @override
  String get readerModeContinuous => '連続スクロール';

  @override
  String get readerScale => '画像のスケール';

  @override
  String get readerScaleFit => '画面に合わせる';

  @override
  String get readerScaleWidth => '幅に合わせる';

  @override
  String get readerScaleHeight => '高さに合わせる';

  @override
  String get readerScaleOriginal => '元のサイズ';

  @override
  String get readerScaleSmart => 'スマートフィット';

  @override
  String get readerDoublePage => '見開き';

  @override
  String get readerDoublePageDesc => '横向きのとき2ページを並べて表示';

  @override
  String get readerDoubleTapZoom => 'ダブルタップでズーム';

  @override
  String get readerDoubleTapZoomDesc => 'ダブルタップでページを拡大・縮小';

  @override
  String get readerAnimate => 'ページのアニメーション';

  @override
  String get readerAnimateDesc => 'ページめくりをアニメーションにする';

  @override
  String get readerSidePadding => '左右の余白';

  @override
  String get readerSidePaddingDesc => 'ページの横の余白（％）';

  @override
  String get readerPageGap => 'ページの間隔';

  @override
  String get readerPageGapDesc => 'ページ間の余白';

  @override
  String get readerAutoNext => '次のチャプターへ続ける';

  @override
  String get readerAutoNextDesc => 'このチャプターの終わりを読んでる間に次のチャプターを読み込む';

  @override
  String get readerPreload => 'ページを先読み';

  @override
  String get readerPreloadDesc => '先にダウンロードするページ数';

  @override
  String get readerTapZones => 'タップ領域';

  @override
  String get readerTapDefault => 'デフォルト';

  @override
  String get readerTapLShaped => 'L字型';

  @override
  String get readerTapKindle => 'Kindle風';

  @override
  String get readerTapEdge => '端のみ';

  @override
  String get readerTapOff => '無効';

  @override
  String get readerInvertTaps => 'タップ領域を反転';

  @override
  String get readerInvertTapsDesc => '前と次のエリアを入れ替える';

  @override
  String get readerBackground => '背景';

  @override
  String get readerBackgroundBlack => 'ブラック';

  @override
  String get readerBackgroundGray => 'グレー';

  @override
  String get readerBackgroundWhite => 'ホワイト';

  @override
  String get readerBackgroundTheme => 'アプリのテーマ';

  @override
  String get readerFilter => 'カラーフィルター';

  @override
  String get readerFilterNone => 'なし';

  @override
  String get readerFilterGrayscale => 'グレースケール';

  @override
  String get readerFilterInvert => '反転';

  @override
  String get readerFilterSepia => 'セピア';

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
  String get readerDim => '減光';

  @override
  String get readerDimDesc => 'ページを暗くする';

  @override
  String get readerPageNumber => 'ページ番号';

  @override
  String get readerPageNumberDesc => '読んでる間ページ番号を表示';

  @override
  String get readerFullscreen => '全画面';

  @override
  String get readerFullscreenDesc => 'システムバーを隠す';

  @override
  String get readerCropBorders => '余白をトリミング';

  @override
  String get readerCropBordersDesc => 'ページの白や黒の余白を切り取る';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => '音量キーでページめくり';

  @override
  String get readerVolumeKeysDesc => '音量ダウンで進む、音量アップで戻る';

  @override
  String get readerBookmarks => 'しおり';

  @override
  String get readerBookmarkAdd => 'しおりを追加';

  @override
  String get readerBookmarkRemove => 'しおりを削除';

  @override
  String get readerBookmarksEmpty => 'まだしおりはないよ';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$totalページ中$pageページ目';
  }

  @override
  String get readerAutoScroll => '自動スクロール';

  @override
  String get readerAutoScrollStop => '自動スクロールを停止';

  @override
  String get readerAutoScrollSpeed => '自動スクロールの速さ';

  @override
  String get readerAutoScrollSpeedDesc => 'ページが自動でスクロールまたはめくれる速さ';

  @override
  String get readerKeepOn => '画面をつけたままにする';

  @override
  String get readerKeepOnDesc => '読んでる間、画面が消えないようにする';

  @override
  String get readerOrientation => '画面の向き';

  @override
  String get readerOrientationFree => '自由';

  @override
  String get readerOrientationPortrait => '縦向き';

  @override
  String get readerOrientationLandscape => '横向き';

  @override
  String get readerSaveProgress => '進捗を保存';

  @override
  String get readerSaveProgressDesc => 'ページを覚えて、チャプターを読了にする';

  @override
  String get readerReset => 'リーダー設定をリセット';

  @override
  String get readerResetDesc => 'デフォルトに戻す';

  @override
  String get novelSize => '文字サイズ';

  @override
  String get novelFont => 'フォント';

  @override
  String get novelLineHeight => '行の高さ';

  @override
  String get novelParagraph => '段落の間隔';

  @override
  String get novelMargin => '余白';

  @override
  String get novelTheme => 'リーダーのテーマ';

  @override
  String get novelThemeApp => 'アプリのテーマ';

  @override
  String get novelThemeLight => 'ライト';

  @override
  String get novelThemeSepia => 'セピア';

  @override
  String get novelThemeDark => 'ダーク';

  @override
  String get novelThemeBlack => 'ブラック';

  @override
  String get novelJustify => '両端揃え';

  @override
  String get novelJustifyDesc => 'テキストを左右の端に揃える';

  @override
  String get trackProgressTitle => '進捗を保存する？';

  @override
  String trackProgressAnime(String name) {
    return '見ながら$nameをリストに記録する？「この端末のみ」だとローカルだけに保存、「いいえ」だと何も保存しないよ。';
  }

  @override
  String trackProgressManga(String name) {
    return 'チャプターを読み終わったら$nameをリストに記録する？「この端末のみ」だとローカルだけに保存、「いいえ」だと何も保存しないよ。';
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
  String get trackProgressYes => '保存';

  @override
  String get trackProgressReset => 'このタイプの進捗保存の確認をリセットしたよ。次回からまた聞くね';

  @override
  String get trackProgressNo => 'いいえ';

  @override
  String get trackProgressOff => 'オフ';

  @override
  String get trackProgressLocal => 'この端末のみ';

  @override
  String get trackProgressSettingAnime => 'アニメの進捗を記録';

  @override
  String get trackProgressSettingManga => 'マンガとノベルの進捗を記録';

  @override
  String get trackProgressSettingDesc => 'エピソードを開いたとき、またはチャプターを読み終えたときの動作';

  @override
  String get trackProgressAsk => '毎回聞く';

  @override
  String get trackProgressAlways => 'いつも';

  @override
  String get dantotsuImport => 'Dantotsuからインポート';

  @override
  String get dantotsuImportDesc =>
      'Dantotsuの設定バックアップを読み込む（.ani、または暗号化された.sani）';

  @override
  String get dantotsuPick => 'Dantotsuのバックアップを選択';

  @override
  String get dantotsuNothing => 'このファイルにはインポートできるものがないよ';

  @override
  String get dantotsuApply => '選択したものをインポート';

  @override
  String dantotsuDone(int done, int total) {
    return '$total件中$done件をインポートしたよ';
  }

  @override
  String get dantotsuGroupAccounts => 'アカウント';

  @override
  String get dantotsuGroupAppearance => '外観';

  @override
  String get dantotsuGroupExtensions => '拡張機能';

  @override
  String get dantotsuGroupApp => 'アプリ';

  @override
  String get dantotsuGroupPlayer => 'プレイヤー';

  @override
  String get dantotsuAnilist => 'AniListログイン';

  @override
  String get dantotsuMal => 'MyAnimeListログイン';

  @override
  String get dantotsuDiscord => 'Discord Rich Presenceトークン';

  @override
  String get dantotsuTheme => 'テーマ';

  @override
  String get dantotsuReposAnime => 'アニメ拡張機能のリポジトリ';

  @override
  String get dantotsuReposManga => 'マンガ拡張機能のリポジトリ';

  @override
  String get dantotsuReposNovel => 'ノベル拡張機能のリポジトリ';

  @override
  String get dantotsuUpdates => 'アップデートの確認';

  @override
  String get dantotsuComments => 'コメント';

  @override
  String get dantotsuActivity => 'AniList通知のポーリング';

  @override
  String get dantotsuDns => 'DNSプロバイダー';

  @override
  String get dantotsuPlayer => 'プレイヤーの速度と字幕の色';

  @override
  String get dantotsuWarning => 'このファイルにはログイントークンが入ってるよ。人に見せないでね。';

  @override
  String get novelIndent => '段落を字下げ';

  @override
  String get novelIndentDesc => '各段落の最初の行を字下げする';

  @override
  String get novelLetterSpacing => '文字間隔';

  @override
  String get novelSectionTranslate => '翻訳';

  @override
  String get sectionExperimental => '実験的機能';

  @override
  String get kitsuGraphqlDetail => '詳細ページを高速化（GraphQL）';

  @override
  String get kitsuGraphqlDetailDesc => '作品、キャラクター、スタッフ、自分のエントリーを1回のリクエストで読み込む';

  @override
  String get togetherTitle => 'いっしょに見る';

  @override
  String get togetherIntro =>
      '友達から届いたルームのリンクを貼り付けてね。すぐ参加して、友達が再生を始めるとプレイヤーが開くよ。';

  @override
  String get togetherName => 'あなたの名前';

  @override
  String get togetherConnecting => '接続中…';

  @override
  String get togetherLeave => 'ルームを抜ける';

  @override
  String get togetherYou => 'あなた';

  @override
  String get togetherNoChat => 'まだメッセージはないよ';

  @override
  String get togetherChatHint => 'メッセージ';

  @override
  String get togetherCopyInvite => '招待をコピー';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'サーバーとルームをコピーしたよ';

  @override
  String get togetherConnectionLost => '接続が切れたよ';

  @override
  String togetherConnectedTo(String room) {
    return '$roomに接続したよ';
  }

  @override
  String togetherFailed(String error) {
    return '接続できなかったよ：$error';
  }

  @override
  String togetherJoined(String name) {
    return '$nameが参加したよ';
  }

  @override
  String togetherLeft(String name) {
    return '$nameが退出したよ';
  }

  @override
  String togetherPaused(String name) {
    return '$nameが一時停止したよ';
  }

  @override
  String togetherResumed(String name) {
    return '$nameが再開したよ';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$nameが$timeにジャンプしたよ';
  }

  @override
  String get togetherFollowFailed => 'ホストのエピソードを開けなかったよ。自分で開いてね。';

  @override
  String get togetherJoinRole => 'ルームに参加';

  @override
  String get togetherOpenHost => 'ホストのエピソードを開く';

  @override
  String get togetherShowChat => 'ライブチャットを表示';

  @override
  String get togetherWaitingHost => 'ホストがエピソードを始めるのを待ってるよ';

  @override
  String get togetherRoomLink => 'ルームのリンク';

  @override
  String get togetherBadLink => 'ルームのリンクじゃないみたい';

  @override
  String get togetherHostClosed => 'ホストがルームを閉じたよ';

  @override
  String get togetherNowPlaying => '再生中';

  @override
  String togetherWatchingCount(int count) {
    return '$count人が視聴中';
  }

  @override
  String togetherWantsPause(String user) {
    return '$userが一時停止したがってるよ';
  }

  @override
  String togetherWantsResume(String user) {
    return '$userが再開したがってるよ';
  }

  @override
  String get togetherChip => 'いっしょに';

  @override
  String get togetherSettingsDesc => 'リンクで友達のルームに参加';

  @override
  String get novelBilingual => '原文と翻訳を表示';

  @override
  String get novelBilingualDesc => '各段落に原文を表示して、その下に翻訳を表示するよ';

  @override
  String get novelTranslateTo => '翻訳先';

  @override
  String get novelTranslateOff => 'オフ';

  @override
  String get novelSectionSpeech => '読み上げ';

  @override
  String get novelSpeechRate => '読み上げの速さ';

  @override
  String get novelSpeechPitch => '読み上げの高さ';

  @override
  String get novelSpeak => '声に出して読む';

  @override
  String get novelSpeakStop => '読み上げを停止';

  @override
  String get novelTranslate => 'チャプターを翻訳';

  @override
  String get novelTranslateShowOriginal => '原文を表示';

  @override
  String novelTranslateFailed(String error) {
    return '翻訳に失敗：$error';
  }

  @override
  String get novelSpeechUnavailable => 'この端末では読み上げが使えないよ';

  @override
  String get novelSpeechVoice => '音声';

  @override
  String get novelSpeechVoiceDefault => 'システムのデフォルト';

  @override
  String get novelSpeakPrevious => '前の行';

  @override
  String get novelSpeakNext => '次の行';

  @override
  String get novelTapPaging => '端をタップでページめくり';

  @override
  String get novelTapPagingDesc => '左右どちらかをタップで1ページスクロール、真ん中でコントロールを表示するよ';

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
    return '残り$count分';
  }

  @override
  String get novelBold => '太字';

  @override
  String get novelBoldDesc => '太めの文字にする';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapterを読み終わったよ';
  }

  @override
  String readerNextUp(String chapter) {
    return '次：$chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return '前：$chapter';
  }

  @override
  String get readerNoPages => 'このチャプターにはページがないよ';

  @override
  String get readerLoadingPages => 'ページを読み込み中…';

  @override
  String get readerSlowPage => 'このページをまだ読み込み中…';

  @override
  String get readerPageFailed => 'このページを読み込めなかったよ';

  @override
  String get playerShowComments => 'コメントを表示';

  @override
  String get playerHideComments => 'コメントを隠す';

  @override
  String get playerSubtitles => '字幕';

  @override
  String get playerSubtitlesOff => '字幕オフ';

  @override
  String get playerAudio => '音声';

  @override
  String get playerAddSubtitle => '字幕ファイルを追加';

  @override
  String get playerAddAudio => '音声ファイルを追加';

  @override
  String get playerChapters => 'チャプター';

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
  String get playerNoChapters => 'チャプターなし';

  @override
  String get playerTimestamp => 'タイムスタンプ';

  @override
  String get playerAutoPlayDelay => '次のエピソードのカウントダウン';

  @override
  String get playerWatchedAt => '視聴済みにする位置';

  @override
  String playerNextIn(int seconds) {
    return '$seconds秒後に次のエピソード';
  }

  @override
  String get playerPlayNow => '今すぐ再生';

  @override
  String playerAutoSkipOn(String name) {
    return '$name：この作品では自動でスキップするよ';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name：この作品では自動でスキップしないよ';
  }

  @override
  String get playerAudioLanguage => '優先する音声言語';

  @override
  String get playerLanguageOrderHint => '言語はカンマで区切ってね。最初に見つかったものを使うよ。';

  @override
  String get playerPip => 'ピクチャーインピクチャー';

  @override
  String get playerAutoPip => 'アプリを離れたらピクチャーインピクチャー';

  @override
  String get playerAutoPipDesc => 'アプリを離れても小さなウィンドウで再生を続ける';

  @override
  String playerAutoPlaying(String title) {
    return '次は$titleを再生するよ…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'シェーダーをインストールできなかったよ：$error';
  }

  @override
  String playerChapter(int number) {
    return '第$number章';
  }

  @override
  String get playerPerTitle => 'この作品だけ';

  @override
  String get playerPerTitleDesc => 'この作品にだけこのオプションを使って、デフォルトはそのままにするよ';

  @override
  String get playerSwapGestures => 'スワイプの左右を入れ替え';

  @override
  String get playerSwapGesturesDesc => '左で明るさ、右で音量';

  @override
  String get playerOpenBig => '大画面で開く';

  @override
  String get playerOpenBigDesc => 'エピソード一覧ではなく全画面でプレーヤーを開始';

  @override
  String get playerPauseOnBlur => 'フォーカスが外れたら一時停止';

  @override
  String get playerPauseOnBlurDesc => '通知パネルなどでアプリが隠れている間は一時停止して、戻ると再開';

  @override
  String get playerAudioOutput => '音声出力';

  @override
  String get fontAppDefault => 'アプリのフォント';

  @override
  String get fontImport => 'フォントをインポート';

  @override
  String get fontSample =>
      'いろはにほへと ちりぬるを The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => '字幕の遅延';

  @override
  String get playerAudioDelay => '音声の遅延';

  @override
  String get playerDelayReset => 'リセット';

  @override
  String get playerOnlineSubtitles => 'オンライン字幕';

  @override
  String get playerOnlineSearchHint => 'タイトルとエピソード';

  @override
  String get playerOnlineNone => '字幕が見つからないよ';

  @override
  String playerOnlineFailed(String error) {
    return '字幕の検索に失敗：$error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'この字幕をダウンロードできなかったよ：$error';
  }

  @override
  String get playerOnlineMatch => 'このファイルに一致';

  @override
  String get playerOnlineEpisode => 'エピソードが一致';

  @override
  String playerOnlineDownloads(int count) {
    return '$countダウンロード';
  }

  @override
  String get playerSeekPreview => 'シークのプレビュー';

  @override
  String get playerSeekPreviewDesc =>
      'シーク中にバーの上に小さなフレームのプレビューを表示するよ。低解像度のデコーダーをもう1つ開くから、ストリームでは通信量が増えるよ。';

  @override
  String get playerSettingsChip => '設定';

  @override
  String get playerAudioDevice => 'オーディオデバイス';

  @override
  String get settingsDownloads => 'ダウンロード';

  @override
  String get settingsDownloadsDesc => 'オフラインエピソード、キュー、オフラインモード';

  @override
  String get downloadsTitle => 'ダウンロード';

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
  String get downloadsOpenDesc => 'キューと、この端末に保存したものをすべて見る';

  @override
  String get downloadTitle => 'ダウンロード';

  @override
  String get downloadAlready => 'ダウンロード済み、またはキューに入ってるよ';

  @override
  String get downloadPickStream => 'どのストリームをダウンロードする？';

  @override
  String get downloadPickSubtitle => 'どの字幕をダウンロードする？';

  @override
  String get downloadPickAudio => 'どの音声トラックをダウンロードする？';

  @override
  String get downloadNoAudio => '追加の音声なし';

  @override
  String get downloadAudio => '音声';

  @override
  String get downloadNoSubtitle => '字幕なし';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'このストリームはHLSプレイリストだよ。ダウンロードにはFFmpegアドオンが必要。';

  @override
  String get downloadSourceMissing => 'このエピソードのソースがインストールされてないよ';

  @override
  String get downloadWaitingConnection => '接続を待ってるよ';

  @override
  String get downloadSubtitles => '字幕';

  @override
  String get downloadDownloaded => 'ダウンロード済み';

  @override
  String get downloadOffline => 'オフライン';

  @override
  String get downloadDelete => 'ダウンロードを削除';

  @override
  String get downloadCancel => 'キャンセル';

  @override
  String get downloadPause => '一時停止';

  @override
  String get downloadPaused => '一時停止中';

  @override
  String get downloadResume => '再開';

  @override
  String get downloadPauseAll => 'すべて一時停止';

  @override
  String get downloadResumeAll => 'すべて再開';

  @override
  String get downloadQueuedState => 'キューで待機中';

  @override
  String get downloadResolving => 'ストリームを取得中…';

  @override
  String get downloadUsedFallback => '一致するストリームがなかったから、最初のものを使ったよ';

  @override
  String get downloadTabQueue => 'キュー';

  @override
  String get downloadTabDone => '完了';

  @override
  String get downloadTabFailed => '失敗';

  @override
  String get downloadEmptyQueue => 'ダウンロード中のものはないよ';

  @override
  String get downloadEmptyDone => 'まだダウンロードしたものはないよ';

  @override
  String get downloadEmptyFailed => '失敗したダウンロードはないよ';

  @override
  String get downloadNext => '次のエピソード';

  @override
  String downloadNextN(int count) {
    return '次の$countエピソード';
  }

  @override
  String downloadUnwatched(int count) {
    return '未視聴をすべて（$count）';
  }

  @override
  String downloadRange(int count) {
    return 'この範囲（$count）';
  }

  @override
  String downloadAll(int count) {
    return 'すべてのエピソード（$count）';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countエピソードをキューに追加したよ',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$nameをダウンロードしたよ';
  }

  @override
  String downloadFailedBody(String name) {
    return '$nameのダウンロードに失敗したよ';
  }

  @override
  String downloadStorage(String size) {
    return 'ダウンロードで$size使用中';
  }

  @override
  String get downloadQueueHeader => 'キュー';

  @override
  String get downloadParallel => '同時ダウンロード数';

  @override
  String get downloadParallelDesc => '1つずつ、または複数を同時にダウンロード';

  @override
  String get downloadOneByOne => '1つずつ';

  @override
  String get downloadNotifications => 'ダウンロード通知';

  @override
  String get downloadNotificationsDesc =>
      'システムが対応していればリアルタイムで進捗を表示、それ以外はダウンロード完了時に通知するよ';

  @override
  String get downloadNotifyLive => 'リアルタイム';

  @override
  String get downloadNotifyDone => '完了時';

  @override
  String get downloadNotifyOff => 'オフ';

  @override
  String get downloadInfoFile => 'ダウンロードごとに情報ファイルを書き出す';

  @override
  String get downloadInfoFileDesc => 'ストリーム、画質、字幕、スキップ時間を小さな.jsonファイルに保存するよ';

  @override
  String get offlineHeader => 'オフライン';

  @override
  String get offlineModeDesc =>
      '「自動」は、接続なしでアプリを起動したときだけオフラインになるよ。「常に」は変えるまでオフラインのまま。';

  @override
  String get offlineModeOff => 'オフ';

  @override
  String get offlineModeAlways => '常に';

  @override
  String get offlineModeOn => 'オフラインモードがオンだよ。変更はここに保存されて、オンラインに戻ったら送信されるよ。';

  @override
  String get offlineSaved => 'この端末に保存したよ。オンラインになったら同期されるよ';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の変更を同期したよ',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の変更が同期待ち',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => '同期待ちの変更';

  @override
  String get offlinePendingNone => '待機中のものはないよ';

  @override
  String get offlineSyncNow => '今すぐ同期';

  @override
  String get offlineDiscard => '破棄';

  @override
  String get downloadNotOffline => 'このエピソードはダウンロードされてないから、オフラインでは使えないよ';

  @override
  String get offlineModeChip => 'オフライン';

  @override
  String get downloadNextChapter => '次のチャプター';

  @override
  String downloadNextChapters(int count) {
    return '次の$countチャプター';
  }

  @override
  String downloadUnread(int count) {
    return '未読をすべて（$count）';
  }

  @override
  String downloadAllChapters(int count) {
    return 'すべてのチャプター（$count）';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $totalページ';
  }

  @override
  String downloadPagesCount(int count) {
    return '$countページ';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpegアドオンが必要';

  @override
  String get downloadFfmpegBody =>
      'このストリームはHLSプレイリストだよ。FFmpegアドオンが断片を1つのmp4ファイルにつなげるよ。ないと、断片はエピソードのフォルダに残って、そこから再生されるよ。';

  @override
  String get downloadFfmpegInstall => 'インストール';

  @override
  String get downloadFfmpegInstalling => 'FFmpegをインストール中。少し時間がかかるよ…';

  @override
  String get downloadFinishing => '断片を1つのファイルにつなげてるよ…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $totalパート';
  }

  @override
  String get downloadTorrentNoFile => 'このトレントにはダウンロードできる動画ファイルがないよ';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件をダウンロード中',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => '視聴済みのダウンロードを削除';

  @override
  String get downloadAutoDeleteDesc => '進捗がそのエピソードやチャプターに達したら、ダウンロードを削除するよ';

  @override
  String get downloadConnections => 'ダウンロードごとの接続数';

  @override
  String get downloadConnectionsDesc =>
      '大きなファイルを分割して同時に取得するよ。サーバーによっては制限されてるよ。';

  @override
  String get downloadPlayChoice => '再生元';

  @override
  String get downloadPlayLocalDesc => 'この端末に保存したファイル';

  @override
  String get downloadPlayStream => 'オンラインでストリーミング';

  @override
  String get downloadPlayStreamDesc => 'ソースからエピソードを読み込む';

  @override
  String get offlineFeedTitle => 'この端末にダウンロード済み';

  @override
  String get offlineFeedEmpty => 'オンラインのときに何かダウンロードすると、ここに表示されるよ';

  @override
  String get offlineEnabled => 'オフラインモードはオンだよ';

  @override
  String get offlineDisabled => 'オフラインモードはオフだよ';

  @override
  String get downloadReadChoice => '読む場所';

  @override
  String get downloadReadLocalDesc => 'この端末に保存したページ';

  @override
  String get downloadReadOnline => 'オンラインで読む';

  @override
  String get downloadReadOnlineDesc => 'ソースからチャプターを読み込む';

  @override
  String downloadDeleteConfirm(String name) {
    return '$nameをこの端末から削除する？';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$nameのダウンロードをキャンセルする？ダウンロード済みの分は削除されるよ。';
  }

  @override
  String get downloadFfmpegFolder => 'フォルダのまま残す';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '送信されてない$count件の変更を破棄する？元には戻せないよ。',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fiを待ってるよ';

  @override
  String get downloadWaitingMetered => '従量制接続のため一時停止中';

  @override
  String get downloadWifiOnly => 'Wi-Fiのみ';

  @override
  String get downloadWifiOnlyDesc => 'モバイルデータ中は、ダウンロードを待機するよ';

  @override
  String get downloadMetered => '従量制接続では一時停止';

  @override
  String get downloadMeteredDesc => '端末が従量制とみなしてるWi-Fiでも待機するよ';

  @override
  String get downloadSpeedLimit => '速度制限';

  @override
  String get downloadSpeedLimitDesc => 'ダウンロード速度の合計に上限をつけるよ';

  @override
  String get downloadUnlimited => '無制限';

  @override
  String get downloadMoveToTop => '一番上に移動';

  @override
  String downloadSwarm(int seeds, int peers) {
    return 'シード$seeds · ピア$peers';
  }

  @override
  String get downloadTorrentFile => 'どのファイル？';

  @override
  String get downloadTorrentAuto => 'エピソードを自動で照合';

  @override
  String get downloadTorrentLoading => 'トレントを読み込み中…';

  @override
  String get watchAutoSource => '次のソースに自動で切り替える';

  @override
  String get watchAutoSourceDesc =>
      'ソースで作品が見つからない、または読み込みに失敗したら、次にインストール済みのソースを試すよ';

  @override
  String get extensionTest => '拡張機能をテスト';

  @override
  String get extensionTestCopy => '失敗とそのログをコピー';

  @override
  String get extensionTestQuery => '検索ワード';

  @override
  String get extensionTestRun => '実行';

  @override
  String get extensionTestStop => '停止';

  @override
  String get extensionTestNone => 'このタイプのインストール済み拡張機能はないよ';

  @override
  String get extensionTestNotRun => 'まだテストしてないよ';

  @override
  String get extensionTestSearch => '検索';

  @override
  String get extensionTestDetail => '詳細';

  @override
  String get extensionTestUnits => 'エピソード／チャプター';

  @override
  String get extensionTestLinks => 'ストリーム／ページ';

  @override
  String extensionTestFailedAt(String step) {
    return '$stepで失敗';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total件中$done件テスト · 成功$passed · 失敗$failed';
  }

  @override
  String get extensionTestCopyLogs => '完全なログつきですべてコピー';

  @override
  String get onboardingFeaturesTitle => 'ぜんぶ、ここに';

  @override
  String get onboardingFeaturesBody => '記録も視聴も読書も、アプリを行き来せずにまとめて。';

  @override
  String get onboardingFeatureTrack => 'ぜんぶ記録';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList、MyAnimeList、Simkl、Kitsu、MangaBakaでリスト、進捗、スコアを管理。';

  @override
  String get onboardingFeatureWatch => '見る＆読む';

  @override
  String get onboardingFeatureWatchDesc =>
      '拡張機能を入れて、アニメのストリーミングやマンガ・ノベルの閲覧をアプリ内で。';

  @override
  String get onboardingFeatureOffline => 'オフラインでも';

  @override
  String get onboardingFeatureOfflineDesc =>
      'エピソードやチャプターをダウンロードして、接続なしでも続きを楽しめるよ。';

  @override
  String get onboardingFeatureSync => 'リストを同期';

  @override
  String get onboardingFeatureSyncDesc =>
      'サービス間でリストをミラーリング。進んでるほうを優先することもできるよ。';

  @override
  String get onboardingServices => '対応サービス';

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
