import 'package:flutter/material.dart';
import '../utils/app_data.dart';
import '../widget/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nguyễn Công Vũ - 6451071089'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: mockProducts.map((product) {
            return ProductItem(product: product);
          }).toList(),
        ),
      ),
    );
  }
}
