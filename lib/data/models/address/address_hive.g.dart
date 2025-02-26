// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddressHiveAdapter extends TypeAdapter<AddressHive> {
  @override
  final int typeId = 1;

  @override
  AddressHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddressHive(
      street: fields[0] as String,
      suite: fields[1] as String,
      city: fields[2] as String,
      zipcode: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AddressHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.street)
      ..writeByte(1)
      ..write(obj.suite)
      ..writeByte(2)
      ..write(obj.city)
      ..writeByte(3)
      ..write(obj.zipcode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
