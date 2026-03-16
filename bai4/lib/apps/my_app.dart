import 'package:flutter/material.dart';
import '../views/product_grid_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid Sản Phẩm',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProductGridView(),
    );
  }
}
