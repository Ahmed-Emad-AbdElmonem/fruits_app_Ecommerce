import 'package:ecommerce_fruits_app/Auth/Cubit/search_states.dart';
import 'package:ecommerce_fruits_app/constants.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:ecommerce_fruits_app/end_points.dart';
import 'package:ecommerce_fruits_app/models/search_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

 SearchModel? model ;
 

  void search(String text) {
    emit(SearchLoadingState());

    DioHelper.postData(url: SEARCH, token: token, data: {
      'text': text,
    }).then((value) {
      
 model = SearchModel.fromJson(value.data);
      emit(SearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(SearchErrorState());
    });
  }
}
