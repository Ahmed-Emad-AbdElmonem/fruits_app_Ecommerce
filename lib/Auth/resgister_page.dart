import 'package:ecommerce_fruits_app/widgets/custom_text_field.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<SignUp> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    child: Image.asset(
                      'assets/images/carrot_orange.png',
                      width: 50,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'SignUp',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Enter your email and password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C)),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomFormTextField(
                    label: 'User Name',
                    hintText: 'Enter your User Name',
                    inputType: TextInputType.emailAddress,
                  ),
                   SizedBox(
                    height: 15,
                  ),
                  CustomFormTextField(
                    label: 'Email',
                    hintText: 'Enter your Email Address',
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomFormTextField(
                    label: 'Password',
                    hintText: 'Enter your Password',
                    isPassword: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  Align(
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(child: MainButton(txt: 'Sign Up', ontap: () {})),
                 SizedBox(height:25 ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        } ,
                        child: Text('signIn', style: TextStyle(
                              color: Color.fromARGB(255, 122, 120, 120), fontWeight: FontWeight.w700),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
