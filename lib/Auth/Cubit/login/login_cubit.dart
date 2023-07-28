import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:ecommerce_fruits_app/end_points.dart';
import 'package:ecommerce_fruits_app/models/login_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<ShopStates> {
  LoginCubit() : super(IntitialLoginState());

  static LoginCubit get(context) => BlocProvider.of(context);
  LoginModel? loginModel;
  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoadingLoginState());

    DioHelper.postData(url: LOGIN, data: {
      'email': email,
      'password': password,
    }).then((value) {
      // print(value.data['message']);
      // print(value.data.toString());
      loginModel = LoginModel.fromJson(value.data);
      // debugPrint(value.data.toString());
      emit(SuccessLoginState(loginModel));
    }).catchError((error) {
      print(error.toString());

      emit(ErrorLoginState(error.toString()));
    });
  }
}
