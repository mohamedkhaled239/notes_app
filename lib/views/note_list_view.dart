import 'package:flutter/material.dart';
import 'package:notes_app/views/noteitem.dart';

class NotesListVeiw extends StatelessWidget {
  const NotesListVeiw({super.key});
   final  data =const[
   
   ];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  const NoteItem();
        });
  }
}
