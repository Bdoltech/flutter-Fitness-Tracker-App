import 'package:flutter/material.dart';
import 'profilescreen.dart';

class UserProfile {
  final String name;
  final int age;
  final String gender;
  final String email;

  UserProfile({required this.name, required this.age, required this.gender, required this.email});
}

class StepsScreen extends StatelessWidget {
  final UserProfile userProfile;

  StepsScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Steps Tracker'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Steps Tracker', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 8.0),
            Text('Welcome, ${userProfile.name}!', style: TextStyle(fontSize: 18.0)),
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

class CaloriesScreen extends StatelessWidget {
  final UserProfile userProfile;

  CaloriesScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calories Tracker'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Calories Tracker', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 8.0),
            Text('Welcome, ${userProfile.name}!', style: TextStyle(fontSize: 18.0)),
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

class DistanceScreen extends StatelessWidget {
  final UserProfile userProfile;

  DistanceScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Tracker'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Distance Tracker', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 8.0),
            Text('Welcome, ${userProfile.name}!', style: TextStyle(fontSize: 18.0)),
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

