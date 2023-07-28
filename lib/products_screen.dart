import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/Search_screen.dart';
import 'package:ecommerce_fruits_app/models/all_products_model.dart';
import 'package:ecommerce_fruits_app/widgets/Navigator_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {
        if (state is ShopSuccessChangeFavoritesState) {
          if(state.changefavmodel!.status== false||state.changefavmodel!.status== null){
            showModalBottomSheet(context: context, builder: (context){
         return     Container(
              height: 22,
              child: Text(
               '${'  '}${state.changefavmodel!.message}' ,
                style: TextStyle(fontWeight:FontWeight.bold,color:Colors.redAccent),
                )
                );
              });

          }
          print('esraaaaaaaaaaaaaaaaaaa');
          print(state.toString());
        }
      },
      builder: (context, state) {
        // AllProductsModel?   allProductsModel;
        products? product;

        var cubit = ShopCubit.get(context);
        print(state.runtimeType);
        return state is ShopInitialState ||
                state is ShopLoadingHomeDataState ||
                ShopCubit.get(context).allProductsModel == null
            ? Center(child: CircularProgressIndicator())
            : state is ShopErrorHomeDataState
                ? Center(child: Text('have no data'))
                :
                // ShopCubit.get(context).allProductsModel == null
                Scaffold(
                    body: SafeArea(
                      child: Container(
                        // ShopScreeneigShopScreent: MediaQuery.of(context).size.ShopScreeneigShopScreent*2.5,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Image.asset(
                                  "assets/images/carrot_orange.png",
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  onTap: () {
                                    navigateTo(context, SearchScreen());
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xffFF2F3F2),
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(),

                                    hintText: 'search store',
                                    // enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(255, 226, 217, 217),
                                  ),
                                  borderRadius: BorderRadius.circular(13),
                                ),

                                //???????????
                                height: 130,

                                width:
                                    340 /*MediaQuery.of(context).size.widtShopScreen / 1.05*/,
                                child: Stack(children: [
                                  Positioned(
                                    child: Image.asset('assets/images/vb.png'),
                                  ),
                                  Positioned(
                                    top: 50,
                                    left: 130,
                                    child: Text(
                                      'Fresh Vegetables',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 19),
                                    ),
                                  ),
                                  Positioned(
                                    top: 75,
                                    left: 150,
                                    child: Text(
                                      'Get Up To 40% OFF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: Color(0xff53B175)),
                                    ),
                                  ),
                                  Positioned(
                                    top: -19,
                                    left: 180,
                                    child: Image.asset('assets/images/tl.png',
                                        height: 80),
                                  ),
                                  Positioned(
                                    top: 86,
                                    left: 300,
                                    child: Image.asset(
                                      'assets/images/bl.png',
                                      height: 45,
                                    ),
                                  ),
                                ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),

                                // او دى عشان نعمل سكرول
                                // ClampingScrollPShopScreenysics() ,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,

                                  //  crossAxisSpacing:0,
                                  // mainAxisSpacing: 0,
                                  childAspectRatio: 1.5 / 2.5,
                                ),

                                itemCount: cubit
                                    .allProductsModel!.data!.product.length,
                                // allProductsModel!.data!.product!.length,

                                itemBuilder: (
                                  BuildContext context,
                                  int index,
                                ) =>
                                    ProductCard(
                                  product: cubit
                                      .allProductsModel!.data!.product[index],
                                  //  cubit.allProductsModel!.data!.products![index],
                                  press: () {
                                    /* return navigateTo(
                                        context,
                                        DetailsScreen(
                                            productModell: cubit
                                                .allProductsModel!
                                                .data!
                                                .products![index]),
                                        
                                      );*/
                                  },
                                ),

                                // تجربة  Text('${allProductsModel!.data!.products[index].image}'),
                              )
                              /*  else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }*/

                              /* FutureBuilder(
                            future: cubit.getHomeData(),
                            // initialData: InitialData,

                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                // List<AllProductsModel> products=snapshot.data;
                                AllProductsModel? allProductsModel;

                                return GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),

                                  // او دى عشان نعمل سكرول
                                  // ClampingScrollPShopScreenysics() ,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    //  crossAxisSpacing:0,
                                    // mainAxisSpacing: 0,
                                    childAspectRatio: 1 / 1.2,
                                  ),

                                  itemCount:
                                      allProductsModel!.data!.product!.length,

                                  itemBuilder: (
                                    BuildContext context,
                                    int index,
                                  ) =>
                                      ProductCard(
                                    product:
                                    cubit.allProductsModel!.data!.product![index],
                                   //  cubit.allProductsModel!.data!.products![index],
                                    press: () {
                                     /* return navigateTo(
                                        context,
                                        DetailsScreen(
                                            productModell: cubit
                                                .allProductsModel!
                                                .data!
                                                .products![index]),
                                        
                                      );*/
                                    },
                                  ),

                                  // تجربة  Text('${allProductsModel!.data!.products[index].image}'),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),*/
                              /* 
               SizedBox(ShopScreeneigShopScreent : 
               MediaQuery.of(context).size.ShopScreeneigShopScreent / 10 ,)*/
                              ,
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
      },
    );
  }
}

// دى هتتحط جوا الجريد فيو
class ProductCard extends StatelessWidget {
  ProductCard({required this.product, this.press, context});
// هنا هنجيب اوبجكت من الموديل عشان نحط بيانات المنتج اللى جاية من اى بى اى
  // Data? product;
  products product;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
        // ShopScreeneigShopScreent:200,
        //widtShopScreen: 80,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 221, 207, 207),
          ),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Image.network(
              '${product.image}',
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.contain,
            )),
            SizedBox(
              height: 5,
            ),
            Text(
              '${product.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('1 piece',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    )),
                Spacer(),
                IconButton(
                  onPressed: () {
                    // print(product.id);
                    ShopCubit.get(context).ChangeFavorites(product.id);
                  },
                  icon: Icon(
                      ShopCubit.get(context).favorites[product.id] == true
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.green),
                ),
              ],
            ),
            Row(
              // crossAxisAlignment:CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      child: Text(
                        '\$${product.price}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 3,
                  ),
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            /*
            // دى ايقونة القلب هبقى اعدل مكانها بعدين
            CircleAvatar(
              radius: 15,
              backgroundColor:ShopCubit.get(context).favorites[product!.id] == true ? Colors.amber : Colors.grey ,
              child: IconButton(
              onPressed: () {
                ShopCubit.get(context).ChangeFavorites(product!.id);
                
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
            ),
            */
          ],
        ),
      ),
    );
  }
}
