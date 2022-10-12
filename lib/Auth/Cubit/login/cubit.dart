import 'package:ecommerce_fruits_app/Auth/Cubit/login/states.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:ecommerce_fruits_app/end_points.dart';
import 'package:ecommerce_fruits_app/models/login_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(IntitialState());

static LoginCubit get(context) => BlocProvider.of(context);
 LoginModel? loginModel;

 void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoadingState());

    DioHelper.postData(url: LOGIN, query: {
      'email': email,
      'password': password,
    }).then((value) {
      print(value);
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel!.data.email);

      emit(SuccessState());
    }).catchError((error) {
      print(error.toString());
      // print(error.response);

      emit(ErrorState(error.toString()));
    });
  }
}
