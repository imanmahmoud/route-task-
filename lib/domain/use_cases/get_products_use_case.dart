import 'package:injectable/injectable.dart';
import 'package:route_task/domain/entities/product.dart';
import 'package:route_task/domain/repository/products_repository.dart';

@injectable
class GetProductsUseCase {
  ProductsRepository productsRepository;

  @factoryMethod
  GetProductsUseCase(this.productsRepository);

  Future<List<Product>?> invoke() {
    return productsRepository.getProducts();
  }
}
