import 'package:flutter/material.dart';
import '../views/course_detail_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Detail App ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CourseDetailView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
