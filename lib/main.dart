import 'package:flutter/material.dart';
import 'splashscreen.dart'; // Import your splash_screen.dart file
import 'Welcomescreen.dart';
import 'Register.dart';
import 'loginscreen.dart';
import 'HomePage.dart';
import 'account_screen.dart';
import 'dateandtime.dart'; // Import your dateandtime.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set the home property to SplashScreen
      routes: {
        'Welcomescreen': (context) => WelcomeScreen(),
        'Register': (context) => RegisterScreen(),
        'loginscreen': (context) => LoginScreen(),
        'HomePage': (context) => HomePage(),
        'AccountScreen': (context) => AccountScreen(),
        'ParkingApp': (context) => ParkingApp(), // Add this line for ParkingApp screen
      },
    );
  }
}
