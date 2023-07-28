import 'package:flutter/material.dart';





void  navigateTo(BuildContext context,Widget widget){
    // Navigator.pushNamed(context , widget);
   Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
  }
  
