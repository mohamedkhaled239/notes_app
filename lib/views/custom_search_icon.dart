// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
   CustomSearchIcon({
    super.key,
    required this.icon,this.onPressed,
  });
  void Function()? onPressed;
    final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: 45,
        width:45 ,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.2),
        ),
        child:  Center(
          child:  IconButton(icon:Icon(icon),color: Colors.white, onPressed: onPressed,),
        ),
      ),
    );
  }
}
