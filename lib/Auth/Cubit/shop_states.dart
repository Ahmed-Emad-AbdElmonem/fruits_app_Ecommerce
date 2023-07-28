import 'package:ecommerce_fruits_app/models/change_favorites_model.dart';
import 'package:ecommerce_fruits_app/models/login_model.dart';

abstract class ShopStates{}

class ShopInitialState extends ShopStates{}


class ShopChangeBottomNavState extends ShopStates{}


////////////////////////////////////

class ShopLoadingHomeDataState extends ShopStates{}
class ShopSuccessHomeDataState extends ShopStates{}
class ShopErrorHomeDataState extends ShopStates{}

//////////////
class ShopChangeFavoritesState extends ShopStates{}
class ShopSuccessChangeFavoritesState extends ShopStates{
   ChangeFavoritesModel? changefavmodel;
   ShopSuccessChangeFavoritesState(this.changefavmodel);
}
class ShopErrorChangeFavoritesState extends ShopStates{}
//////////// 
class ShopLoadingGetFavoritesState extends ShopStates{}
class ShopErrorGetFavoritesState extends ShopStates{}
class ShopSuccessGetFavoritesState extends ShopStates{}
///////////////////
class ShopLoadingUserDataState extends ShopStates{}
class ShopSuccessUserDataState extends ShopStates{}
class ShopErrorUserDataState extends ShopStates{}

///////// 

class ShopSuccessAddToCartState extends ShopStates{}
class ShopErrorAddToCartState extends ShopStates{}
/////// 

class IntitialLoginState extends ShopStates{}

class LoadingLoginState extends ShopStates{}

class SuccessLoginState extends ShopStates{
  LoginModel? loginModel;
  SuccessLoginState(this.loginModel);
}

class ErrorLoginState extends ShopStates{
  final String error;

  ErrorLoginState(this.error);
  
}