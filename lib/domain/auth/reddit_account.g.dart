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
      token: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_RedditAccount obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
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
