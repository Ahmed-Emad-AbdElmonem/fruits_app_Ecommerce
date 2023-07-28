import 'package:ecommerce_fruits_app/Auth/Cubit/Register_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/Register_states.dart';
import 'package:ecommerce_fruits_app/Auth/login_page.dart';
import 'package:ecommerce_fruits_app/cashhelper.dart';
import 'package:ecommerce_fruits_app/constants.dart';
import 'package:ecommerce_fruits_app/h.dart';
import 'package:ecommerce_fruits_app/models/login_model.dart';
import 'package:ecommerce_fruits_app/widgets/Navigator_widget.dart';

import 'package:ecommerce_fruits_app/widgets/custom_text_field.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<SignUp> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  // String? email, password;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is SuccessRegisterState) {
            if (state.loginModel!.status == true) {
              CacheHelper.saveData(
                      key: "token", value: state.loginModel!.data!.token)
                  .then((value) {
                token = state.loginModel!.data!.token!;
                navigateTo(context,LoginPage());
              });
            } else {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        height: 22,
                        child: Text(
                          '${'  '}${state.loginModel!.message}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ));
                  });
            }
            
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(children: [
              SafeArea(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
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
                            controller: nameController,
                            label: 'User Name',
                            hintText: 'Enter your User Name',
                            inputType: TextInputType.name,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomFormTextField(
                            controller: emailController,
                            label: 'Email',
                            hintText: 'Enter your Email Address',
                            inputType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomFormTextField(
                            controller: phoneController,
                            label: 'phone',
                            hintText: 'Enter your phone',
                            inputType: TextInputType.phone,
                          ),
                          CustomFormTextField(
                            controller: passwordController,
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
                          Center(
                            child: state is! LoadingRegisterState
                                ? MainButton(
                                    txt: 'Sign Up',
                                    ontap: () {
                                      if (formKey.currentState!.validate()) {
                                        RegisterCubit.get(context).userRegister(
                                            email: emailController.text,
                                            password: passwordController.text,
                                            phone: phoneController.text,
                                            name: nameController.text);
                                      }
                                    })
                                : CircularProgressIndicator(),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              GestureDetector(
                                onTap: () {
                                  //  Navigator.pop(context);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return LoginPage();
                                  })));
                                },
                                child: Text(
                                  'signIn',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 122, 120, 120),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
