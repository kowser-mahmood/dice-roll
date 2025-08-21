import 'package:flutter/material.dart';
import 'package:second/styled_image.dart';
import 'dart:math';

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});
  @override
  State<ImageChanger> createState() {
    return _ImageChanger();
  }
}

//

class _ImageChanger extends State<ImageChanger> {
  var currentImage = 'assets/dice-images/dice-1.png';
  var randomImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledImage(currentImage, 500),
        TextButton(
          onPressed: () {
            setState(() {
              randomImage = Random().nextInt(6) + 1;
              currentImage = 'assets/dice-images/dice-$randomImage.png';
            });
          },
          child: const Text(
            "ROLL THE DICE",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ],
    );
  }
}
