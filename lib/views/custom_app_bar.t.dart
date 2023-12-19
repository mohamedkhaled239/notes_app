// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/views/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.icon,
    this.oPressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? oPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25),
          ),
          const Spacer(),
          CustomSearchIcon(onPressed: oPressed, icon: icon),
        ],
      ),
    );
  }
}
