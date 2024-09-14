import 'package:flutter/material.dart';
import 'gradient_container.dart';
import 'dice_roller.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientContainer(
            child: Center(
              child: DiceRoller(),
            ),
          ),
        ),
      ),
    ),
  );
}
