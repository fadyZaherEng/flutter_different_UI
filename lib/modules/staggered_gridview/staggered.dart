import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewScreen extends StatelessWidget {
  const StaggeredGridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        axisDirection: AxisDirection.down,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("0")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("1")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("2")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("3")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("4")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("0")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("1")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("2")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("3")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("4")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("0")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("1")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("2")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("3")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("4")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("0")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("1")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("2")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("3")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("4")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("0")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("1")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("2")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("3")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("4")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("0")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Color.fromRGBO(Random().nextInt(355),
                  Random().nextInt(355), Random().nextInt(355), 1),
              child: Card(
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: const Center(child: Text("1")),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("2")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("3")),
                ),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                color: Color.fromRGBO(Random().nextInt(355),
                    Random().nextInt(355), Random().nextInt(355), 1),
                child: Card(
                  color: Color.fromRGBO(Random().nextInt(355),
                      Random().nextInt(355), Random().nextInt(355), 1),
                  child: const Center(child: Text("4")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
