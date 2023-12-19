import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view_body.dart';

class EditNoteVeiw extends StatelessWidget {
  const EditNoteVeiw({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteVeiwBody(note: note,),
    );
  }
}