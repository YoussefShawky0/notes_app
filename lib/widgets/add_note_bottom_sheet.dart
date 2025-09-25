import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom.dart';
import 'package:notes_app/widgets/custom_txt_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(height: 30),
            CustomTextField(hintTxt: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hintTxt: 'Description', maxLines: 9),
            SizedBox(height: 15),
            CustomBottom(txt: "Add"),
          ],
        ),
      ),
    );
  }
}
