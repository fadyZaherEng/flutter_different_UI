import 'package:flutter/material.dart';
import 'package:task_app/modules/bubble_button/bubble.dart';
import 'package:task_app/modules/button_onboarding_rotate/button_rotate_animation.dart';
import 'package:task_app/modules/image_filter_view_oval/image_oval.dart';
import 'package:task_app/modules/move_in_photo/move_in_photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        primarySwatch:Colors.blue,
      ),
      home: ParallaxWidget(),
    );
  }
}