
import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_app_bar.t.dart';
import 'package:notes_app/views/note_list_view.dart';

class NotesVeiwbody extends StatelessWidget {
  const NotesVeiwbody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Column(
      children:  [
       
        SizedBox(height: 50,),
         CustomAppBar(title: 'Note', icon: Icons.search,),
        Expanded(
          child: NotesListVeiw(),
        ),
      ],
    );
    
  }
}
