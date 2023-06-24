import 'package:flutter/material.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class ReorderGridViewScreen extends StatefulWidget {
  const ReorderGridViewScreen({super.key});

  @override
  State<ReorderGridViewScreen> createState() => _ReorderGridViewScreenState();
}

class _ReorderGridViewScreenState extends State<ReorderGridViewScreen> {
  List<String> items = List.generate(20, (index) => "Items ${(index + 1)}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableGridView.count(
        onReorder: (odlIdx, newIdx) {
          String item = items[odlIdx];
          items.remove(item);
          items.insert(newIdx, item);
          setState(() {});
        },
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
        footer: const [
           Card(
            child: Center(
              child: Icon(Icons.add),
            ),
          ),
        ],
        children: items.map((e) => buildItem(e)).toList(),
      ),
    );
  }
}

Widget buildItem(String item) {
  return Card(
    key: Key(item),
    child: Center(child: Text(item)),
  );
}
