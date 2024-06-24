import 'dart:async';

import 'package:bihariji_dohe/screens/introscreen/intro_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer( const Duration(seconds: 5), () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const IntroScreen(),));
    });
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 50),
            child: Container(height: 300,
                width: 350,
                child: Image.asset('asset/img/logo.png')),
          ),
        ],
      ),
    );
  }
}
