import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getALlCategories() async {
    List<dynamic> data = await Api().get(
        url: 'https://fakestoreapi.com/products/categories');
    // http.Response response  = await http.get(
    //     Uri.parse('https://fakestoreapi.com/products/categories'));


//------------------------DECODE PART sTrt
    return data;
  }
}
//----------------------------------------
