import 'package:hive/hive.dart';
part 'note_data_model.g.dart';

@HiveType(typeId: 0)
class NoteDataModel extends HiveObject {
  @HiveField(0)
  final String? title;
  @HiveField(1)
  final String? description;
  @HiveField(2)
  final String? date;
  @HiveField(3)
  final int? color;

  NoteDataModel({this.title, this.description, this.date, this.color});
}
