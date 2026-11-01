import 'PlayerEngine.dart';

const _languages = <List<String>>[
  ['en', 'eng', 'english'],
  ['ja', 'jp', 'jpn', 'japanese', '日本語', 'nihongo'],
  ['ko', 'kor', 'korean', '한국어'],
  [
    'zh',
    'chi',
    'zho',
    'cmn',
    'yue',
    'chs',
    'cht',
    'zh-cn',
    'zh-tw',
    'zh-hk',
    'zh-hans',
    'zh-hant',
    'chinese',
    'mandarin',
    'cantonese',
    'simplified',
    'traditional',
    '中文',
    '汉语',
    '漢語',
    '简体中文',
    '繁體中文',
    '粤语',
  ],
  [
    'es',
    'spa',
    'esp',
    'es-419',
    'es-la',
    'es-es',
    'spanish',
    'español',
    'espanol',
    'castellano',
    'latino',
    'latam',
  ],
  ['pt', 'por', 'portuguese', 'português', 'portugues'],
  ['pob', 'pt-br', 'ptbr', 'brazilian', 'brasil', 'brazil'],
  ['fr', 'fre', 'fra', 'french', 'français', 'francais'],
  ['de', 'ger', 'deu', 'german', 'deutsch'],
  ['it', 'ita', 'italian', 'italiano'],
  ['ru', 'rus', 'russian', 'русский'],
  ['uk', 'ukr', 'ukrainian', 'українська'],
  ['ar', 'ara', 'arabic', 'العربية'],
  ['id', 'ind', 'indonesian', 'bahasa indonesia', 'indo'],
  ['ms', 'may', 'msa', 'malay', 'bahasa melayu'],
  ['vi', 'vie', 'vietnamese', 'tiếng việt'],
  ['th', 'tha', 'thai', 'ไทย'],
  ['tr', 'tur', 'turkish', 'türkçe', 'turkce'],
  ['pl', 'pol', 'polish', 'polski'],
  ['nl', 'dut', 'nld', 'dutch', 'nederlands'],
  ['hi', 'hin', 'hindi', 'हिन्दी'],
  ['bn', 'ben', 'bengali', 'bangla'],
  ['ta', 'tam', 'tamil'],
  ['te', 'tel', 'telugu'],
  ['ml', 'mal', 'malayalam'],
  ['kn', 'kan', 'kannada'],
  ['mr', 'mar', 'marathi'],
  ['ur', 'urd', 'urdu'],
  ['ne', 'nep', 'nepali'],
  ['si', 'sin', 'sinhala'],
  ['fa', 'per', 'fas', 'persian', 'farsi'],
  ['he', 'heb', 'iw', 'hebrew'],
  ['el', 'gre', 'ell', 'greek'],
  ['sv', 'swe', 'swedish', 'svenska'],
  ['da', 'dan', 'danish', 'dansk'],
  ['nb', 'nor', 'nob', 'norwegian', 'norsk'],
  ['fi', 'fin', 'finnish', 'suomi'],
  ['cs', 'cze', 'ces', 'czech', 'čeština'],
  ['sk', 'slo', 'slk', 'slovak'],
  ['hu', 'hun', 'hungarian', 'magyar'],
  ['ro', 'rum', 'ron', 'romanian'],
  ['bg', 'bul', 'bulgarian'],
  ['hr', 'hrv', 'croatian'],
  ['sr', 'srp', 'serbian'],
  ['sl', 'slv', 'slovenian'],
  ['lt', 'lit', 'lithuanian'],
  ['lv', 'lav', 'latvian'],
  ['et', 'est', 'estonian'],
  ['ca', 'cat', 'catalan'],
  ['fil', 'tl', 'tgl', 'tagalog', 'filipino'],
  ['my', 'bur', 'mya', 'burmese'],
  ['km', 'khm', 'khmer'],
  ['sw', 'swa', 'swahili'],
];

final _ascii = RegExp(r'^[a-z]+$');

final Map<String, List<String>> _byAlias = {
  for (final language in _languages)
    for (final alias in language) alias: language,
};

Iterable<String> _codes(List<String> language) => language.where(
  (a) => a.contains('-') || (_ascii.hasMatch(a) && a.length <= 3),
);

Iterable<String> _names(List<String> language) => language.where(
  (a) => !a.contains('-') && !(_ascii.hasMatch(a) && a.length <= 3),
);

