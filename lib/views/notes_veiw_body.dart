
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/views/custom_app_bar.t.dart';
import 'package:notes_app/views/note_list_view.dart';

class NotesVeiwbody extends StatefulWidget {
  const NotesVeiwbody({super.key});

  @override
  State<NotesVeiwbody> createState() => _NotesVeiwbodyState();
}

class _NotesVeiwbodyState extends State<NotesVeiwbody> {
@override
void initState(){
  BlocProvider.of<NotesCubit>(context).fetchallNotes();
  super.initState();
}

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
