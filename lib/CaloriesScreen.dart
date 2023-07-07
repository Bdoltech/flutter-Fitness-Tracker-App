import 'package:flutter/material.dart';

class CaloriesScreen extends StatefulWidget {
  @override
  _CaloriesScreenState createState() => _CaloriesScreenState();
}

class _CaloriesScreenState extends State<CaloriesScreen> {
  int calorieCount = 0;

  void incrementCalories() {
    setState(() {
      calorieCount++;
    });
  }

  void resetCalories() {
    setState(() {
      calorieCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calories Tracker'),
      ),
      body: Container(
        color: Colors.lightGreen, // Replace with your desired background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Calorie Count: $calorieCount',
                  style: TextStyle(color: Colors.teal)),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: incrementCalories,
                child: Text('Increment Calories'),
              ),
              ElevatedButton(
                onPressed: resetCalories,
                child: Text('Reset Calories'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
