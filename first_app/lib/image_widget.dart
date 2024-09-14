import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;

  const ImageWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 200,
      height: 200,
    );
  }
}
