import 'package:flutter/material.dart';

class HomeScreenAfter extends StatelessWidget {
  const HomeScreenAfter({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (ctx, idx) {
        return const Center(
          child:  Card(
            elevation: 5,
            shadowColor: Colors.white,
            color: Colors.purple,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Image(image: AssetImage("assets/images/avatar.PNG"),fit: BoxFit.fill,width: double.infinity,height: 120,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
