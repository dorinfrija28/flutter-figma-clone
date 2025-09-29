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
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 148,
            height: 184,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8),
          child: DiscountBubble(discountText: discountText),
        ),
      ],
    );
  }
}
