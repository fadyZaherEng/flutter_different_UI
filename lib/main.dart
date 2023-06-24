import 'package:flutter/material.dart';
import 'package:task_app/modules/reorder_grid_wiev/grid_view.dart';
import 'package:task_app/modules/staggered_gridview/staggered.dart';
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
      home: const StaggeredGridViewScreen(),
    );
  }
}