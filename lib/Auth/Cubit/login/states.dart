abstract class LoginStates {}

class IntitialState extends LoginStates{}

class LoadingState extends LoginStates{}

class SuccessState extends LoginStates{}

class ErrorState extends LoginStates{
  final String error;

  ErrorState(this.error);
  
}