import 'package:flutter/material.dart';
import 'package:projects/screens/dashboard/dashboard_screen.dart';
import 'package:projects/screens/splashScreen/ui/splash_screen.dart'; // Import the DashboardScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      title: 'Dashboard App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Set the DashboardScreen as the home screen
    );
  }
}
