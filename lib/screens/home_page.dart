import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id ='HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         IconButton(
             onPressed:(){},
             icon:Icon(
               FontAwesomeIcons.cartPlus,
               color:Colors.black,))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: Text('New trend',
          style: TextStyle(color: Colors.black),

        ),
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8.0,top:65),
        child: FutureBuilder<List<ProductModel?>>(
          future: AllProductsService().getAllproducts(),
          builder:  (context,snapshot) {


              //List<ProductModel> products = snapshot.data != null?;
              return GridView.builder(
                itemCount:10,
                // products.length,

                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 100
                  ),
                  itemBuilder: (context,index){
                    return CustomCard();
                  });


          }  ,
        ),
        
      ),
    );
  }
}
