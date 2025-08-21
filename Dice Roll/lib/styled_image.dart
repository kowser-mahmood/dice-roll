import 'package:flutter/material.dart';

class StyledImage extends StatelessWidget {
  StyledImage(this.imagePath, this.width, {super.key});
  String imagePath;
  double width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath);
  }
}
