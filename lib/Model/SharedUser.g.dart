// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SharedUser.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShareUserAdapter extends TypeAdapter<ShareUser> {
  @override
  final int typeId = 0;

  @override
  ShareUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShareUser(
      Name: fields[0] as String,
      username: fields[1] as String,
      password: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ShareUser obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.Name)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShareUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
