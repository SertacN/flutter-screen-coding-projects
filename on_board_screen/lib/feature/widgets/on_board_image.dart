import 'package:flutter/material.dart';

class OnBoardImage extends StatelessWidget {
  const OnBoardImage({super.key, required this.imagePath});
  final double imageWidth = 400;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      alignment: Alignment.center,
      imagePath,
      width: imageWidth,
    );
  }
}
