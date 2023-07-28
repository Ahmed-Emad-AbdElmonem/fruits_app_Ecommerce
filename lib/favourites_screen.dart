import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/widgets/build_list_product.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Favourite',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: 
         /* ShopCubit.get(context).favorites == null ||
          ShopCubit.get(context).favorites.values.isEmpty
                 // ShopCubit.get(context).favModel!.data!.data.isEmpty
                   ? Text('not have favorites'):*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  state is! ShopLoadingGetFavoritesState ?
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.blueGrey,
                      );
                    },
                    itemCount:
                        ShopCubit.get(context).favModel!.data!.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FavListProduct(
                        
                          ShopCubit.get(context).favModel!.data!.data[index],context);
                    },
                  ) 
                  : CircularProgressIndicator(),
                
                
                  SizedBox(
                    height: 25,
                  ),
                  ShopCubit.get(context).favModel == null ||
                  ShopCubit.get(context).favModel!.data!.data.isEmpty
                   ? const Text('not have favorites'):
                  Center(
                    child: MainButton(
                      txt: 'Add All To Cart' ,
                      
                       ontap: () {})),
                   SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}
