import '../../domain/entities/product.dart';

sealed class ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsSuccess extends ProductsState {
  List<Product>? products;

  ProductsSuccess(this.products);
}

class ProductsError extends ProductsState {
  String message;

  ProductsError(this.message);
}
