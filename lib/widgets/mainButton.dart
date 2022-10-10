import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  late String txt;
 late Function() ontap;

  MainButton({
    required this.txt, required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        decoration:BoxDecoration(color:Color(0xff53B175),
        borderRadius: BorderRadius.circular(14) ,
        
        ) ,
        alignment:Alignment.center ,
        
        height: 66,
        width:size.width * 0.8 ,  
        child: Center(
          child: Text(txt,
          style:TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight:FontWeight.w600,
    
          ) ,
          ),
        ),
      ),
    );
  }
}
