import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  CustomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
        body: Center(
          child: AvatarGlow(
            endRadius: 100.0,
            startDelay: Duration(milliseconds: 1000),
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.PNG',),
                radius: 50,
              ),
            ),
          ),
        ),
    );
  }
}
