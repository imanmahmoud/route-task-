import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/di/di.dart';
import 'package:route_task/presentation/cubit/products_cubit.dart';
import 'package:route_task/presentation/cubit/products_states.dart';
import 'package:route_task/presentation/widgets/search_bar_with_cart_item.dart';

import '../widgets/product_item.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  var cubit = getIt.get<ProductsCubit>();

  @override
  void initState() {
    // TODO: implement initState
    cubit.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Image.asset(
              'assets/images/route_logo.png',
              height: 22.h,
              width: 66.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 18.h,
            ),
            const SearchBarWithCartItem(),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
                child: BlocBuilder<ProductsCubit, ProductsState>(
                    bloc: cubit,
                    builder: (context, state) {
                      switch (state) {
                        case ProductsLoading():
                          return Center(
                              child: CircularProgressIndicator(
                            color: Theme.of(context).primaryColor,
                          ));
                        case ProductsError():
                          return Center(
                            child: Column(
                              children: [
                                Text(state.message),
                                ElevatedButton(
                                  onPressed: () {
                                    cubit.getProducts();
                                    setState(() {});
                                  },
                                  child: const Text('try again'),
                                )
                              ],
                            ),
                          );
                        case ProductsSuccess():
                          return GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 16.h,
                                    crossAxisSpacing: 16.w,
                                    childAspectRatio: 2 / 2.5),
                            itemBuilder: (context, index) =>
                                ProductItem(state.products![index]),
                            itemCount: state.products?.length ?? 0,
                          );
                      }
                    }))
          ],
        ),
      ),
    ));
  }
}
