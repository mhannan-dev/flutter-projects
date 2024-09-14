import 'dart:math';
import 'package:flutter/material.dart';
import 'image_widget.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  late int _diceNumber;

  @override
  void initState() {
    super.initState();
    _diceNumber = Random().nextInt(6) + 1;
  }

  void _rollDice() {
    setState(() {
      _diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageWidget(
          imagePath: 'assets/images/dice-$_diceNumber.png',
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 240, 235, 190),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(color: Color.fromARGB(255, 17, 17, 17)),
          ),
        ),
      ],
    );
  }
}
