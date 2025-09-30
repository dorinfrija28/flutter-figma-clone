import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';

class NewStarRating extends StatelessWidget {
  final double starSize;
  final double starSpacing;
  final String starReview;

  const NewStarRating({
    super.key,
    required this.starSize,
    required this.starSpacing,
    required this.starReview,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_border_outlined, color: Colors.grey, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star_border_outlined, color: Colors.grey, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star_border_outlined, color: Colors.grey, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star_border_outlined, color: Colors.grey, size: starSize),
        SizedBox(width: starSpacing),
        Icon(Icons.star_border_outlined, color: Colors.grey, size: starSize),
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
