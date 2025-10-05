import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_data_model.dart';
import 'package:notes_app/widgets/custom_note_container.dart';
import 'package:notes_app/widgets/note_empty.dart';

class NotesViewList extends StatelessWidget {
  const NotesViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteDataModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

        if (notes.isEmpty) {
          return NoteEmpty();
        }

        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return CustomNoteContainer(note: notes[index]);
          },
        );
      },
    );
  }
}
