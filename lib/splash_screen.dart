import 'package:flutter/material.dart';
import 'dart:async';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 30), () {
      try {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } catch (error) {
        print("Error navigating to home screen: $error");
        // Handle navigation error
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "",
                style: TextStyle(fontSize: 50.0),
              ),
              const SizedBox(height: 20.0),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );

    Future.delayed(Duration(seconds: 3), () {
      try {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } catch (error) {
        print("Error navigating to home screen: $error");
        // Handle navigation error
      }
    });
  }
}
