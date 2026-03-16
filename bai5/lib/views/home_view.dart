import 'package:flutter/material.dart';
import '../widgets/category_list_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7), // Light background color match iOS-style
      appBar: AppBar(
        title: const Text('Category Menu'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Required name and ID: Nguyễn Công Vũ - 6451071089
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Colors.white,
            child: const Text(
              'Nguyễn Công Vũ - 6451071089',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Expansion Menu',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Using ExpansionPanelList',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CategoryListWidget(),
          ),
          
          // Bottom Container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Chip(
                label: Text(
                  'StatefulWidget Management',
                  style: TextStyle(color: Colors.black87),
                ),
                backgroundColor: Colors.white,
                shape: StadiumBorder(side: BorderSide(color: Colors.black12)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
