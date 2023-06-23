import 'package:flutter/material.dart';
import 'package:task_app/modules/curved_nav/curved_nav.dart';
import 'package:task_app/modules/image_filter_view_oval/image_filter.dart';
import 'package:task_app/modules/image_filter_view_oval/image_view.dart';
import 'package:task_app/modules/shimmer/home.dart';

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
      home: ImageViewScreen(),
    );
  }
}