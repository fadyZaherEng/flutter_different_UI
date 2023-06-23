import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ButtonRotateOnBoardingScreen extends StatefulWidget {
  const ButtonRotateOnBoardingScreen({super.key});

  @override
  State<ButtonRotateOnBoardingScreen> createState() => _ButtonRotateOnBoardingScreenState();
}

class _ButtonRotateOnBoardingScreenState extends State<ButtonRotateOnBoardingScreen> {
  double ops=0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      ops=Random().nextDouble();
      print("OPSSS $ops");
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 360,
            child: Opacity(
              opacity:ops ,
              child: const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.red,
              ),
            ),
          ),
          const CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
