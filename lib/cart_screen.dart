

import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
      listener: (context, state) {} ,
      builder: (context, state) {
        
       return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'My Cart',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                   shrinkWrap: true,
                   physics:NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/banana.png'),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment:CrossAxisAlignment.center ,
                                children: [
                                  Text('red pepper'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('1kg price'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  counterWidget(),
                                  SizedBox(
                                    width: 190,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove_circle),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text('4 dolar'),
                                  SizedBox(
                                    height: 25,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Stack(children: [
                  MainButton(
                    ontap: () {
                     showModalBottomSheet(context:context ,builder: (context) {
                       return Container(
    
                        color:Color(0xffF2F3F2) ,
                        height: MediaQuery.of(context).size.height/1.5,
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              
                              crossAxisAlignment:CrossAxisAlignment.start ,
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                  children: [
                                    Text('Check out'),
                                    IconButton(onPressed: (){
                          
                                    }, icon:Icon(Icons.exit_to_app,) )
                                  ],
                                  
                                ),
                                Divider(),
                                Row(
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                  children: [
                                     Text('Delivery'),
                                     Text('Selected Method'),
                                  ],
                                ),
                                Divider(),
                                Row( 
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                  children: [
                                     Text('Payment'),
                                    IconButton(onPressed: (){
                          
                                    }, icon:Icon(Icons.exit_to_app,), ),
                                  ],),
                                Divider(),
                                Row(
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                   children: [
                                     Text('promo code'),
                                    Text('pick discount'),
                                  ],),
                                Divider(),
                                Row( 
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                  children: [
                                     Text('total cost'),
                                    Text('13.99'),
                                  ],),
                                Divider(),
                                SizedBox(height: 10,),
                                Text('By placing an order you agree to our Terms And Conditions'),
                             SizedBox(height: 40,),
                              Center(
                                child: MainButton(txt: 'Place order', ontap: (){
                          
                                }),
                              )
                              
                              ],
                            ),
                          ),
                        ) ,
                       );
                     },);
                    },
                    txt: 'Goto Check out',
                  ),
                  Positioned(
                    left: 720,
                    top: 15,
                    child: Container(
                      height: 35,
                      width: 50,
                      color: Color(0xff489E67),
                      child: Center(
                        child: Text(
                          '\$${12.99}',
                          style: TextStyle(
                            color: Color(0xffFCFCFC),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ]),
              ],
            ),
            
          ),
          
        ),
        
        ); 
      }
    );
  }

  Widget counterWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 40,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.remove,
            color: Colors.black45,
          ),
        ),
        SizedBox(
          height: 43,
          width: 37,
          child: Center(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color(0xffFECEFF1),
                ),
              ),
              child: Center(
                child: Text(
                  '0',
                  //  count.toString().padLeft(2, '0'),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            //////
          },
          icon: Icon(
            Icons.add,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
