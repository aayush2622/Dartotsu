import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Fonts/AppFonts.dart';
import '../../../Core/State/State.dart';

const _globalKey = 'readerSettings';

const readerModes = ['auto', 'rtl', 'ltr', 'vertical', 'webtoon', 'continuous'];
const readerTapZones = ['default', 'lshaped', 'kindle', 'edge', 'off'];
const readerScales = ['fit', 'width', 'height', 'original', 'smart'];
const readerBackgrounds = ['black', 'gray', 'white', 'theme'];
const readerFilters = ['none', 'grayscale', 'invert', 'sepia'];
const readerFilterQualities = ['none', 'low', 'medium', 'high', 'lanczos'];
const readerOrientations = ['free', 'portrait', 'landscape'];
const novelThemes = ['theme', 'light', 'sepia', 'dark', 'black'];

bool isScrollMode(String mode) =>
    mode == 'webtoon' || mode == 'continuous' || mode == 'vertical-scroll';

String autoReaderMode({String? format, String? country}) {
  final kind = (format ?? '').toUpperCase();
  if (kind == 'MANHWA' || kind == 'MANHUA') return 'webtoon';
  final origin = (country ?? '').toUpperCase();
  return origin == 'KR' || origin == 'CN' ? 'webtoon' : 'rtl';
}

class ReaderSettings {
  final Map<String, Object?> _v;
  String autoMode;

  ReaderSettings([Map<String, Object?>? values, this.autoMode = 'rtl'])
    : _v = {...?values};

  Map<String, Object?> toJson() => {..._v};

  ReaderSettings copy() => ReaderSettings(_v, autoMode);

  ReaderSettings merged(Map<String, Object?> overrides) =>
      ReaderSettings({..._v, ...overrides}, autoMode);

  Map<String, Object?> diff(ReaderSettings base) => {
    for (final e in _v.entries)
      if (base._v[e.key] != e.value) e.key: e.value,
  };

  T _get<T>(String key, T fallback) {
    final value = _v[key];
    if (value is T) return value;
    if (fallback is double && value is num) return value.toDouble() as T;
    if (fallback is int && value is num) return value.toInt() as T;
    return fallback;
  }

  String get mode => _get('mode', 'ltr');
  set mode(String v) => _v['mode'] = v;
  String get effectiveMode => mode == 'auto' ? autoMode : mode;
  bool get scrolls => isScrollMode(effectiveMode);
  bool get reversed => effectiveMode == 'rtl';
  bool get vertical => effectiveMode == 'vertical';

  String get tapZones => _get('tapZones', 'default');
  set tapZones(String v) => _v['tapZones'] = v;
  bool get invertTaps => _get('invertTaps', false);
  set invertTaps(bool v) => _v['invertTaps'] = v;
  String get scale => _get('scale', 'fit');
  set scale(String v) => _v['scale'] = v;
  bool get doublePage => _get('doublePage', false);
  set doublePage(bool v) => _v['doublePage'] = v;
  bool get doubleTapZoom => _get('doubleTapZoom', true);
  set doubleTapZoom(bool v) => _v['doubleTapZoom'] = v;
  String get background => _get('background', 'theme');
  set background(String v) => _v['background'] = v;
  bool get pageNumber => _get('pageNumber', true);
  set pageNumber(bool v) => _v['pageNumber'] = v;
  bool get fullscreen => _get('fullscreen', true);
  set fullscreen(bool v) => _v['fullscreen'] = v;
  bool get keepOn => _get('keepOn', true);
  set keepOn(bool v) => _v['keepOn'] = v;
  bool get animate => _get('animate', true);
  set animate(bool v) => _v['animate'] = v;
  int get preload => _get('preload', 3);
  set preload(int v) => _v['preload'] = v;
  bool get autoNext => _get('autoNext', true);
  set autoNext(bool v) => _v['autoNext'] = v;
  String get filter => _get('filter', 'none');
  set filter(String v) => _v['filter'] = v;
  String get filterQuality => _get('filterQuality', 'medium');
  set filterQuality(String v) => _v['filterQuality'] = v;
  int get dim => _get('dim', 0);
  set dim(int v) => _v['dim'] = v;
  int get sidePadding => _get('sidePadding', 0);
  set sidePadding(int v) => _v['sidePadding'] = v;
  int get pageGap => _get('pageGap', 0);
  set pageGap(int v) => _v['pageGap'] = v;
  String get orientation => _get('orientation', 'free');
  set orientation(String v) => _v['orientation'] = v;
  bool get cropBorders => _get('cropBorders', false);
  set cropBorders(bool v) => _v['cropBorders'] = v;
  bool get longPressSave => _get('longPressSave', true);
  set longPressSave(bool v) => _v['longPressSave'] = v;
  bool get volumeKeys => _get('volumeKeys', false);
  set volumeKeys(bool v) => _v['volumeKeys'] = v;
  int get autoScrollSpeed => _get('autoScrollSpeed', 4);
  set autoScrollSpeed(int v) => _v['autoScrollSpeed'] = v;
  bool get saveProgress => _get('saveProgress', true);
  set saveProgress(bool v) => _v['saveProgress'] = v;

