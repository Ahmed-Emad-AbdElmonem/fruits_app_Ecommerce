

import 'package:ecommerce_fruits_app/account_page.dart';
import 'package:ecommerce_fruits_app/cart_screen.dart';
import 'package:ecommerce_fruits_app/details_screen.dart';
import 'package:ecommerce_fruits_app/favourites_screen.dart';
import 'package:ecommerce_fruits_app/Auth/login_page.dart';


import 'package:ecommerce_fruits_app/widgets/Navigator_widget.dart';


import 'package:flutter/material.dart';

class h extends StatefulWidget {
  h({
    Key? key,
    
   
  }) : super(key: key);

  @override
  State<h> createState() => _hState();
}

class _hState extends State<h> {
 

  List<Widget> widgetPages=[
    
     ProductsScreen(),LoginPage(),CartScreen(),FavouritesScreen(),AccountPage(),
   ];

  int scIndex=0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     bottomNavigationBar:
       BottomNavigationBar(
        selectedItemColor:Colors.green ,
        currentIndex: scIndex,
        onTap:(index){

setState(() {
  scIndex = index;
});

        } ,
         type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.shop) ,
          label:'shop' ,
        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.explore) ,
          label:'explore' ,
        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.shopping_cart) ,
          label:'cart' ,
        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.favorite) ,
          label:'favorite' ,
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.manage_accounts) ,
          label:'account' ,
        ),
        
           
       ],
       ) ,
  // bottomNavigationBar: BottomNavBar(),

      body: widgetPages[scIndex],
     
    );
  }

  
}
Widget ProductsScreen(){
  List<ProductCard> productdata = [
    ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ),
     ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ), ProductCard(
      img: 'assets/images/banana.png',
      title: 'Organic Banana',
      quantity: '1kg, pricing',
      id: 1,
      price: 4,
    ),
   
  ];
  return SafeArea(
       
        child: Container(
          
         // height: MediaQuery.of(context).size.height*2.5,
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/carrot_orange.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
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
                  height: 130,
                  width:1000 /*MediaQuery.of(context).size.width / 1.05*/,
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
                            fontWeight: FontWeight.w700, fontSize: 19),
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
                      child: Image.asset('assets/images/tl.png', height: 80),
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
                physics:NeverScrollableScrollPhysics(),
                 
                // او دى عشان نعمل سكرول
               // ClampingScrollPhysics() ,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                   //  crossAxisSpacing:0,
                   // mainAxisSpacing: 0,
                      childAspectRatio: 1 / 1.2,
                  ),
                    
                  itemCount: productdata.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ProductCard(
                        press: () {
                          return NavigateTo(context, DetailsScreen(
                            // عيد على الكود دا تانى عشان تفهم ازاى بعتله الداتا
                            // لصفحة الديتيلز سكرين
                            productCard:productdata[index] ,
                            
                          ),);
                        },
                    productCard: productdata[index], 
                  ),
                  // المشكلة هنااااااااااااااااااااااااااااا
                ),
               /* 
                SizedBox(height : 
                MediaQuery.of(context).size.height / 10 ,)*/
              SizedBox(height: 10,)
              
              ],
              
            ),
          ),
        ),
        
        );
}


class ProductCard extends StatelessWidget {

// هنا هنجيب اوبجكت من الموديل عشان نحط بيانات المنتج اللى جاية من اى بى اى
  ProductCard({
    this.img,
    this.title,
    this.quantity,
    this.id,
    this.price,
    this.productCard, 
    this.press,
  });
  late final String? img, title, quantity;
  late final int? id, price;
  final ProductCard? productCard;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
        // height:200,
        //width: 80,
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
            Image.asset('${productCard!.img}'),
            SizedBox(
              height: 5,
            ),
            Text(
              '${productCard!.title}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text('${productCard!.quantity}',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                )),
            Row(
              // crossAxisAlignment:CrossAxisAlignment.center ,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '\$${productCard!.price}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
}
