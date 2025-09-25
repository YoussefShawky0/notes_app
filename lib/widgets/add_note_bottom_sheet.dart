import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_txt_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      height: 500,
      child: Column(
        children: const [
          SizedBox(height: 30),
          CustomTextField(hintTxt: 'Title'),
          SizedBox(height: 20),
          CustomTextField(hintTxt: 'Description', maxLines: 9),
        ],
      ),
    );
  }
}
