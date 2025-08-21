import 'package:flutter/material.dart';
import 'package:second/image_changer.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: Second())));
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 245, 149, 5),
            Color.fromARGB(255, 110, 109, 109),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: ImageChanger()),
    );
  }
}
