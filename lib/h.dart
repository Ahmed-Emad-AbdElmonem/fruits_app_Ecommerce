import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopScreen extends StatefulWidget {
  ShopScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ShopCubit.get(context);

          return Scaffold(
            body: cubit.BototmScreens[cubit.scIndex],
            
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              currentIndex: cubit.scIndex,
              onTap: (index) {
                cubit.ChangeBottom(index);
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'home',
                  
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.manage_accounts),
                  label: 'account',
                ),
              ],
            ),
            
          );
        });
  }
}
