import 'package:flutter/material.dart';

class UserProfile {
  final String name;
  final int age;
  final String gender;
  final String email;

  UserProfile({required this.name, required this.age, required this.gender, required this.email});
}

class ProfileScreen extends StatelessWidget {
  final UserProfile userProfile;

  ProfileScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${userProfile.name}', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 8.0),
            Text('Age: ${userProfile.age}', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 8.0),
            Text('Gender: ${userProfile.gender}', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 8.0),
            Text('Email: ${userProfile.email}', style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
