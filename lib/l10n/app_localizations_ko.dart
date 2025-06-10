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
  String get appTagline => '새로운 앱\n애니메이션 & 만화';

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
  String get login => '로그인';

  @override
  String loginTo(String service) {
    return '로그인 $service';
  }

  @override
  String logout(String type) {
    return '로그아웃 $type';
  }

  @override
  String get confirmLogout => '정말로 로그아웃 하시겠습니까?';

  @override
  String get anime => '애니메이션';

  @override
  String get manga => '만화';

  @override
  String get manhwa => '언어: 한국어';

  @override
  String get manhua => '언어: 한국어';

  @override
  String get novel => '이름 *';

  @override
  String get ln => '빛 Novel';

  @override
  String get home => '(주)';

  @override
  String get search => '제품정보';

  @override
  String get calendar => '(주)';

  @override
  String get settings => '설정';

  @override
  String get watch => '제품정보';

  @override
  String get read => '...에서';

  @override
  String get info => '- 한국어';

  @override
  String get comments => '이름 *';

  @override
  String get addToList => '기타 제품';

  @override
  String get series => '제품정보';

  @override
  String get season => '【특전】';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '에피소드',
      one: '삽화',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '챕터',
      one: '장',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '볼륨',
      one: '용량',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '영화 산업',
      one: '영화',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => '인기 있는';

  @override
  String get totalChapters => '한국어';

  @override
  String get genres => '이름 *';

  @override
  String get scanlators => '검사기';

  @override
  String list(String type) {
    return '$type 목록';
  }

  @override
  String get watching => '공지사항';

  @override
  String get reading => '이름 *';

  @override
  String get readStatus => '...에서';

  @override
  String get watchStatus => '관련 기사';

  @override
  String planned(String type) {
    return '계획 $type';
  }

  @override
  String onHold(String type) {
    return '홀딩 $type';
  }

  @override
  String get droppedAnime => '콘텐츠 삭제';

  @override
  String get droppedManga => '옷을 벗은 만화';

  @override
  String noDropped(String type) {
    return '아직 $type를 떨어뜨리지 않았습니다.';
  }

  @override
  String get continueReading => '계속 읽기';

  @override
  String get continueWatching => '계속 시청';

  @override
  String browse(String type) {
    return '검색 $type';
  }

  @override
  String trending(String type) {
    return '동향 $type';
  }

  @override
  String popular(String type) {
    return '인기 $type';
  }

  @override
  String get topAiring => '맨 위로';

  @override
  String topRated(String type) {
    return '최고 정격 $type';
  }

  @override
  String mostFavourite(String type) {
    return '대부분의 Favourite $type';
  }

  @override
  String get thisSeason => '이 시즌';

  @override
  String get nextSeason => '다음 시즌';

  @override
  String get previousSeason => '이전 시즌';

  @override
  String get recommended => '(주)';

  @override
  String get recommendationsEmptyMessage => '일부 애니메이션 또는 만화를보고 권고 받기';

  @override
  String get recentUpdates => '최근 업데이트';

  @override
  String get allCaughtUpNew => '모든 잡은, 무엇 새로운?';

  @override
  String favorite(String type) {
    return '마음에 드는 $type';
  }

  @override
  String get favorites => '이름 *';

  @override
  String get noFavourites => '아무것도 좋아하지 않는 것 같은 것,\n그것을 유지하는 쇼를 시도해보십시오.';

  @override
  String get noOnHold => '당신이 파악에 아무것도 넣지 않는 것처럼 보입니다.';

  @override
  String manageLayout(String service, String page) {
    return '$page 페이지 레이아웃 관리 $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page 페이지에 대한 레이아웃을 관리 할 수 있습니다';
  }

  @override
  String get gridView => '그리드 뷰';

  @override
  String get listView => '공지사항';

  @override
  String get compactView => '컴팩트 뷰';

  @override
  String get layout => '제품정보';

  @override
  String get sort => '제품정보';

  @override
  String get utd => '맨 위로';

  @override
  String get dtu => '맨 위로';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => '드 워치';

  @override
  String get chapterRead => '장 읽기';

  @override
  String get outOf => '현재 위치';

  @override
  String get totalOf => '전체보기';

  @override
  String get selected => '제품정보';

  @override
  String get found => '제품정보';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '확장',
      one: '확대',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '사용 가능한 $type';
  }

  @override
  String installed(String type) {
    return '설치 $type';
  }

  @override
  String get extensionsDescription => '기능을 추가하기 위해 확장을 설치하고 관리하세요';

  @override
  String get addAnimeRepo => '추가 애니메이션 Repo';

  @override
  String get addAnimeRepoDesc => '다양한 소스에서 애니메이션 Repo 추가';

  @override
  String get addMangaRepo => '만화 Repo 추가';

  @override
  String get addMangaRepoDesc => '만화 추가 다양한 소스에서 Repo';

  @override
  String get addNovelRepo => 'Novel Repo 추가';

  @override
  String get addNovelRepoDesc => '다양한 소스에서 Novel Repo 추가';

  @override
  String get loadExtensionsIcon => 'Load Extensions 아이콘';

  @override
  String get loadExtensionsIconDesc => '확장 페이지가 지연되면 비활성화';

  @override
  String get autoUpdate => '자동 업데이트';

  @override
  String get autoUpdateDesc => '자동 업데이트 확장';

  @override
  String get installSourceToStart => '확장 페이지에서 소스를 설치하기 시작';

  @override
  String get author => '이름 *';

  @override
  String get averageDuration => '평균 기간';

  @override
  String get characters => '이름 *';

  @override
  String get description => '관련 기사';

  @override
  String get synopsis => '관련 기사';

  @override
  String get endDate => '종료일';

  @override
  String get format => '지원하다';

  @override
  String get meanScore => '평균 점수';

  @override
  String get name => '이름 *';

  @override
  String get nameRomaji => '이름 (Romaji)';

  @override
  String get popularity => '인기있는';

  @override
  String get relations => '이름 *';

  @override
  String get prequel => '상품정보';

  @override
  String get sequel => '계정 만들기';

  @override
  String get source => '이름 *';

  @override
  String get staff => '한국어';

  @override
  String get startDate => '시작 날짜';

  @override
  String get status => '주요연혁';

  @override
  String get studio => '사이트맵';

  @override
  String get synonyms => '동의어';

  @override
  String get tags => '이름 *';

  @override
  String get total => '총';

  @override
  String get collapseText => '더 적은';

  @override
  String get expandText => '더 보기';

  @override
  String get comingSoon => '공지사항';

  @override
  String get wrongTitle => '잘못된 제목?';

  @override
  String get youTube => 'YouTube에서 재생?';

  @override
  String get mediaNotFound => '찾을 수 없음';

  @override
  String get noChapterFound => '찾을 수 없음';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '활동',
      one: '활동',
    );
    return '$_temp0';
  }

  @override
  String get language => '* 이름';

  @override
  String get account => '계정';

  @override
  String get accountDescription => 'AniList, MAL, Discord 계정을 손쉽게 관리하세요';

  @override
  String get common => '일반';

  @override
  String get commonDescription => '앱 사용을 원활하게 위한 일반 설정에 접근하세요';

  @override
  String get animeDescription => '애니메이션 설정을 개인화하고 관리하세요';

  @override
  String get mangaDescription => '만화 경험을 조직하고 개인화하세요';

  @override
  String get about => '앱 정보';

  @override
  String get aboutDescription => '앱과 제작자에 대해 더 알아보세요';

  @override
  String get notifications => '알림';

  @override
  String get notificationsDescription => '알림 수신 방식과 시점을 설정하세요';

  @override
  String get offlineMode => '오프라인 모드';

  @override
  String get offlineModeDescription => '인터넷 연결 없이 앱을 사용하세요';

  @override
  String get incognitoMode => '인코그니토 모드';

  @override
  String get incognitoModeDescription => '활동을 저장하지 않고 탐색하기';

  @override
  String get hidePrivate => '비공개 숨기기';

  @override
  String get hidePrivateDescription => '홈 페이지의 개인 시리즈 숨기기.';

  @override
  String get hiddenMedia => '숨겨진 미디어';

  @override
  String get noHiddenMediaFound => '숨겨진 미디어 발견';

  @override
  String get playerSettingsTitle => '플레이어 설정';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => '속도';

  @override
  String get speedDescription => '플레이어의 기본 속도';

  @override
  String get cursedSpeed => '저주받은 속도';

  @override
  String get cursedSpeedDescription => '바쁜 사람들을 위한 속도';

  @override
  String get resizeMode => '크기 조정 모드';

  @override
  String get resizeModeDescription => '플레이어의 기본 크기 조정 모드';

  @override
  String get skipButton => '건너뛰기 버튼';

  @override
  String get skipButtonDescription => '건너뛰기 버튼 지속 시간';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => '자막';

  @override
  String get showSubtitles => '자막 표시';

  @override
  String get showSubtitlesDescription => '기본적으로 자막을 표시하세요';

  @override
  String get subtitlePreview => '자막 미리보기';

  @override
  String get fontColor => '글꼴 색상';

  @override
  String get fontColorDescription => '자막 글꼴 색상';

  @override
  String get fontFamily => '글꼴 패밀리';

  @override
  String get fontFamilyDescription => '자막 글꼴 패밀리';

  @override
  String get fontSize => '글꼴 크기';

  @override
  String get fontSizeDescription => '자막 글꼴 크기';

  @override
  String get fontWeight => '글꼴 두께';

  @override
  String get fontWeightDescription => '자막 글꼴 두께';

  @override
  String get backgroundColor => '배경 색상';

  @override
  String get backgroundColorDescription => '자막 배경 색상';

  @override
  String get outlineColor => '윤곽선 색상';

  @override
  String get outlineColorDescription => '자막 윤곽선 색상';

  @override
  String get bottomPadding => '하단 여백';

  @override
  String get bottomPaddingDescription => '자막 하단 여백';

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
  String get theme => '테마';

  @override
  String get themeDescription => '앱의 외관과 분위기를 개인화하세요';

  @override
  String get darkMode => '다크 모드';

  @override
  String get enableDarkMode => '다크 모드 활성화';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => '배경화면과 동일한 색상을 사용하세요';

  @override
  String get customTheme => '커스텀 테마';

  @override
  String get customThemeDescription => '자신만의 색상으로 테마를 설정하세요';

  @override
  String get oledThemeVariant => 'OLED 테마 변형';

  @override
  String get oledThemeVariantDescription => 'OLED 모드 활성화';

  @override
  String get colorPicker => '색상 선택기';

  @override
  String get pickColor => '색상 선택';

  @override
  String get colorPickerDescription => '색상을 선택하세요';

  @override
  String get colorPickerDefault => '기본 정보';

  @override
  String get colorPickerCustom => '제품 정보';

  @override
  String get customPath => '주문 경로';

  @override
  String get customPathDescription => '파일을 저장하는 사용자 정의 경로를 설정\n긴 압박 제거';

  @override
  String get selectDirectory => '자주 묻는 질문';

  @override
  String get selectMediaService => '미디어 서비스';

  @override
  String get logFile => '로그 파일';

  @override
  String get logFileDescription => '로그 파일을 공유';

  @override
  String get restoreSettings => '설정 복원';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => '웹뷰';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer => 'Dartotsu의 유지보수를 지원하고 싶으신가요?\n기부를 고려해 주세요';

  @override
  String get donationGoal => '현재 기부 목표 없음';

  @override
  String get options => '제품 설명';

  @override
  String get ok => '확인';

  @override
  String get cancel => '취소';

  @override
  String get yes => '예';

  @override
  String get no => '아니오';
}
