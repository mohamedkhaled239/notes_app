import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view_body.dart';

class EditNoteVeiw extends StatelessWidget {
  const EditNoteVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteVeiwBody(),
    );
  }
}