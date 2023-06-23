import 'package:flutter/material.dart';
import 'package:task_app/modules/expensioal_panel_list/item.dart';

class ExpensioalPanelListScreen extends StatefulWidget {
  const ExpensioalPanelListScreen({super.key});

  @override
  State<ExpensioalPanelListScreen> createState() =>
      _ExpensioalPanelListScreenState();
}

class _ExpensioalPanelListScreenState extends State<ExpensioalPanelListScreen> {
  final List<Item> data = List<Item>.generate(20, (index) {
      return Item(
        headerText: "Item $index",
        expandedText: "This is Item Number $index",
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (int idx, bool isExpanded) {
              setState(() {
                data[idx].isExpanded = !isExpanded;
              });
            },
            children: data.map<ExpansionPanel>((Item currentItem) {
              return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  print("is       $isExpanded");
                  return ListTile(
                    title: Text(currentItem.headerText),
                  );
                },
                body: ListTile(
                  title: Text(currentItem.expandedText),
                  subtitle: const Text("To delete this item, click trash icon"),
                  trailing: const Icon(
                    Icons.delete,
                    color: Colors.orangeAccent,
                  ),
                  onTap: () {
                    setState(() {
                      data.removeWhere((Item temp) {
                        return currentItem == temp;
                      });
                    });
                  },
                ),
                isExpanded: currentItem.isExpanded,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
