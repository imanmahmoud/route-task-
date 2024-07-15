import 'package:injectable/injectable.dart';
import 'package:route_task/data/data_source/remote/products_remote_data_source.dart';
import 'package:route_task/domain/entities/product.dart';
import 'package:route_task/domain/repository/products_repository.dart';

@Injectable(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  ProductsRemoteDataSource productsRemoteDataSource;

  @factoryMethod
  ProductsRepositoryImpl(this.productsRemoteDataSource);

  @override
  Future<List<Product>?> getProducts() {
    return productsRemoteDataSource.getProducts();
  }
}
