import 'dart:async';

import 'package:bihariji_dohe/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});


  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 450,left: 50),
           child: Text('बिहारी के दोहे' , style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),),
         ),
          Padding(
            padding: const EdgeInsets.only( left: 120),
            child: Text('- दोहे हिंदी कविता का एक बड़ा हिस्सा' , style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200 , left: 70),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
                child: Center(
                  child: Text('Get Started' , style: TextStyle(color: Colors.white , fontSize: 25)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
