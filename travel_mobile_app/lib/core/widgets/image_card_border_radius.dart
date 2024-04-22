import 'package:flutter/material.dart';

class ImageCardBorderRadius extends StatelessWidget {
  const ImageCardBorderRadius(
      {super.key, required this.image, required this.borderRadius});
  final String image;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
