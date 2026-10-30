import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:archive/archive_io.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html;
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

const comicExtensions = {'cbz', 'zip'};
const bookExtensions = {'epub'};
const pdfExtensions = {'pdf'};
const _imageExtensions = {
  'jpg',
  'jpeg',
  'png',
  'webp',
  'gif',
  'avif',
  'bmp',
  'jxl',
};

String _extension(String path) =>
    p.extension(path).replaceFirst('.', '').toLowerCase();

bool isComicArchive(String path) => comicExtensions.contains(_extension(path));

bool isBookFile(String path) => bookExtensions.contains(_extension(path));

bool isPdfFile(String path) => pdfExtensions.contains(_extension(path));

int naturalCompare(String a, String b) {
  final left = RegExp(r'\d+|\D+').allMatches(a.toLowerCase()).toList();
  final right = RegExp(r'\d+|\D+').allMatches(b.toLowerCase()).toList();
  for (var i = 0; i < left.length && i < right.length; i++) {
    final x = left[i].group(0)!;
    final y = right[i].group(0)!;
    final nx = int.tryParse(x);
    final ny = int.tryParse(y);
    final c = nx != null && ny != null ? nx.compareTo(ny) : x.compareTo(y);
    if (c != 0) return c;
  }
  return left.length.compareTo(right.length);
}

bool _hidden(String name) {
  final parts = p.posix.split(name.replaceAll('\\', '/'));
  return parts.any((s) => s.startsWith('.') || s == '__MACOSX');
}

Future<List<String>> extractComic(String archive, String outDir) =>
    Isolate.run(() async {
      final marker = File(p.join(outDir, '.done'));
      if (await marker.exists()) {
        final cached = (await marker.readAsLines())
            .where((f) => File(f).existsSync())
            .toList();
        if (cached.isNotEmpty) return cached;
      }
      await Directory(outDir).create(recursive: true);
      final input = InputFileStream(archive);
      try {
        final zip = ZipDecoder().decodeStream(input);
        final entries = [
          for (final f in zip)
            if (f.isFile &&
                !_hidden(f.name) &&
                _imageExtensions.contains(_extension(f.name)))
              f,
        ]..sort((a, b) => naturalCompare(a.name, b.name));
        final written = <String>[];
        for (final (i, entry) in entries.indexed) {
          final target = p.join(
            outDir,
            '${(i + 1).toString().padLeft(4, '0')}.${_extension(entry.name)}',
          );
          final out = OutputFileStream(target);
          try {
            entry.writeContent(out);
          } finally {
            await out.close();
          }
          written.add(target);
        }
        await marker.writeAsString(written.join('\n'));
        return written;
      } finally {
        await input.close();
      }
    });

Map<String, (String, int)> _epubToc(
  XmlDocument opf,
  String base,
  Map<String, ArchiveFile> files,
  String Function(ArchiveFile) text,
) {
  final out = <String, (String, int)>{};
  String resolve(String from, String href) => p.posix.normalize(
    p.posix.join(p.posix.dirname(from), Uri.decodeFull(href.split('#').first)),
  );
  void add(String from, String? href, String? title, int level) {
    if (href == null || title == null) return;
    final label = title.replaceAll(RegExp(r'\s+'), ' ').trim();
    if (label.isEmpty || href.startsWith('#')) return;
    out.putIfAbsent(resolve(from, href), () => (label, level));
  }

  XmlElement? item(bool Function(XmlElement) test) {
    for (final e in opf.findAllElements('item')) {
      if (test(e)) return e;
    }
    return null;
  }

  try {
    final nav = item(
      (e) => (e.getAttribute('properties') ?? '').contains('nav'),
    );
    final navHref = nav?.getAttribute('href');
    if (navHref != null) {
      final path = p.posix.normalize(
        p.posix.join(base, Uri.decodeFull(navHref)),
      );
      final file = files[path];
      if (file != null) {
        final doc = html.parse(text(file));
        final navs = doc.querySelectorAll('nav');
        final toc =
            navs
                .where((n) => (n.attributes['epub:type'] ?? '').contains('toc'))
                .firstOrNull ??
            navs.firstOrNull;
        for (final a in toc?.querySelectorAll('a') ?? const <dom.Element>[]) {
          var depth = 0;
          for (dom.Element? e = a.parent; e != null && e != toc; e = e.parent) {
            if (e.localName == 'ol') depth++;
          }
          add(path, a.attributes['href'], a.text, depth.clamp(1, 6));
        }
      }
    }
    if (out.isNotEmpty) return out;
    final ncx = item(
      (e) => e.getAttribute('media-type') == 'application/x-dtbncx+xml',
    );
    final ncxHref = ncx?.getAttribute('href');
    if (ncxHref != null) {
      final path = p.posix.normalize(
        p.posix.join(base, Uri.decodeFull(ncxHref)),
      );
      final file = files[path];
      if (file != null) {
        for (final point in XmlDocument.parse(
          text(file),
        ).findAllElements('navPoint')) {
          final label = point
              .findElements('navLabel')
              .firstOrNull
              ?.findAllElements('text')
              .firstOrNull
              ?.innerText;
          final src = point
              .findElements('content')
              .firstOrNull
              ?.getAttribute('src');
          final level = point.ancestorElements
              .where((e) => e.name.local == 'navPoint')
              .length;
          add(path, src, label, level + 1);
        }
      }
    }
  } catch (_) {}
  return out;
}

