import 'package:flutter/material.dart';
import 'Welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToWelcomeScreen();
  }

  Future<void> _navigateToWelcomeScreen() async {
    // Add a delay of 2 seconds (adjust as needed)
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => WelcomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YourWidget(),
    );
  }
}

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/car.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'ParkHub',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 70.0,
              fontFamily: 'bangers',
            ),
          ),
          Text(
            '',
          ),
          Text(
            'Park Smart, Park Easy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: 'antic',
            ),
          ),
        ],
      ),
    );
  }
}
