
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/Auth/login_page.dart';

import 'package:ecommerce_fruits_app/cart_screen.dart';
import 'package:ecommerce_fruits_app/constants.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:ecommerce_fruits_app/end_points.dart';

import 'package:ecommerce_fruits_app/favourites_screen.dart';

import 'package:ecommerce_fruits_app/models/all_products_model.dart';
import 'package:ecommerce_fruits_app/models/change_favorites_model.dart';
import 'package:ecommerce_fruits_app/models/favourites_model.dart';

import 'package:ecommerce_fruits_app/products_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
//  print(value.data.toString());
      /*  print('111111111111111111111111111111111111111111');
     print(ShopLoadingHomeDataState());
      print(ShopSuccessHomeDataState().toString());
      print(ShopErrorHomeDataState().toString());
      // print(allProductsModel!.data!.product[0].name);
      print(allProductsModel!.data!.product);
      print('1111111111111111111111111111111111111111111');*/*/

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);

  int scIndex = 0;
  List<Widget> BototmScreens = [
    ProductsScreen(),
    LoginPage(),
    CartScreen(),
    FavouritesScreen(),
    //AccountPage(),
  ];

  void ChangeBottom(int index) {
    scIndex = index;
    emit(ShopChangeBottomNavState());
  }

  AllProductsModel? allProductsModel;

  Map<int, dynamic> favorites = {};

  getHomeData() {
    print('allProductsModel!.data##############');
    emit(ShopLoadingHomeDataState());
    DioHelper.getData(
      url: Home,
      token: token,
    ).then((value) {
      
      allProductsModel = AllProductsModel.fromJson(value.data);
      

      allProductsModel!.data!.product.forEach((element) {
        favorites.addAll({
         element.id: element.inFavorite,

        });
      },);

      print(favorites.toString());
      //  print(favorites.toString());

      emit(ShopSuccessHomeDataState());
    //  print(allProductsModel!.data!.product);
    }).catchError((error, StackTrace) {
      //  print(error.toString());
      //  print(StackTrace.toString());
      emit(ShopErrorHomeDataState());
    });
  }




  ChangeFavoritesModel? changeFavoritesModel;

  void ChangeFavorites(int productId) {
    emit(ShopLoadingGetFavoritesState());
    favorites[productId] = !favorites[productId];

    emit(ShopChangeFavoritesState());

    DioHelper.postData(
      url: FAVORITES,
      data: {
        "product_id": productId,
      },
      token: token,
    ).then((value) {
      changeFavoritesModel = ChangeFavoritesModel.fromJson(value.data);
     // print(value.data);

   // عشان لو حصل اى ايرور يرجع الايقون زى ماكانت يعنى عشان الايقون بس ترجع
      if (changeFavoritesModel!.status == false) {
        favorites[productId] = !favorites[productId];
      }else{
         getFavorites();
      }
      emit(ShopSuccessChangeFavoritesState(changeFavoritesModel));
    }).catchError((onError) {
      // عشان لو حصل اى ايرور يرجع الايقون زى ماكانت
      favorites[productId] = !favorites[productId];
      emit(ShopErrorChangeFavoritesState());
    });
  }






FavModel? favModel;

  void getFavorites() {
   // emit(shopload());

    DioHelper.getData(
      url: FAVORITES,
      token: token,
    ).then((value) {
      
      favModel = FavModel.fromJson(value.data);
        print(value.data.toString());
      emit(ShopSuccessGetFavoritesState());
    }).catchError((e) {
      print(e.toString());
      emit(ShopErrorGetFavoritesState());
    });
  }














/*

  LoginModel? userModel;

   getUserData() {
    emit(LoadingLoginState());

    DioHelper.getData(
      url: PROFILE,
      token: token,
    ).then((value) {
      // print(userModel!.data!.name);
      userModel = LoginModel.fromJson(value.data);

      emit(SuccessLoginState(userModel));
    }).catchError((onError) {
      emit(ErrorLoginState(onError));
    });
  }*/
}
