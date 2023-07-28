

import 'package:ecommerce_fruits_app/models/search_model.dart';

import 'package:flutter/material.dart';

Widget SearchListProduct(DataProduct model , context) {
  return Container(
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          '${model.image}',
          height: 110,
          width: 100,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${model.name}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  // overflow:TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
              SizedBox(
                height: 10,
              ),
              Text('price for 1 piece'),

              //  SizedBox(height: 10,),

              Row(
                children: [
                  Text(
                    '${model.price}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                 /* IconButton(
                      onPressed: () {
                        ShopCubit.get(context)
                            .ChangeFavorites(model.id);
                      },
                      icon: Icon(
                        ShopCubit.get(context).favorites[model.id]
                            ? Icons.favorite
                            : Icons.favorite_border,
                      )),*/
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
