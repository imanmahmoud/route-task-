import 'package:flutter/material.dart';
import 'package:route_task/core/theming_manager.dart';
import 'package:route_task/presentation/screens/products_screen.dart';

import 'core/di/di.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'products task',
      theme: ThemeManager.mainTheme,
      home: const ProductsScreen(),
    );
  }
}
