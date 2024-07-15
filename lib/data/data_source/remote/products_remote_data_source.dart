import 'package:route_task/domain/entities/product.dart';

abstract class ProductsRemoteDataSource {
  Future<List<Product>?> getProducts();
}
