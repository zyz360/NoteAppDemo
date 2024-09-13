import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService{
     Future<List<ProductModel>> getCategoriesProducts ({required String categoryName}) async{

       List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

       // http.Response response  = await http.get(
       //     Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
       /*note that the : is not allowed here (its made by postman)
        https://fakestoreapi.com/products/category/:category_name  THIS IS WRONG
        https://fakestoreapi.com/products/category/category_name   THIS IS RIGHT  */


       //------------------------DECODE PART sTrt-------------------------

         List<ProductModel> productsList = [];

         /*this for loop takes the list of decoded response (prodcutsList) and loops thorough it
       and each time we take the value inside the list and decode each
       one to a (ProductModel) and store it in (productsList)*/
         for(int i = 0 ; i<data.length; i++) {
           productsList.add(
             ProductModel.fromJson(data[i]),);
         }
         return productsList;



       //------------------------DECODE PART eNd-------------------------


     }
}