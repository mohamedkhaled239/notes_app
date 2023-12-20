// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/custom_app_bar.t.dart';
import 'package:notes_app/views/custom_text_feild.dart';

class EditNoteVeiwBody extends StatefulWidget {
  const EditNoteVeiwBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteVeiwBody> createState() => _EditNoteVeiwBodyState();
}

class _EditNoteVeiwBodyState extends State<EditNoteVeiwBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(left: 16,right: 16 ,bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              oPressed: () {
                widget.note.title = title ??
                    widget.note.title; //if new title equal null Show old title
                widget.note.subtitle = subtitle ??
                    widget.note
                        .subtitle; //if new subtitle equal null Show old subtitle
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchallNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.edit,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFeild(
                onChanged: (value) {
                  title = value;
                },
                texthint: 'title'),
            const SizedBox(
              height: 15,
            ),
            CustomTextFeild(
              onChanged: (value) {
                subtitle = value;
              },
              texthint: 'subtitle',
              maxlines: 5,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
