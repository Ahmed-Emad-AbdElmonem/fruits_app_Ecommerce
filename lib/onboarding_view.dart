import 'package:ecommerce_fruits_app/Auth/login_page.dart';
import 'package:ecommerce_fruits_app/widgets/Navigator_widget.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/onboarding.png'),
            ),
          ),
          // height: 568,
          width: double.infinity,
        ),
        SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/carrot.png',
                width: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to our store',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                'Ger your groceries in as fast as one hour',
                style: TextStyle(
                    color: Color(0xFFFCFCFC).withOpacity(0.7), fontSize: 16),
              ),
              SizedBox(
                height: 35,
              ),
              MainButton(
                txt: 'Get Started',
                ontap: () {
                  
                  navigateTo(context, LoginPage());
                },
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
