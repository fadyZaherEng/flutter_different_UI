import 'package:flutter/material.dart';

class ImageFilter extends StatelessWidget {
  const ImageFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          children:
          [
            Expanded(child: Image.asset("assets/images/avatar.PNG")),
            Expanded(
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.grey,
                  BlendMode.saturation,
                ),
                child: Image.asset("assets/images/avatar.PNG"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
