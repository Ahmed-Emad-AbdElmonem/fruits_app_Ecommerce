import 'package:flutter/material.dart';





  NavigateTo(BuildContext context,Widget widget){
    // Navigator.pushNamed(context , widget);
   Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
  }
  