List<String>? _languageOf(String wanted) {
  final exact = _byAlias[wanted];
  if (exact != null) return exact;
  final primary = wanted.split(RegExp(r'[-_]')).first;
  if (primary != wanted && primary.length >= 2) {
    final byPrimary = _byAlias[primary];
    if (byPrimary != null) return byPrimary;
  }
  if (wanted.length >= 3) {
    for (final language in _languages) {
      if (_names(
        language,
      ).any((n) => n.length > wanted.length && n.startsWith(wanted))) {
        return language;
      }
    }
  }
  return null;
}

List<String> languageList(String text) => [
  for (final part in text.split(RegExp(r'[,;\n]')))
    if (part.trim().isNotEmpty) part.trim(),
];

Set<String> languageKeys(String name) {
  final wanted = name.trim().toLowerCase();
  final language = _languageOf(wanted);
  return {wanted, ...?language};
}

final _rawPattern = RegExp(r'[\\|()\[\]{}^$*+?]');
final _slashed = RegExp(r'^/(.+)/i?$');

class LanguageMatcher {
  final RegExp _language;
  final RegExp _title;

  const LanguageMatcher._(this._language, this._title);

  factory LanguageMatcher.raw(RegExp pattern) =>
      LanguageMatcher._(pattern, pattern);

  bool matches({String? language, String? title}) {
    final lang = language?.trim();
    final text = title?.trim();
    return (lang != null && lang.isNotEmpty && _language.hasMatch(lang)) ||
        (text != null && text.isNotEmpty && _title.hasMatch(text));
  }
}

LanguageMatcher? languageMatcher(String entry) {
  final raw = entry.trim();
  if (raw.isEmpty) return null;
  try {
    final slashed = _slashed.firstMatch(raw);
    if (slashed != null) {
      return LanguageMatcher.raw(RegExp(slashed[1]!, caseSensitive: false));
    }
    if (_rawPattern.hasMatch(raw)) {
      return LanguageMatcher.raw(RegExp(raw, caseSensitive: false));
    }
    final wanted = raw.toLowerCase();
    final language = _languageOf(wanted);
    if (language == null) {
      final word = RegExp.escape(wanted);
      return LanguageMatcher.raw(
        RegExp('(?:^|[^a-z])$word(?:[^a-z]|\$)', caseSensitive: false),
      );
    }
    final codes = _codes(language).map(RegExp.escape).join('|');
    final long = [
      ..._names(language),
      ...language.where((a) => _ascii.hasMatch(a) && a.length == 3),
    ].map(RegExp.escape).join('|');
    final short = language
        .where((a) => _ascii.hasMatch(a) && a.length == 2 && a != 'hi')
        .map(RegExp.escape)
        .join('|');
    final title = [
      if (long.isNotEmpty) '(?:^|[^a-z])(?:$long)(?:[^a-z]|\$)',
      if (short.isNotEmpty) ...[
        '^[^a-z]*(?:$short)(?:[^a-z]*\$|[-_]\\w+\$)',
        '[\\[(](?:$short)[\\])]',
      ],
    ].join('|');
    return LanguageMatcher._(
      RegExp('^(?:$codes)(?:[-_.].*)?\$', caseSensitive: false),
      RegExp(title, caseSensitive: false),
    );
  } catch (_) {
    return null;
  }
}

bool _matches(PlayerTrack track, LanguageMatcher matcher) =>
    matcher.matches(language: track.language, title: track.title);

final _signs = RegExp(r'sign|song|forced', caseSensitive: false);

bool _forcedOrSigns(PlayerTrack track) => _signs.hasMatch(track.title ?? '');

bool labelIsSigns(String label) => _signs.hasMatch(label);

PlayerTrack? pickTrack(
  List<PlayerTrack> tracks,
  List<String> priority, {
  bool avoidSigns = false,
}) {
  for (final language in priority) {
    final matcher = languageMatcher(language);
    if (matcher == null) continue;
    final found = tracks.where((t) => _matches(t, matcher)).toList();
    if (found.isEmpty) continue;
    if (avoidSigns) {
      final full = found.where((t) => !_forcedOrSigns(t));
      if (full.isNotEmpty) return full.first;
    }
    return found.first;
  }
  return null;
}
