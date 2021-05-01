import 'package:flutter/material.dart';
import 'package:igti_car_washing_ms/screens/Home.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Home(),
      image: Image.asset(
        'assets/images/logo.png',
        alignment: Alignment.center,
      ),
      photoSize: 100.0,
      title: Text(
        'Seja bem-vindo à IGTI',
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}
