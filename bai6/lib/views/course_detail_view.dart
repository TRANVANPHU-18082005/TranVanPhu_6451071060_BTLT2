// Nguyễn Công Vũ - 6451071089
import 'package:flutter/material.dart';
import '../models/course.dart';
import '../utils/constants.dart';
import '../widgets/course_header_image.dart';

class CourseDetailView extends StatefulWidget {
  const CourseDetailView({super.key});

  @override
  State<CourseDetailView> createState() => _CourseDetailViewState();
}

class _CourseDetailViewState extends State<CourseDetailView> {
  final Course course = Course(
    title: 'Advanced Flutter UI Design',
    instructor: 'Instructor: Dr. Angela Yu',
    description: 'Learn to build beautiful, responsive user interfaces in Flutter. This course covers everything from basic widgets to complex layouts, animations, and state management. Ideal for beginner to intermediate developers. Includes hands-on projects and quizzes.',
    imageUrl: 'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('- Nguyễn Công Vũ - 6451071089'),
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseHeaderImage(imageUrl: course.imageUrl),
              const SizedBox(height: 16),
              Text(
                course.title,
                style: AppConstants.titleStyle,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.person, color: Colors.grey, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    course.instructor,
                    style: AppConstants.subtitleStyle,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                course.description,
                style: AppConstants.descriptionStyle,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Enroll Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
