import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_app_bar.t.dart';
import 'package:notes_app/views/custom_button.dart';
import 'package:notes_app/views/custom_text_feild.dart';

class EditNoteVeiwBody extends StatelessWidget {
  const EditNoteVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16,vertical: 1),
      child:  Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.edit,
          ),
           SizedBox(
            height: 
            15,
          ),
          CustomTextFeild(texthint: 'title'),
           SizedBox(
            height: 
            15,
          ),
          CustomTextFeild(
            texthint: 'content',
            maxlines: 5,
          ),
           SizedBox(
            height: 15,
          ),
           CustomBottom(
            namebutton: 'Edit',
          ),
        ],
      ),
    );
  }
}
