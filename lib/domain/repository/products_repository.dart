import 'package:route_task/domain/entities/product.dart';

abstract class ProductsRepository {
  Future<List<Product>?> getProducts();
}
