import 'package:flutter/material.dart';

import 'CaloriesScreen.dart';
import 'DistanceScreen.dart';
import 'StepsScreen.dart';

class FitnessTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Fitness Tracker!'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StepsScreen()),
                );
              },
              child: Text('Track Steps'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaloriesScreen()),
                );
              },
              child: Text('Track Calories'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DistanceScreen()),
                );
              },
              child: Text('Track Distance'),
            ),
          ],
        ),
      ),
    );
  }
}
