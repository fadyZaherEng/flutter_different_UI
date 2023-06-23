import 'package:flutter/material.dart';

class ButtonRotateOnBoardingScreen extends StatelessWidget {
  const ButtonRotateOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 180,
            child: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.red,
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
