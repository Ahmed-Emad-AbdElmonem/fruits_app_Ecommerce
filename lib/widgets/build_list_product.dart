import 'package:ecommerce_fruits_app/Auth/Cubit/shop_cubit.dart';
import 'package:ecommerce_fruits_app/models/favourites_model.dart';

import 'package:flutter/material.dart';

Widget FavListProduct(DataForFav model, context) {
  return Container(
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(
          '${model.product?.image}',
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
                '${model.product?.name}',
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
                    '${model.product?.price}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  IconButton(
                      onPressed: () {
                        ShopCubit.get(context)
                            .ChangeFavorites(model.product?.id);
                      },
                      icon: Icon(
                        ShopCubit.get(context).favorites[model.id]
                            ? Icons.favorite
                            : Icons.favorite_border,
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
