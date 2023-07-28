import 'package:ecommerce_fruits_app/Auth/Cubit/login/login_cubit.dart';

import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/Auth/resgister_page.dart';
import 'package:ecommerce_fruits_app/cashhelper.dart';
import 'package:ecommerce_fruits_app/constants.dart';
import 'package:ecommerce_fruits_app/h.dart';
import 'package:ecommerce_fruits_app/widgets/Navigator_widget.dart';
import 'package:ecommerce_fruits_app/widgets/custom_text_field.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

 // static String id = 'login page';

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

 // String? email, password;
  TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, ShopStates>(
        listener: (context, state) {
          if (state is SuccessLoginState) {
            
            if(state.loginModel!.status == true /*state.loginModel!.status*/){
             CacheHelper.saveData(key: "token", value: state.loginModel!.data!.token).then((value){
              token = state.loginModel!.data!.token!;
                navigateTo(context, ShopScreen());
              });
            }else{
              showModalBottomSheet(context: context, builder: (context){
             return Container(
              height: 22,
              child: Text(
               
                '${'  '}${state.loginModel!.message}',
                style: TextStyle(fontWeight:FontWeight.bold,color:Colors.redAccent  ),
                )
                );
              }
              );
                 
            }
          /*  token=state.loginModel!.data!.token;
            print(token);*/
            
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
                            'Login',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Enter your emails and password',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7C7C7C)),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          CustomFormTextField(
                            controller:emailController ,
                            label: 'Email',
                            hintText: 'Enter your Email Address',
                            inputType: TextInputType.emailAddress,
                            
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          CustomFormTextField(
                            controller:passwordController ,
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
                           // alignment: Alignment.centerRight,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          state is LoadingLoginState
                              ? Center(child: CircularProgressIndicator())
                              : Center(
                                  child: MainButton(
                                    
                                      txt: 'Login',
                                      ontap: () {
                                        if (formKey.currentState!.validate()) {
                                          LoginCubit.get(context).userLogin(
                                              email: emailController.text,
                                              password:
                                                  passwordController.text);
                                                  
                                        }
                                      }),
                                ),

                          /*   child: ConditionalBuilder(
                              condition: state is! LoadingState,
                              builder: (context) => MainButton(
                                  txt: 'Login',
                                  ontap: () {
                                    if (formKey.currentState!.validate()) {
                                      LoginCubit.get(context).userLogin(
                                        email: emailController.text,
                                        password: passwordController.text);
                                    }
                                    
                                  }),
                              fallback: (context) =>
                                  CircularProgressIndicator(),
                            ),*/

                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont have an account?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              GestureDetector(
                                onTap: () {
                                  navigateTo(context, SignUp());
                                },
                                child: Text(
                                  'signUp',
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
