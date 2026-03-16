// TRẦN VĂN PHÚ - 6451071060
import 'package:flutter/material.dart';
import '../utils/mock_data.dart';
import '../widget/food_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'DANH SÁCH MÓN ĂN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              itemCount: mockFoods.length,
              itemBuilder: (context, index) {
                return FoodCard(food: mockFoods[index]);
              },
            ),
          ),
          // Chèn tên theo yêu cầu
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            alignment: Alignment.center,
            child: const Text(
              'TRẦN VĂN PHÚ - 6451071060',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
