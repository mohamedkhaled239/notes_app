part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

final class NotesInitial extends NotesState {}

/*final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

final class NotesLoading extends NotesState {}

final class NotesFailure extends NotesState {
  final String errmassage;

  NotesFailure(this.errmassage);
}*/
