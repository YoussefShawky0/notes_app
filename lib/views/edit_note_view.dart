import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_data_model.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_txt_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});

  static const String id = 'EditNoteView';

  final NoteDataModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit Note',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 40),

                CustomTextField(
                  initialValue: widget.note.title,
                  onChanged: (value) {
                    title = value;
                  },
                  hintTxt: 'Title',
                ),

                const SizedBox(height: 30),

                CustomTextField(
                  initialValue: widget.note.description,
                  onChanged: (value) {
                    description = value;
                  },
                  hintTxt: 'Description',
                  maxLines: 8,
                ),
                const SizedBox(height: 30),
                CustomBottom(
                  txt: "Edit",
                  onTap: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.description =
                        description ?? widget.note.description;
                    widget.note.save();
                    Navigator.pop(context);
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
