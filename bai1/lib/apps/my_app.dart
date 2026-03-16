import 'package:flutter/material.dart';
import '../models/user_profile.dart';
import '../views/profile_view.dart';
import '../utils/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a dummy user matching the requirement
    final user = UserProfile(
      name: 'TRAN VAN PHU - 6451071060',
      email: 'tranvanphu@gmail.com',
    );

    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileView(user: user),
    );
  }
}
