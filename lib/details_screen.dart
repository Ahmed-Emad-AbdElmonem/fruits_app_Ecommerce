import 'package:ecommerce_fruits_app/models/all_products_model.dart';
import 'package:ecommerce_fruits_app/models/all_products_model.dart';
import 'package:ecommerce_fruits_app/models/all_products_model.dart';
import 'package:ecommerce_fruits_app/widgets/mainButton.dart';
import 'package:flutter/material.dart';
/*
class DetailsScreen extends StatefulWidget {
   DetailsScreen({Key? key,required this.productModell}) : super(key: key);
   // AllProductsModel? allProductsModel;
    Data? productModell;
    

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        elevation: 0,
        actions: [
          Image.asset('assets/images/save.png'),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                  color: Color(0xffF2F3F2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    '${widget.Data.image}',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.productModell!.price}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181725),
                          ),
                        ),
                        Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${widget.productModell!.price /*quantity*/}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  counter(),
                  
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            
                              'Details',style:TextStyle(fontSize: 18,fontWeight:FontWeight.bold, ) ,
                              
                              ),
                        ),
                            isShowMore ?
                              IconButton(
                          onPressed: () {
                            setState(() {
                              isShowMore = !isShowMore;
                            });
                            
                          },
                          icon: Icon(Icons.keyboard_arrow_down),
                        ) :  IconButton(
                          onPressed: () {
                            setState(() {
                              isShowMore = !isShowMore;
                            });     
                            
                          },
                          icon: Icon(Icons.keyboard_arrow_up),),
                      
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                          
                            'A banana is an elongated, edible fruit botanically a berry[1][2] – produced by several kinds of large herbaceous flowering plants in the genus Musa.[3] In some countries, bananas used for cooking may be called "plantains", distinguishing them from dessert bananas. The fruit is variable in size, color, and firmness, but is usually elongated and curved, with soft flesh rich in starch covered with a rind, which may be green, yellow, red, purple, or brown when ripe. The fruits grow upward in clusters near the top of the plant. Almost all modern edible seedless (parthenocarp) bananas come from two wild species – Musa acuminata and Musa balbisiana. The scientific names of most cultivated bananas are Musa acuminata, Musa balbisiana, and Musa × paradisiaca for the hybrid Musa acuminata × M. balbisiana, depending on their genomic constitution. The old scientific name for this hybrid, Musa sapientum, is no longer used.',
                            maxLines: isShowMore ? 3 : null ,
                            ),
                  ),
                   
                ],
               
              ),
              MainButton(txt: 'Add To Basket',ontap: (){},),
            ],
            
          ),
        ),
      ),
    );
  }
  

 Widget  counter() {
   // int count = 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  count--;
                });
                
              },
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
                      count.toString().padLeft(2, '0'),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
               

                //////
              },
              icon: Icon(
                Icons.add,
                color: Colors.black45,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '\$ ${widget.productModell!.price}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
        ),
      ],
    );
  }

}*/