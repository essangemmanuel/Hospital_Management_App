import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the login screen

void main() {
  runApp(HealthTrackerApp());
}

class HealthTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Tracker App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(), // Start with the DashboardScreen
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Health Tracker!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()), // Navigate to the LoginScreen
                );
              },
              child: Text('View Profile'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppointmentScreen()), // Navigate to the AppointmentScreen
                );
              },
              child: Text('Schedule Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}

class AppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Appointment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Schedule an Appointment',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16.0),
            // Add widgets for selecting a date and time, and choosing a doctor or service
            // You can use DateTimePicker or other packages for date and time selection
            // Dropdown or radio buttons for selecting a doctor or service
            ElevatedButton(
              onPressed: () {
                // Handle appointment scheduling logic here
                // You can collect the selected date, time, doctor, etc., and save the appointment
                // Optionally, you can show a confirmation message or navigate to a different screen
              },
              child: Text('Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
