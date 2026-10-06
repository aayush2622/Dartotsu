import 'dart:convert';
import 'dart:typed_data';

class ProtoField {
  final int number;
  final int wire;
  final int? varint;
  final Uint8List? bytes;
  final double? number64;

  const ProtoField(
    this.number,
    this.wire, {
    this.varint,
    this.bytes,
    this.number64,
  });

  String get string => utf8.decode(bytes ?? const [], allowMalformed: true);
}

class ProtoMessage {
  final List<ProtoField> fields;

  const ProtoMessage(this.fields);

  factory ProtoMessage.parse(List<int> data) {
    final bytes = data is Uint8List ? data : Uint8List.fromList(data);
    final view = ByteData.sublistView(bytes);
    final fields = <ProtoField>[];
    var i = 0;

    int readVarint() {
      var result = 0;
      var shift = 0;
      while (i < bytes.length) {
        final b = bytes[i++];
        result |= (b & 0x7f) << shift;
        if (b & 0x80 == 0) return result;
        shift += 7;
        if (shift > 63) throw const FormatException('varint too long');
      }
      throw const FormatException('truncated varint');
    }

    while (i < bytes.length) {
      final tag = readVarint();
      final number = tag >> 3;
      final wire = tag & 7;
      if (number == 0) throw const FormatException('bad field number');
      switch (wire) {
        case 0:
          fields.add(ProtoField(number, wire, varint: readVarint()));
        case 1:
          if (i + 8 > bytes.length) throw const FormatException('truncated');
          fields.add(
            ProtoField(
              number,
              wire,
              number64: view.getFloat64(i, Endian.little),
              varint: view.getInt64(i, Endian.little),
            ),
          );
          i += 8;
        case 2:
          final length = readVarint();
          if (length < 0 || i + length > bytes.length) {
            throw const FormatException('truncated');
          }
          fields.add(
            ProtoField(number, wire, bytes: bytes.sublist(i, i + length)),
          );
          i += length;
        case 5:
          if (i + 4 > bytes.length) throw const FormatException('truncated');
          fields.add(
            ProtoField(
              number,
              wire,
              number64: view.getFloat32(i, Endian.little),
              varint: view.getInt32(i, Endian.little),
            ),
          );
          i += 4;
        default:
          throw FormatException('unsupported wire type $wire');
      }
    }
    return ProtoMessage(fields);
  }

  Iterable<ProtoField> all(int number) =>
      fields.where((f) => f.number == number);

  ProtoField? first(int number) {
    for (final f in fields) {
      if (f.number == number) return f;
    }
    return null;
  }

  bool has(int number) => fields.any((f) => f.number == number);

  String string(int number) => first(number)?.string ?? '';

  int int64(int number) => first(number)?.varint ?? 0;

  bool boolean(int number) => (first(number)?.varint ?? 0) != 0;

  double float(int number) => first(number)?.number64 ?? 0;

  List<String> strings(int number) => [for (final f in all(number)) f.string];

  List<ProtoMessage> messages(int number) => [
    for (final f in all(number))
      if (f.bytes != null) ProtoMessage.parse(f.bytes!),
  ];

  List<int> ints(int number) {
    final out = <int>[];
    for (final f in all(number)) {
      if (f.wire == 0) {
        out.add(f.varint ?? 0);
      } else if (f.wire == 2 && f.bytes != null) {
        final b = f.bytes!;
        var i = 0;
        while (i < b.length) {
          var result = 0;
          var shift = 0;
          while (i < b.length) {
            final byte = b[i++];
            result |= (byte & 0x7f) << shift;
            if (byte & 0x80 == 0) break;
            shift += 7;
          }
          out.add(result);
        }
      }
    }
    return out;
  }
}

class ProtoWriter {
  final _out = BytesBuilder(copy: false);

  void _varint(int value) {
    var v = value;
    if (v >= 0) {
      while (v > 0x7f) {
        _out.addByte((v & 0x7f) | 0x80);
        v >>= 7;
      }
      _out.addByte(v);
    } else {
      for (var i = 0; i < 9; i++) {
        _out.addByte((v & 0x7f) | 0x80);
        v >>= 7;
      }
      _out.addByte(1);
    }
  }

  void _tag(int number, int wire) => _varint((number << 3) | wire);

  void int64(int number, int value) {
    _tag(number, 0);
    _varint(value);
  }

  void boolean(int number, bool value) {
    _tag(number, 0);
    _varint(value ? 1 : 0);
  }

  void string(int number, String value) {
    final bytes = utf8.encode(value);
    _tag(number, 2);
    _varint(bytes.length);
    _out.add(bytes);
  }

  void float(int number, double value) {
    _tag(number, 5);
    final data = ByteData(4)..setFloat32(0, value, Endian.little);
    _out.add(data.buffer.asUint8List());
  }

  void double64(int number, double value) {
    _tag(number, 1);
    final data = ByteData(8)..setFloat64(0, value, Endian.little);
    _out.add(data.buffer.asUint8List());
  }

  void message(int number, ProtoWriter message) {
    final bytes = message.toBytes();
    _tag(number, 2);
    _varint(bytes.length);
    _out.add(bytes);
  }

  Uint8List toBytes() => _out.toBytes();
}
