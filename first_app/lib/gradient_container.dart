import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final List<Color> colors;
  final List<double>? stops;
  final AlignmentGeometry center;

  const GradientContainer({
    required this.child,
    Key? key,
    this.colors = const [Color(0xff516b8b), Color(0xff056b3b)],
    this.stops,
    this.center = Alignment.topLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          colors: colors,
          stops: stops,
          center: center,
        ),
      ),
      child: child,
    );
  }
}
