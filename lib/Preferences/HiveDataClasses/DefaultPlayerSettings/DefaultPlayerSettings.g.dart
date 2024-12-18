// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DefaultPlayerSettings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerSettingsAdapter extends TypeAdapter<PlayerSettings> {
  @override
  final int typeId = 3;

  @override
  PlayerSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerSettings(
      speed: fields[0] as String,
      resizeMode: fields[1] as int,
      subtitleLanguage: fields[3] as String,
      subtitleSize: fields[4] as int,
      subtitleColor: fields[5] as int,
      subtitleFont: fields[6] as String,
      subtitleBackgroundColor: fields[7] as int,
      subtitleOutlineColor: fields[8] as int,
      showSubtitle: fields[2] as bool,
      subtitleBottomPadding: fields[9] as int,
      skipDuration: fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PlayerSettings obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.speed)
      ..writeByte(1)
      ..write(obj.resizeMode)
      ..writeByte(2)
      ..write(obj.showSubtitle)
      ..writeByte(3)
      ..write(obj.subtitleLanguage)
      ..writeByte(4)
      ..write(obj.subtitleSize)
      ..writeByte(5)
      ..write(obj.subtitleColor)
      ..writeByte(6)
      ..write(obj.subtitleFont)
      ..writeByte(7)
      ..write(obj.subtitleBackgroundColor)
      ..writeByte(8)
      ..write(obj.subtitleOutlineColor)
      ..writeByte(9)
      ..write(obj.subtitleBottomPadding)
      ..writeByte(10)
      ..write(obj.skipDuration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
