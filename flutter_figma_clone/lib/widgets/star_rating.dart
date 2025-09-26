import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';

class StarRating extends StatelessWidget {
  final double starSize;
  final double starSpacing;
  final String starReview;

  const StarRating({
    super.key,
    required this.starSize,
    required this.starSpacing,
    required this.starReview,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star, color: Colors.amber, size: starSize),
        SizedBox(width: starSpacing),
        CardText(
          text: starReview,
          textSize: 10,
          textColor: Colors.grey,
          textWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
