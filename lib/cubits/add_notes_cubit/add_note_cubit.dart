
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading=false;
addnote(NoteModel note)async{
  
  emit(AddNoteLoading());
  try{
    var notesBox = Hive.box<NoteModel>('notes_box');
    
    emit(AddNoteSuccess());
    await notesBox.add(note);

    
  }catch(e){
    
    emit(AddNoteFailure(e.toString()));
  }
  
}


}
