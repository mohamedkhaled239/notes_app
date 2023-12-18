import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/noteitem.dart';

class NotesListVeiw extends StatelessWidget {
  const NotesListVeiw({super.key});
   final  data =const[
   
   ];
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return ListView.builder(
          itemCount: notes.length,
        padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return    NoteItem();
          });
      },
    );
    
      
    
  }
}
