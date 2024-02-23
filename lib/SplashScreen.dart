import 'dart:async';

import 'package:asaan/screens/Login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            )));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 238, 237, 1),
      body: Center(
        child: Image.asset('assets/images/LogoForProject.jpeg'),
      ),
    );
  }
}
