// Nguyễn Công Vũ - 6451071089
import 'package:flutter/material.dart';

class CourseHeaderImage extends StatelessWidget {
  final String imageUrl;

  const CourseHeaderImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        imageUrl,
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[300],
            child: const Icon(Icons.image, size: 50, color: Colors.grey),
          );
        },
      ),
    );
  }
}
