import 'package:flutter/material.dart';
import 'profilescreen.dart';
import 'stepsscreen.dart';
import 'caloriesscreen.dart';
import 'distancescreen.dart';

class UserProfile {
  final String name;
  final int age;
  final String gender;
  final String email;

  UserProfile({required this.name, required this.age, required this.gender, required this.email});
}

class f extends StatelessWidget {
  final UserProfile userProfile;

  FitnessTrackerScreen({required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Welcome, ${userProfile.name}!',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StepsScreen(userProfile: userProfile)),
                  );
                },
                child: Text('Track Steps'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CaloriesScreen(userProfile: userProfile)),
                  );
                },
                child: Text('Track Calories'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DistanceScreen(userProfile: userProfile)),
                  );
                },
                child: Text('Track Distance'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen(userProfile: userProfile)),
                  );
                },
                child: Text('View Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}