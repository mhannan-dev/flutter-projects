import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final double letterSpacing;

  const CustomText(
    this.text, {
    Key? key,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w700,
    this.fontSize = 28.0,
    this.letterSpacing = 3.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
