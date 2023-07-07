import 'package:flutter/material.dart';

class DistanceScreen extends StatefulWidget {
  @override
  _DistanceScreenState createState() => _DistanceScreenState();
}

class _DistanceScreenState extends State<DistanceScreen> {
  double distance = 0.0;

  void incrementDistance() {
    setState(() {
      distance += 0.1;
    });
  }

  void resetDistance() {
    setState(() {
      distance = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Distance: $distance km'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: incrementDistance,
              child: Text('Increment Distance'),
            ),
            ElevatedButton(
              onPressed: resetDistance,
              child: Text('Reset Distance'),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
