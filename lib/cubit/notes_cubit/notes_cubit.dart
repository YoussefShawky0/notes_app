import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_data_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteDataModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteDataModel>('notes_box');
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
