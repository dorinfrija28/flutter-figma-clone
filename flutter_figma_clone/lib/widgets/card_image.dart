import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/discount_bubble.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  final String discountText;
  const CardImage({
    super.key,
    required this.imagePath,
    required this.discountText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: 148,
          height: 184,
          color: const Color.fromARGB(255, 75, 74, 74),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        ),
        //Image.asset(imagePath, width: 148, height: 184, fit: BoxFit.cover),
        DiscountBubble(discountText: discountText),
      ],
    );
  }
}
