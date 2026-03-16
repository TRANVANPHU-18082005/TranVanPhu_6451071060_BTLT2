import 'package:flutter/material.dart';
import '../models/article.dart';
import '../widgets/article_card.dart';
import '../utils/constants.dart';

class NewsFeedPage extends StatelessWidget {
  NewsFeedPage({super.key});

  final List<Article> articles = [
    Article(
      title: "Article Title 1: Flutter is awesome!",
      description: "Learn about cross-platform development with the latest news on Flutter framework updates and community tutorials.",
      imageUrl: "https://images.unsplash.com/photo-1449844908441-8829872d2607?auto=format&fit=crop&w=500&q=80",
    ),
    Article(
      title: "Article Title 2: Local Coffee Shop Opens",
      description: "The cozy new cafe, \"The Daily Grind,\" offers local brews and a relaxing atmosphere for customers.",
      imageUrl: "https://images.unsplash.com/photo-1498050108023-c5249f4df085?auto=format&fit=crop&w=500&q=80",
    ),
    Article(
      title: "Article Title 3: New Tech Gadgets",
      description: "Discover the newest smartphones, smartwatches, and innovative devices hitting the market this week.",
      imageUrl: "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?auto=format&fit=crop&w=500&q=80",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: articles.map((article) => ArticleCard(article: article)).toList(),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            color: Colors.blue[50], // Light blue background for bottom info
            child: const Text(
              studentName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
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
