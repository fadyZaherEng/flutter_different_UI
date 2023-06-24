import 'package:flutter/material.dart';

class OrderListScreen extends StatefulWidget {

  OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  var keyList = GlobalKey();

  List<String> items = List.generate(20, (index) => "Items ${(index + 1)}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        children: [
          for (int idx = 0; idx < items.length; idx++)
            ListTile(
              key: Key('$idx'),
              title: Text(items[idx]),
              trailing: const Icon(Icons.reorder),
            ),
        ],
        onReorder: (odlIdx, newIdx) {
          if (newIdx > odlIdx) {newIdx--;}
          String item = items[odlIdx];
          items.remove(item);
          items.insert(newIdx, item);
          setState(() {

          });
        },
      ),
    );
  }
}