Future<String> epubToHtml(String epub, String outDir) => Isolate.run(() async {
  final input = InputFileStream(epub);
  try {
    final zip = ZipDecoder().decodeStream(input);
    final files = {
      for (final f in zip)
        if (f.isFile) p.posix.normalize(f.name): f,
    };
    String text(ArchiveFile f) => utf8.decode(f.content, allowMalformed: true);

    final container = files['META-INF/container.xml'];
    if (container == null) throw const FormatException('Not an EPUB');
    final rootPath = XmlDocument.parse(
      text(container),
    ).findAllElements('rootfile').first.getAttribute('full-path')!;
    final opf = files[p.posix.normalize(rootPath)];
    if (opf == null) throw const FormatException('Missing package file');
    final base = p.posix.dirname(rootPath);
    final doc = XmlDocument.parse(text(opf));
    final manifest = {
      for (final item in doc.findAllElements('item'))
        item.getAttribute('id')!: item.getAttribute('href')!,
    };
    final spine = [
      for (final ref in doc.findAllElements('itemref'))
        if (ref.getAttribute('idref') != null) ref.getAttribute('idref')!,
    ];

    final extracted = <String, String>{};
    Future<String?> image(String zipPath) async {
      final cached = extracted[zipPath];
      if (cached != null) return cached;
      final file = files[zipPath];
      if (file == null) return null;
      await Directory(outDir).create(recursive: true);
      final target = p.join(
        outDir,
        '${(extracted.length + 1).toString().padLeft(3, '0')}.${_extension(zipPath)}',
      );
      await File(target).writeAsBytes(file.content);
      return extracted[zipPath] = target;
    }

    final toc = _epubToc(doc, base, files, text);

    final out = StringBuffer();
    for (final id in spine) {
      final href = manifest[id];
      if (href == null) continue;
      final path = p.posix.normalize(
        p.posix.join(base, Uri.decodeFull(href.split('#').first)),
      );
      final page = files[path];
      if (page == null) continue;
      final body = html.parse(text(page)).body;
      if (body == null) continue;
      final entry = toc[path];
      if (entry != null) {
        out.writeln(
          '<div data-toc="${const HtmlEscape(HtmlEscapeMode.attribute).convert(entry.$1)}" data-level="${entry.$2}"></div>',
        );
      }
      body.querySelectorAll('script, style, link').forEach((e) {
        e.remove();
      });
      final here = p.posix.dirname(path);
      for (final img in body.querySelectorAll('img')) {
        final src = img.attributes['src'];
        if (src == null || src.startsWith('http')) continue;
        final local = await image(
          p.posix.normalize(p.posix.join(here, Uri.decodeFull(src))),
        );
        if (local != null) img.attributes['src'] = local;
      }
      for (final svg in body.querySelectorAll('image')) {
        final src = svg.attributes['href'] ?? svg.attributes['xlink:href'];
        if (src == null) continue;
        final local = await image(
          p.posix.normalize(p.posix.join(here, Uri.decodeFull(src))),
        );
        if (local == null) continue;
        final replacement = dom.Element.tag('img')..attributes['src'] = local;
        svg.parent?.insertBefore(replacement, svg);
        svg.remove();
      }
      out.writeln(body.innerHtml);
    }
    return out.toString();
  } finally {
    await input.close();
  }
});
