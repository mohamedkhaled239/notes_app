import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
      
        children: [
            Text(title,style: const TextStyle(fontSize: 25),),
      
              const Spacer(),
             CustomSearchIcon(icon: icon),
        ],
      ),
    );
  }
}

