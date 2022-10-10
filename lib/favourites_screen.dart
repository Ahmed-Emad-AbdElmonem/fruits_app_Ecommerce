

import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                 shrinkWrap: true,
                 physics:NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Divider(color:Colors.blueGrey ,);
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
                             // mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment:CrossAxisAlignment.center ,
                              children: [
                                Text('Bananas',style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,  ) ,),
                               SizedBox(
                                  height: 5,
                                ), 
                                Row(
                                 // mainAxisAlignment: MainAxisAlignment.center,
                                 // crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    Text('1kg price'),
                                    // عشان الكلام ييجى تحت بعضه حطينا رو وسايذد

                                    SizedBox(width: 14,),
                                  ],
                                ),
                              
                                
                                SizedBox(
                                  width: 150,
                                ),
                              ],
                            ),
                            Row(
                              children: [

                                Text('4.99\$',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,  ) ,),

                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios),
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
             SizedBox(height: 25,),
             MainButton(txt: 'Add All To Cart', ontap: (){}),
             SizedBox(height: 20,),
            ],
          ),
          
        ),
        
      ),
      
    );
  }

}
