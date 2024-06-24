import 'dart:ui';

import 'package:bihariji_dohe/screens/introductionscreen/introduction_screen.dart';
import 'package:flutter/material.dart';

import '../dohescreen/dohe_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text(
          'Bihari ke Dohe',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.star_border,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(  top: 30),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IntroductionScreen(),));
                },
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  child: Center(
                    child: Text('Introduction' , style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(  top: 30),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoheScreen(),));
                },
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  child: Center(
                    child: Text('Dohe' , style: TextStyle(fontSize: 35 , fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
