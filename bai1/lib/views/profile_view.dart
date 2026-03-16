import 'package:flutter/material.dart';
import '../models/user_profile.dart';
import '../utils/app_colors.dart';
import '../widget/profile_button.dart';

class ProfileView extends StatelessWidget {
  final UserProfile user;

  const ProfileView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=47'), // Placeholder image
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 20),
            
            // Name
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            
            // Email
            Text(
              user.email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            
            // Edit Profile Button
            ProfileButton(
              text: 'Edit Profile',
              onPressed: () {
                // Handle edit profile
              },
            ),
          ],
        ),
      ),
    );
  }
}
