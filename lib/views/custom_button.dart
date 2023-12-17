import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.namebutton, this.ontap,  this.isLoading=false});
    final bool isLoading;
    final String namebutton;
    final void Function()?ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        
        decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 28, 154, 139),
      
          borderRadius: BorderRadius.circular(16),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child:  isLoading?const CircularProgressIndicator(color: Colors.white,strokeWidth : 3.0,strokeCap: StrokeCap.square,) :Text(namebutton,style: const TextStyle(color: Colors.black,fontSize: 18),),
        ),
      ),
    );
  }
}
