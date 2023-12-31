import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/views/add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
   const AddNoteButtonSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddNoteFailure){
                print('failed ${state.erMessage}');
            }
          if(state is AddNoteSuccess){
            BlocProvider.of<NotesCubit>(context).fetchallNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading?true:false,
              child: Padding(
                padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNoteForm()),
              ));
          },
        ),
      ),
    );
  }
}
