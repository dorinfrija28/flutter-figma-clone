import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final FontWeight textWeight;

  const CardText({
    super.key,
    required this.text,
    required this.textSize,
    required this.textColor,
    required this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        color: textColor,
        fontWeight: textWeight,
        fontFamily: 'Metropolis',
      ),
    );
  }
}
