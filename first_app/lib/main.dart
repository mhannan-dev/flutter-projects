import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientContainer(
            child: Center(
              child: Text(
                'Hello Flutter App',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0,
                  letterSpacing: 3.0,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          colors: [Color(0xff516b8b), Color(0xff056b3b)],
          stops: [0, 1],
          center: Alignment.topLeft,
        ),
      ),
      child: child,
    );
  }
}
