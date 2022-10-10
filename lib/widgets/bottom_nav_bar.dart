/*import 'package:ecommerce_fruits_app/h.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({Key? key, }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   int scIndex=0;

   List<Widget> widgetPages=[
     h(),h(),h(),h(),h(),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        
           
       ]
       ) ,

        /* Container(
          height:58 ,
          width:double.infinity ,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround ,
              children: [
                Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Image.asset('assets/images/shop.png'),
                    Text('shop',style:TextStyle(color: Color(0xff53B175),fontWeight:FontWeight.w600,fontSize: 12, ) ,),
                  ],
                ),
                Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Image.asset('assets/images/explore.png'),
                    Text('explore',style:TextStyle(color: Color(0xff53B175),fontWeight:FontWeight.w600,fontSize: 12, ) ,),
                  ],
                ),
                Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Image.asset('assets/images/cart.png'),
                    Text('cart',style:TextStyle(color: Color(0xff53B175),fontWeight:FontWeight.w600,fontSize: 12, ) ,),
                  ],
                ),
                Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Image.asset('assets/images/fav.png'),
                    Text('Favourites',style:TextStyle(color: Color(0xff53B175),fontWeight:FontWeight.w600,fontSize: 12, ) ,),
                  ],
                ),
                Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Image.asset('assets/images/acc.png'),
                    Text('Account',style:TextStyle(color: Color(0xff53B175),fontWeight:FontWeight.w600,fontSize: 12, ) ,),
                  ],
                ),
                
              ],
            ),
          ),
        ) ,*/
      
    )  ;
  }}*/