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
  String get appTagline => '新しいベストアプリ\nアニメ・マンガの追跡';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'ログイン';

  @override
  String loginTo(String service) {
    return '$serviceにログイン';
  }

  @override
  String logout(String type) {
    return 'ログアウト $type';
  }

  @override
  String get confirmLogout => 'ログアウトしてもよろしいですか？';

  @override
  String get anime => 'アニメ';

  @override
  String get manga => 'マンガ';

  @override
  String get manhwa => 'ログイン';

  @override
  String get manhua => 'ログイン';

  @override
  String get novel => 'ノベル';

  @override
  String get ln => 'ライトノベル';

  @override
  String get home => 'ホーム >';

  @override
  String get search => 'インフォメーション';

  @override
  String get calendar => 'カレンダー';

  @override
  String get settings => '設定';

  @override
  String get watch => 'ウォッチ';

  @override
  String get read => '採用情報';

  @override
  String get info => 'インフォメーション';

  @override
  String get comments => 'コメント';

  @override
  String get addToList => 'リストに追加';

  @override
  String get series => 'シリーズ';

  @override
  String get season => 'シーズン';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'エピソード',
      one: 'エピソード',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '章',
      one: '章',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ボリューム',
      one: '音量',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '映画',
      one: '映画',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'エピソード';

  @override
  String get totalChapters => 'チャプター';

  @override
  String get genres => 'ジャンル';

  @override
  String get scanlators => 'スキャナレーター';

  @override
  String list(String type) {
    return '$type 一覧';
  }

  @override
  String get watching => 'ウォッチング';

  @override
  String get reading => '読書';

  @override
  String get readStatus => '採用情報';

  @override
  String get watchStatus => 'ウォッチ';

  @override
  String planned(String type) {
    return '予定 $type';
  }

  @override
  String onHold(String type) {
    return 'ホールドで $type';
  }

  @override
  String get droppedAnime => 'アニメをドロップ';

  @override
  String get droppedManga => 'マンガをドロップ';

  @override
  String noDropped(String type) {
    return 'まだ$typeを落としません.';
  }

  @override
  String get continueReading => '続きを読む';

  @override
  String get continueWatching => '続きを見る';

  @override
  String browse(String type) {
    return 'ブラウズ $type';
  }

  @override
  String trending(String type) {
    return 'トレンド $type';
  }

  @override
  String popular(String type) {
    return '人気 $type';
  }

  @override
  String get topAiring => 'トップエアリング';

  @override
  String topRated(String type) {
    return 'トップ定格$type';
  }

  @override
  String mostFavourite(String type) {
    return 'ほとんどのお気に入り $type';
  }

  @override
  String get thisSeason => '今シーズン';

  @override
  String get nextSeason => '次のシーズン';

  @override
  String get previousSeason => '過去のシーズン';

  @override
  String get recommended => 'おすすめ商品';

  @override
  String get recommendationsEmptyMessage => 'いくつかのアニメやマンガを読んで、推薦を得る';

  @override
  String get recentUpdates => '最近の更新';

  @override
  String get allCaughtUpNew => '巻き込まれたもの、新しいものは何ですか?';

  @override
  String favorite(String type) {
    return 'お気に入り $type';
  }

  @override
  String get favorites => 'お気に入り';

  @override
  String get noFavourites => '何も気にせず、\nここを保ち続けるためのショーを好みましょう.';

  @override
  String get noOnHold => 'ホールドに何も入れていないように見えます.';

  @override
  String manageLayout(String service, String page) {
    return '$pageページレイアウトを管理 $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'アイテムのドラッグ&ドロップで$pageページ用のレイアウトを管理できます';
  }

  @override
  String get gridView => 'グリッドビュー';

  @override
  String get listView => 'リストビュー';

  @override
  String get compactView => 'コンパクトビュー';

  @override
  String get layout => 'レイアウト';

  @override
  String get sort => 'ツイート';

  @override
  String get utd => 'ダウンまで';

  @override
  String get dtu => 'アップダウン';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'エピソード 観戦';

  @override
  String get chapterRead => '章の読み';

  @override
  String get outOf => 'お問い合わせ';

  @override
  String get totalOf => '総計数';

  @override
  String get selected => '選択する';

  @override
  String get found => '新着情報';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '拡張機能',
      one: '拡大',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '利用可能な $type';
  }

  @override
  String installed(String type) {
    return 'インストール $type';
  }

  @override
  String get extensionsDescription => '機能を追加するために拡張機能をインストールして管理';

  @override
  String get addAnimeRepo => 'アニメレポを追加';

  @override
  String get addAnimeRepoDesc => 'さまざまなソースからアニメレポを追加';

  @override
  String get addMangaRepo => 'マンガレポを追加';

  @override
  String get addMangaRepoDesc => 'マンガを追加 さまざまなソースからのレポ';

  @override
  String get addNovelRepo => 'ノベルレポを追加';

  @override
  String get addNovelRepoDesc => 'さまざまなソースからNovel Repoを追加';

  @override
  String get loadExtensionsIcon => 'ロードエクステンションアイコン';

  @override
  String get loadExtensionsIconDesc => '拡張ページが遅れた場合は無効';

  @override
  String get autoUpdate => '自動更新';

  @override
  String get autoUpdateDesc => '自動更新延長';

  @override
  String get installSourceToStart => '拡張子ページからソースをインストールして起動します';

  @override
  String get author => 'プロフィール';

  @override
  String get averageDuration => '平均期間';

  @override
  String get characters => 'キャラクター';

  @override
  String get description => 'シンプシス';

  @override
  String get synopsis => 'シンプシス';

  @override
  String get endDate => '終了日';

  @override
  String get format => 'フォーマット';

  @override
  String get meanScore => '平均スコア';

  @override
  String get name => 'お名前 (必須)';

  @override
  String get nameRomaji => 'お名前(ローマ字)';

  @override
  String get popularity => '人気カテゴリー';

  @override
  String get relations => 'インフォメーション';

  @override
  String get prequel => 'インフォメーション';

  @override
  String get sequel => 'インフォメーション';

  @override
  String get source => 'ソース';

  @override
  String get staff => 'スタッフ';

  @override
  String get startDate => '開始日';

  @override
  String get status => 'ステータス';

  @override
  String get studio => 'スタジオ';

  @override
  String get synonyms => '同義語';

  @override
  String get tags => 'ニュース';

  @override
  String get total => '合計:';

  @override
  String get collapseText => 'より少ないショー';

  @override
  String get expandText => 'もっと見る';

  @override
  String get comingSoon => 'SOON(ソノン)';

  @override
  String get wrongTitle => '間違ったタイトル?';

  @override
  String get youTube => 'YouTubeで再生する?';

  @override
  String get mediaNotFound => 'メディアが見つかりません';

  @override
  String get noChapterFound => 'チャプターが見つかりません';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '活動',
      one: '活動',
    );
    return '$_temp0';
  }

  @override
  String get language => '用語集';

  @override
  String get account => 'アカウント';

  @override
  String get accountDescription => 'AniList、MAL、Discordアカウントを簡単に管理';

  @override
  String get common => '共通';

  @override
  String get commonDescription => 'アプリの使用を円滑にするための一般設定';

  @override
  String get animeDescription => 'アニメの設定を個別に管理し、パーソナライズする';

  @override
  String get mangaDescription => 'マンガ体験を整理し、カスタマイズする';

  @override
  String get about => '概要';

  @override
  String get aboutDescription => 'アプリとその開発者についてもっと学ぶ';

  @override
  String get notifications => '通知';

  @override
  String get notificationsDescription => '通知を受け取る方法とタイミングを設定';

  @override
  String get offlineMode => 'オフラインモード';

  @override
  String get offlineModeDescription => 'インターネット接続なしでアプリを使用する';

  @override
  String get incognitoMode => 'インコグニートモード';

  @override
  String get incognitoModeDescription => 'アクティビティを保存せずにブラウズする';

  @override
  String get hidePrivate => 'プライベートを非表示';

  @override
  String get hidePrivateDescription => 'ホームページからプライベートシリーズを隠す.';

  @override
  String get hiddenMedia => '隠された媒体';

  @override
  String get noHiddenMediaFound => '隠れたメディアが見つかりません';

  @override
  String get playerSettingsTitle => 'プレイヤー設定';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'スピード';

  @override
  String get speedDescription => 'プレイヤーのデフォルトスピード';

  @override
  String get cursedSpeed => '呪われたスピード';

  @override
  String get cursedSpeedDescription => '人生に忙しい人のためのスピード';

  @override
  String get resizeMode => 'リサイズモード';

  @override
  String get resizeModeDescription => 'プレイヤーのデフォルトリサイズモード';

  @override
  String get skipButton => 'スキップボタン';

  @override
  String get skipButtonDescription => 'スキップボタンの表示時間';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => '字幕';

  @override
  String get showSubtitles => '字幕を表示';

  @override
  String get showSubtitlesDescription => 'デフォルトで字幕を表示';

  @override
  String get subtitlePreview => '字幕プレビュー';

  @override
  String get fontColor => 'フォント色';

  @override
  String get fontColorDescription => '字幕のフォント色';

  @override
  String get fontFamily => 'フォントファミリー';

  @override
  String get fontFamilyDescription => '字幕のフォントファミリー';

  @override
  String get fontSize => 'フォントサイズ';

  @override
  String get fontSizeDescription => '字幕のフォントサイズ';

  @override
  String get fontWeight => 'フォントウェイト';

  @override
  String get fontWeightDescription => '字幕のフォントウェイト';

  @override
  String get backgroundColor => '背景色';

  @override
  String get backgroundColorDescription => '字幕の背景色';

  @override
  String get outlineColor => 'アウトライン色';

  @override
  String get outlineColorDescription => '字幕のアウトライン色';

  @override
  String get bottomPadding => '下部パディング';

  @override
  String get bottomPaddingDescription => '字幕の下部パディング';

  @override
  String get readerSettings => 'Reader Settings';

  @override
  String get readerSettingsDesc => 'Change reader settings';

  @override
  String get spacedPages => 'Spaced Pages';

  @override
  String get spacedPagesDesc => 'Add space between pages';

  @override
  String get hideScrollbar => 'Hide Scrollbar';

  @override
  String get hideScrollbarDesc => 'Hide scrollbar while reading';

  @override
  String get hidePageNumber => 'Hide Page Number';

  @override
  String get hidePageNumberDesc => 'Hide page number while reading';

  @override
  String get theme => 'テーマ';

  @override
  String get themeDescription => 'アプリの外観と雰囲気をカスタマイズする';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get enableDarkMode => 'ダークモードを有効にする';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => '壁紙と同じ色を使用する';

  @override
  String get customTheme => 'カスタムテーマ';

  @override
  String get customThemeDescription => 'テーマに自分の色を使用する';

  @override
  String get oledThemeVariant => 'OLEDテーマバリアント';

  @override
  String get oledThemeVariantDescription => 'OLEDモードを有効にする';

  @override
  String get colorPicker => 'カラーピッカー';

  @override
  String get pickColor => '色を選ぶ';

  @override
  String get colorPickerDescription => '色を選択する';

  @override
  String get colorPickerDefault => 'デフォルト';

  @override
  String get colorPickerCustom => 'カスタム';

  @override
  String get customPath => 'カスタムパス';

  @override
  String get customPathDescription => 'ファイルを保存するカスタムパスを設定する\n長い出版物は取除きます';

  @override
  String get selectDirectory => 'ディレクトリを選択';

  @override
  String get selectMediaService => 'メディアサービスの選択';

  @override
  String get logFile => 'ログファイル';

  @override
  String get logFileDescription => 'ログファイルを共有する';

  @override
  String get restoreSettings => '設定を復元';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ウェブビュー';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer => 'Dartotsuのメンテナーを支援したいですか？\n寄付を検討してください';

  @override
  String get donationGoal => '現在寄付目標はありません';

  @override
  String get options => 'オプション';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'キャンセル';

  @override
  String get yes => 'はい';

  @override
  String get no => 'いいえ';
}