  int get novelSize => _get('novelSize', 18);
  set novelSize(int v) => _v['novelSize'] = v;
  String get novelFont => migrateFont(_get('novelFont', bundledFont));
  set novelFont(String v) => _v['novelFont'] = v;
  double get novelLineHeight => _get('novelLineHeight', 1.7);
  set novelLineHeight(double v) => _v['novelLineHeight'] = v;
  int get novelMargin => _get('novelMargin', 20);
  set novelMargin(int v) => _v['novelMargin'] = v;
  String get novelTheme => _get('novelTheme', 'theme');
  set novelTheme(String v) => _v['novelTheme'] = v;
  bool get novelJustify => _get('novelJustify', false);
  set novelJustify(bool v) => _v['novelJustify'] = v;
  bool get novelBold => _get('novelBold', false);
  set novelBold(bool v) => _v['novelBold'] = v;
  bool get novelIndent => _get('novelIndent', false);
  set novelIndent(bool v) => _v['novelIndent'] = v;
  int get novelLetterSpacing => _get('novelLetterSpacing', 0);
  set novelLetterSpacing(int v) => _v['novelLetterSpacing'] = v;
  bool get novelTapPaging => _get('novelTapPaging', false);
  set novelTapPaging(bool v) => _v['novelTapPaging'] = v;
  bool get novelPaged => _get('novelPaged', false);
  set novelPaged(bool v) => _v['novelPaged'] = v;
  bool get translateBilingual => _get('translateBilingual', false);
  set translateBilingual(bool v) => _v['translateBilingual'] = v;
  String get translateTo => _get('translateTo', '');
  set translateTo(String v) => _v['translateTo'] = v;
  String get speechVoice => _get('speechVoice', '');
  set speechVoice(String v) => _v['speechVoice'] = v;
  int get speechRate => _get('speechRate', 100);
  set speechRate(int v) => _v['speechRate'] = v;
  int get speechPitch => _get('speechPitch', 100);
  set speechPitch(int v) => _v['speechPitch'] = v;
  int get novelParagraph => _get('novelParagraph', 12);
  set novelParagraph(int v) => _v['novelParagraph'] = v;
}

class ReaderPrefs {
  ReaderPrefs._();

  static final global = Live<ReaderSettings>(_load());

  static ReaderSettings _load() {
    final raw = PrefManager.getCustomVal<Map>(
      _globalKey,
      location: PrefLocation.READER,
    );
    return raw == null
        ? ReaderSettings()
        : ReaderSettings(Map<String, Object?>.from(raw));
  }

  static void update(void Function(ReaderSettings s) change) {
    final next = global.value.copy();
    change(next);
    global.value = next;
    PrefManager.setCustomVal<Map>(
      _globalKey,
      next.toJson(),
      location: PrefLocation.READER,
    );
  }

  static void reload() => global.value = _load();

  static void reset() {
    global.value = ReaderSettings();
    PrefManager.removeCustomVal(_globalKey, location: PrefLocation.READER);
  }
}
