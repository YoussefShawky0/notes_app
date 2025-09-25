import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_container.dart';

class NotesViewList extends StatelessWidget {
  const NotesViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomNoteContainer();
      },
    );
  }
}
