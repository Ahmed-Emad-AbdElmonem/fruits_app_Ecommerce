

import 'package:ecommerce_fruits_app/Auth/login_page.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:ecommerce_fruits_app/h.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const FruitsMarket());
 await DioHelper.init();
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      //  title: 'Flutter Demo',
       home:LoginPage() ,
   /*  initialRoute: '/home',
      routes: {
        'splash': (context) => SplashView(),
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUp(),
        '/home': (context) => HomePage(),
      },*/
    );
  }
}
