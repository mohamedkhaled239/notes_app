import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/views/add_note_button_sheet.dart';
import 'package:notes_app/views/notes_veiw_body.dart';

class NotesVeiw extends StatelessWidget {
  const NotesVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.brown[200],
          elevation: 0,
          isExtended: true,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteButtonSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesVeiwbody(),
      ),
    );
  }
}
