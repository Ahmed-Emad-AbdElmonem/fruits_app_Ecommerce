/*import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Row(
                children: [
                  Text('eeee'),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Color(0xff53B175),
                      ))
                ],
              ),
              
              leading: Image.asset(
                'assets/images/a.jpg',
              ),
              subtitle: Text('e@gmail.com'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}*/

/////////
///
///
///
////
/*
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/shop_states.dart';
import 'package:ecommerce_fruits_app/Auth/login_page.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
      listener: (context, state) {} ,
      builder: (context, state) {
        var cubit= ShopCubit.get(context).userModel;
        return 
       Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/a.jpg',
                        height: 120,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      cubit!.data!.name ,
                                      maxLines: 2,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color(0xff181725),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit,
                                        color: Color(0xff53B175),
                                      )),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(
                                  cubit.data!.email ,
                                  maxLines: 2,
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Color(0xff7C7C7C),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: Container(
                      child: AcountDetails(
                          icon1: Icon(Icons.badge_sharp),
                          icon2: Icon(Icons.arrow_forward_ios),
                          txt: 'Orders'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.details),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'My Details'),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.location_pin),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'Delivery Address'),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.payment),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'Payment Methods'),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.card_giftcard),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'Promo Cord'),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.notifications),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'Notifecations'),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.help),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'Help'),
                  Divider(
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AcountDetails(
                      icon1: Icon(Icons.question_mark),
                      icon2: Icon(Icons.arrow_forward_ios),
                      txt: 'About'),
                  Divider(
                    color: Color.fromARGB(255, 11, 163, 21),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MainButton(txt: 'Log Out', ontap: (){}),
                ],
              ),
            ),
          ),
        ),
    
    
    
        
      );
      } ,

    );



}


 Widget AcountDetails(
      {required Icon icon1, required String txt, required Icon icon2}) {
    return InkWell(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return LoginPage();
          
      })));
      },
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          icon1,
          SizedBox(
            width: 20,
          ),
          Text(
            txt,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Spacer(),
          icon2,
        ],
      ),
    );
  }


}

*/
 












/*
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 40,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/a.jpg',
                height: 120,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                       

                        children: [
                          Container(
                            
                            width: 120,
                          margin: EdgeInsets.only(right: 5),
                            child: Text(
                              
                              'ahmed emad 10000102000',
                              maxLines: 2,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Color(0xff181725),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: Color(0xff53B175),
                              )),
                        ],
                      ),
                     Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 80,
                     width: double.infinity,
                        child: Text('ahmedemad10002000@gmail.com',
                            maxLines: 2,
                            style: TextStyle(
                             overflow: TextOverflow.ellipsis,
                              color: Color(0xff7C7C7C),
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/

/*
SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Row(
                children: [
                  Text('ee'),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Color(0xff53B175),
                      ))
                ],
              ),
              
              leading: Image.asset(
                'assets/images/a.jpg',
              ),
              subtitle: Text('eee@gmail.com'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );*/