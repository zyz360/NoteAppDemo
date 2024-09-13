import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;
class AllProductsService{

  Future<List<ProductModel>> getAllproducts() async{

    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');

      //------------------------DECODE PART sTrt-------------------------
           List<ProductModel> productsList = [];


           /*this for loop takes the list of decoded response (prodcutsList) and loops thoruh it
           and each time we take the value inside the list and decode each one to a (ProductModel)
            and store it in (productsList)*/
           for(int i = 0 ; i<data.length; i++){
             productsList.add(
               ProductModel.fromJson(data[i]),);
           }
           return productsList;
     //------------------------DECODE PART end-------------------------
      }
   }

