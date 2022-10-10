

import 'package:ecommerce_fruits_app/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  SplashView({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
 

 @override
  void initState() {
    
    super.initState();
    gotoNextPage();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Container(
          
          child: Image.asset('assets/images/logo.png', width:size.width * 0.80 ,),
        ),
      ),
    );
  }
   void gotoNextPage(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>OnboardingScreen() ));
    });
  }
}
