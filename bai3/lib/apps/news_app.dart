import 'package:flutter/material.dart';
import '../views/news_feed_page.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: NewsFeedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
