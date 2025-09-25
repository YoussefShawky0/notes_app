import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_txt_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static const String id = 'EditNoteView';
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
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                CustomTextField(hintTxt: 'Title'),
                SizedBox(height: 30),
                CustomTextField(hintTxt: 'Description', maxLines: 8),
                SizedBox(height: 30),
                CustomBottom(txt: "Edit"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
