import 'package:flutter/material.dart';

class ImageOvalScreen extends StatelessWidget {
  const ImageOvalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipOval(
        child:  Image.asset("assets/images/avatar.PNG",fit: BoxFit.fill,width: 190,height: 190,),
      ),
    );
  }
}
