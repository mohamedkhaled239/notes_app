import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {required this.texthint, super.key, this.maxlines = 1, this.onsaved, this.onChanged});
  final String texthint;
  final int maxlines;
  final void Function(String?)? onsaved;
    final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: Colors.white,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: texthint,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: buildBoreder(),
        focusedBorder: buildBoreder(),
      ),
    );
  }

  OutlineInputBorder buildBoreder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
