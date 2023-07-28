import 'package:ecommerce_fruits_app/Auth/Cubit/search_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/login_page.dart';
import 'package:ecommerce_fruits_app/cashhelper.dart';
import 'package:ecommerce_fruits_app/constants.dart';
import 'package:ecommerce_fruits_app/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();

  runApp(const FruitsMarket());
  print(token);
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      providers: [
        BlocProvider<ShopCubit>(
      create: (BuildContext context) => ShopCubit()..getHomeData()..getFavorites(),
    ),
      BlocProvider<SearchCubit>(
      create: (BuildContext context) => SearchCubit()..search('rrrrrrrrrrrrrrrr'),
      )
      ],

       
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //  title: 'Flutter Demo',
        home: /*token!= null?*/ LoginPage() /* :LoginPage()*/,
        /*  initialRoute: '/home',
        routes: {
          'splash': (context) => SplashView(),
          '/': (context) => LoginPage(),
          '/signup': (context) => SignUp(),
          '/home': (context) => HomePage(),
        },*/
      ),
    );
  }
}
