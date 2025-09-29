import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';

class DiscountBubble extends StatelessWidget {
  final String discountText;
  const DiscountBubble({super.key, required this.discountText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 40,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.red,
      ),
      child: CardText(
        text: discountText,
        textSize: 11,
        textColor: Colors.white,
        textWeight: FontWeight.w400,
      ),
    );
  }
}
