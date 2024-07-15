import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:route_task/presentation/cubit/products_states.dart';

import '../../domain/use_cases/get_products_use_case.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  GetProductsUseCase getProductsUseCase;

  @factoryMethod
  ProductsCubit(this.getProductsUseCase) : super(ProductsLoading());

  void getProducts() async {
    emit(ProductsLoading());
    try {
      var products = await getProductsUseCase.invoke();
      emit(ProductsSuccess(products));
    } catch (e) {
      emit(ProductsError(e.toString()));
    }
  }
}
