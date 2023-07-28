import 'package:ecommerce_fruits_app/Auth/Cubit/Register_states.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:ecommerce_fruits_app/end_points.dart';
import 'package:ecommerce_fruits_app/models/login_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(IntitialRegisterState());

  static RegisterCubit get(context) => BlocProvider.of(context);
  LoginModel? registerModel;

  void userRegister({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) {
    emit(LoadingRegisterState());

    DioHelper.postData(url: Register, data: {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
    }).then((value) {
      registerModel = LoginModel.fromJson(value.data);
       debugPrint(value.data.toString());
      print(registerModel?.data);

      emit(SuccessRegisterState(registerModel));
    }).catchError((error, StackTrace) {
      print(error.toString());

      print(StackTrace.toString());
      emit(ErrorRegisterState(error.toString()));
    });
  }
}
