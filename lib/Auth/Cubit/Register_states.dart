import 'package:ecommerce_fruits_app/models/login_model.dart';

abstract class RegisterStates {}

class IntitialRegisterState extends RegisterStates{}

class LoadingRegisterState extends RegisterStates{}

class SuccessRegisterState extends RegisterStates{
  LoginModel? loginModel;
  SuccessRegisterState(this.loginModel);
}

class ErrorRegisterState extends RegisterStates{
  final String error;

  ErrorRegisterState(this.error);
  
}