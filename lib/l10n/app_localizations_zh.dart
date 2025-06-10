// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => '全新最佳应用\n追踪动漫和漫画';

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
  String get login => '登录';

  @override
  String loginTo(String service) {
    return '登录到 $service';
  }

  @override
  String logout(String type) {
    return '退出登录 $type';
  }

  @override
  String get confirmLogout => '确认退出?';

  @override
  String get anime => '动漫';

  @override
  String get manga => '漫画';

  @override
  String get manhwa => '韩漫';

  @override
  String get manhua => '中文漫画';

  @override
  String get novel => '小说';

  @override
  String get ln => '轻小说';

  @override
  String get home => '首页';

  @override
  String get search => '搜索';

  @override
  String get calendar => '日历';

  @override
  String get settings => '设置';

  @override
  String get watch => '观看';

  @override
  String get read => '阅读';

  @override
  String get info => '信息';

  @override
  String get comments => '评论';

  @override
  String get addToList => '加入列表';

  @override
  String get series => '系列';

  @override
  String get season => '季';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '剧集',
      one: '剧集',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '章节',
      one: '章节',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '卷',
      one: '卷',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '电影',
      one: '电影',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => '总集数';

  @override
  String get totalChapters => '总章节数';

  @override
  String get genres => '类型';

  @override
  String get scanlators => '翻译组';

  @override
  String list(String type) {
    return '$type 列表';
  }

  @override
  String get watching => '观察';

  @override
  String get reading => '阅读';

  @override
  String get readStatus => '阅读';

  @override
  String get watchStatus => '观察';

  @override
  String planned(String type) {
    return '计划中 $type';
  }

  @override
  String onHold(String type) {
    return '暂缓 $type';
  }

  @override
  String get droppedAnime => '已弃番剧';

  @override
  String get droppedManga => '已弃漫画';

  @override
  String noDropped(String type) {
    return '您尚未删除任何 $type。';
  }

  @override
  String get continueReading => '继续阅读';

  @override
  String get continueWatching => '继续观看';

  @override
  String browse(String type) {
    return '浏览 $type';
  }

  @override
  String trending(String type) {
    return '趋势 $type';
  }

  @override
  String popular(String type) {
    return '热门 $type';
  }

  @override
  String get topAiring => '本季热播';

  @override
  String topRated(String type) {
    return '最高评分 $type';
  }

  @override
  String mostFavourite(String type) {
    return '最受欢迎 $type';
  }

  @override
  String get thisSeason => '本季';

  @override
  String get nextSeason => '下季';

  @override
  String get previousSeason => '上一季';

  @override
  String get recommended => '推荐';

  @override
  String get recommendationsEmptyMessage => '暂无推荐';

  @override
  String get recentUpdates => '最近更新';

  @override
  String get allCaughtUpNew => '所有人都被抓住,什么是新?';

  @override
  String favorite(String type) {
    return '收藏 $type';
  }

  @override
  String get favorites => '收藏';

  @override
  String get noFavourites => '看来你什么都不喜欢\n尝试喜欢某个节目并将其保留在这里。';

  @override
  String get noOnHold => '看来你还没有搁置任何事情。';

  @override
  String manageLayout(String service, String page) {
    return '管理 $service 的 $page 页面布局';
  }

  @override
  String manageLayoutDescription(String page) {
    return '您可以通过拖放项目来管理 $page 页面的布局';
  }

  @override
  String get gridView => '网格视图';

  @override
  String get listView => '列表视图';

  @override
  String get compactView => '紧凑视图';

  @override
  String get layout => '布局';

  @override
  String get sort => '排序';

  @override
  String get utd => '更新日期';

  @override
  String get dtu => '下载更新';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => '已观看集数';

  @override
  String get chapterRead => '已阅读章节';

  @override
  String get outOf => '页: 1';

  @override
  String get totalOf => '共计';

  @override
  String get selected => '选';

  @override
  String get found => '创始人';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '扩展名',
      one: '扩展名',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '可用 $type';
  }

  @override
  String installed(String type) {
    return '已安装 $type';
  }

  @override
  String get extensionsDescription => '安装并管理扩展以增加功能';

  @override
  String get addAnimeRepo => '添加动漫库';

  @override
  String get addAnimeRepoDesc => '不同来源的Anime Repo';

  @override
  String get addMangaRepo => '添加漫画库';

  @override
  String get addMangaRepoDesc => 'Add Manga 不同来源的传承';

  @override
  String get addNovelRepo => '纽约总部';

  @override
  String get addNovelRepoDesc => '从各种来源添加小说 Repo';

  @override
  String get loadExtensionsIcon => '延期';

  @override
  String get loadExtensionsIconDesc => '如果延长页滞后,可处理';

  @override
  String get autoUpdate => 'A. 自动更新';

  @override
  String get autoUpdateDesc => 'A. 自动更新延期';

  @override
  String get installSourceToStart => '从延长页到开始';

  @override
  String get author => '作者';

  @override
  String get averageDuration => '平均时长';

  @override
  String get characters => '角色';

  @override
  String get description => '描述';

  @override
  String get synopsis => '简介';

  @override
  String get endDate => '结束日期';

  @override
  String get format => '格式';

  @override
  String get meanScore => '平均评分';

  @override
  String get name => '名称';

  @override
  String get nameRomaji => '罗马字名称';

  @override
  String get popularity => '人气';

  @override
  String get relations => '关系';

  @override
  String get prequel => '前传';

  @override
  String get sequel => '续集';

  @override
  String get source => '来源';

  @override
  String get staff => '工作人员';

  @override
  String get startDate => '开始日期';

  @override
  String get status => '状态';

  @override
  String get studio => '工作室';

  @override
  String get synonyms => '同义词';

  @override
  String get tags => '标签';

  @override
  String get total => '总数';

  @override
  String get collapseText => '收起';

  @override
  String get expandText => '展开';

  @override
  String get comingSoon => '即将推出';

  @override
  String get wrongTitle => '标题?';

  @override
  String get youTube => '在YouTube举办活动?';

  @override
  String get mediaNotFound => '未发现的媒体';

  @override
  String get noChapterFound => '无章可查';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '活动',
      one: '活动',
    );
    return '$_temp0';
  }

  @override
  String get language => '语言';

  @override
  String get account => '账户';

  @override
  String get accountDescription => '轻松管理你的AniList、MAL和Discord账户';

  @override
  String get common => '常规';

  @override
  String get commonDescription => '访问常规设置以便顺畅使用应用';

  @override
  String get animeDescription => '个性化并管理你的动漫偏好';

  @override
  String get mangaDescription => '组织并定制你的漫画体验';

  @override
  String get about => '关于';

  @override
  String get aboutDescription => '了解更多关于应用和它的创作者';

  @override
  String get notifications => '通知';

  @override
  String get notificationsDescription => '配置你如何以及何时接收通知';

  @override
  String get offlineMode => '离线模式';

  @override
  String get offlineModeDescription => '在没有互联网连接的情况下使用应用';

  @override
  String get incognitoMode => '隐身模式';

  @override
  String get incognitoModeDescription => '浏览时不保存活动记录';

  @override
  String get hidePrivate => '隐藏私密';

  @override
  String get hidePrivateDescription => '从主页隐藏私人系列。';

  @override
  String get hiddenMedia => '隐藏的媒体';

  @override
  String get noHiddenMediaFound => '没有找到隐藏的媒体';

  @override
  String get playerSettingsTitle => '播放器设置';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => '速度';

  @override
  String get speedDescription => '播放器的默认速度';

  @override
  String get cursedSpeed => '诅咒速度';

  @override
  String get cursedSpeedDescription => '适合忙碌的人';

  @override
  String get resizeMode => '调整模式';

  @override
  String get resizeModeDescription => '播放器的默认调整模式';

  @override
  String get skipButton => '跳过按钮';

  @override
  String get skipButtonDescription => '跳过按钮持续时间';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => '字幕';

  @override
  String get showSubtitles => '显示字幕';

  @override
  String get showSubtitlesDescription => '默认显示字幕';

  @override
  String get subtitlePreview => '字幕预览';

  @override
  String get fontColor => '字体颜色';

  @override
  String get fontColorDescription => '字幕字体颜色';

  @override
  String get fontFamily => '字体';

  @override
  String get fontFamilyDescription => '字幕字体类型';

  @override
  String get fontSize => '字体大小';

  @override
  String get fontSizeDescription => '字幕字体大小';

  @override
  String get fontWeight => '字体粗细';

  @override
  String get fontWeightDescription => '字幕字体粗细';

  @override
  String get backgroundColor => '背景颜色';

  @override
  String get backgroundColorDescription => '字幕背景颜色';

  @override
  String get outlineColor => '轮廓颜色';

  @override
  String get outlineColorDescription => '字幕轮廓颜色';

  @override
  String get bottomPadding => '底部间距';

  @override
  String get bottomPaddingDescription => '字幕底部间距';

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
  String get theme => '主题';

  @override
  String get themeDescription => '自定义应用的外观和氛围';

  @override
  String get darkMode => '深色模式';

  @override
  String get enableDarkMode => '启用深色模式';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => '使用与墙纸相同的颜色';

  @override
  String get customTheme => '自定义主题';

  @override
  String get customThemeDescription => '使用你自己的颜色作为主题';

  @override
  String get oledThemeVariant => 'OLED主题变体';

  @override
  String get oledThemeVariantDescription => '启用OLED模式';

  @override
  String get colorPicker => '颜色选择器';

  @override
  String get pickColor => '选择颜色';

  @override
  String get colorPickerDescription => '选择一个颜色';

  @override
  String get colorPickerDefault => '违约';

  @override
  String get colorPickerCustom => '习俗';

  @override
  String get customPath => '习俗之路';

  @override
  String get customPathDescription => '2. 确立一条习俗,以挽救档案\n长期停业';

  @override
  String get selectDirectory => '选择名录';

  @override
  String get selectMediaService => '选择媒体服务';

  @override
  String get logFile => '记录';

  @override
  String get logFileDescription => '分享记录档案';

  @override
  String get restoreSettings => '恢复设置';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => '网站';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer => '想要支持Dartotsu的维护者吗？\n考虑捐赠';

  @override
  String get donationGoal => '目前没有捐赠目标';

  @override
  String get options => '选项';

  @override
  String get ok => '确定';

  @override
  String get cancel => '取消';

  @override
  String get yes => '是';

  @override
  String get no => '否';
}
