import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:route_task/data/model/products_response/products_response.dart';

@singleton
class ApiManager {
  static const baseUrl = 'dummyjson.com';

  Future<ProductsResponse> getProducts() async {
    var uri = Uri.https(baseUrl, '/products');
    try {
      var response = await http.get(uri);
      var json = jsonDecode(response.body);
      var productResponse = ProductsResponse.fromJson(json);
      return productResponse;
    } catch (e) {
      rethrow;
    }
  }
}
