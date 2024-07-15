import 'package:injectable/injectable.dart';
import 'package:route_task/data/api_manager.dart';
import 'package:route_task/data/data_source/remote/products_remote_data_source.dart';
import 'package:route_task/domain/entities/product.dart';

@Injectable(as: ProductsRemoteDataSource)
class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  ApiManager apiManager;

  @factoryMethod
  ProductsRemoteDataSourceImpl(this.apiManager);

  @override
  Future<List<Product>?> getProducts() async {
    var response = await apiManager.getProducts();
    return response.products
        ?.map((productModel) => productModel.toProduct())
        .toList();
  }
}
