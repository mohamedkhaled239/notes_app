import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_button.dart';
import 'package:notes_app/views/custom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextFeild(
            onsaved: (value) {
              title = value;
            },
            texthint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFeild(
            onsaved: (value) {
              subtitle = value;
            },
            texthint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomBottom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            namebutton: 'Add',
          ),
        ],
      ),
    );
  }
}
