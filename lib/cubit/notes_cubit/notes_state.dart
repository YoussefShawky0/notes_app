part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteDataModel> notes;

  NotesSuccess(this.notes);
}

final class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);
}
