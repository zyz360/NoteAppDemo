import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
class CustomCard extends StatelessWidget {
   CustomCard({super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          // height: 130,
          // width: 220,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10),
                )
              ]
          ),
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(//product.title.substring(0,6),
                      'item',
                      style: TextStyle(
                        color:Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(//product.price.toString() ?? ,
                          '200',
                          style: TextStyle(
                            color:Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.favorite)
                      ],
                    ),
                  ]
              ),
            ),
          ),
        ),
        Positioned(
          right: 32,
          top:-65,
          child: Image.network(

            'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
            height: 100,),
        )
      ],
    );
  }
}
