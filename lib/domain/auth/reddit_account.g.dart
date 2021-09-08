// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RedditAccountAdapter extends TypeAdapter<_$_RedditAccount> {
  @override
  final int typeId = 0;

  @override
  _$_RedditAccount read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_RedditAccount(
      accessToken: fields[0] as String,
      expiresIn: fields[1] as int,
      refreshToken: fields[2] as String,
      scope: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_RedditAccount obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.expiresIn)
      ..writeByte(2)
      ..write(obj.refreshToken)
      ..writeByte(3)
      ..write(obj.scope);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RedditAccountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
