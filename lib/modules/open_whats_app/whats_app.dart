import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsScreen extends StatelessWidget {
  const WhatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          var whatsAppNum="+201273826361";
          var massage="Hello";
          var whatsAppUrl="whatsapp://send?phone=$whatsAppNum&text=$massage";
          await launchUrl(Uri.parse(whatsAppUrl));
        },
        child: const Text("Open Chat"),
      ),
    );
  }
}
