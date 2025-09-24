import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.dark),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              CustomAppBar(),
              Expanded(child: NotesViewBody()),
            ],
          ),
        ),
      ),
    );
  }
}
