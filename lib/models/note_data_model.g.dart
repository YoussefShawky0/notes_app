// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteDataModelAdapter extends TypeAdapter<NoteDataModel> {
  @override
  final int typeId = 0;

  @override
  NoteDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteDataModel(
      title: fields[0] as String?,
      description: fields[1] as String?,
      date: fields[2] as String?,
      color: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, NoteDataModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
