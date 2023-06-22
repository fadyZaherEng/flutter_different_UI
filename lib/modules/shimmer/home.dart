import 'package:flutter/material.dart';
import 'package:task_app/modules/shimmer/home_after.dart';
import 'package:task_app/modules/shimmer/home_before.dart';

class HomeScreenShimmer extends StatefulWidget {
  HomeScreenShimmer({super.key});

  @override
  State<HomeScreenShimmer> createState() => _HomeScreenShimmerState();
}

class _HomeScreenShimmerState extends State<HomeScreenShimmer> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ?const HomeScreenAfter() :const HomeScreenBefore(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isLoading=!isLoading;
          setState(() {

          });
        },
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
