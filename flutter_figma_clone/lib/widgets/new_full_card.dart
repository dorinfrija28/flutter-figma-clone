import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';
import 'package:flutter_figma_clone/widgets/new_card_image.dart';
import 'package:flutter_figma_clone/widgets/new_star_rating.dart';

class NewFullCard extends StatelessWidget {
  final String imagePath;
  final String starReview;
  final String descriptionText;
  final String titleText;
  const NewFullCard({
    super.key,
    required this.imagePath,
    required this.starReview,
    required this.descriptionText,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewCardImage(imagePath: imagePath),
          const SizedBox(height: 5),
          NewStarRating(starSize: 16, starSpacing: 1, starReview: starReview),
          const SizedBox(height: 6),
          CardText(
            text: descriptionText,
            textSize: 11,
            textColor: Colors.grey,
            textWeight: FontWeight.w400,
          ),
          const SizedBox(height: 3),
          CardText(
            text: titleText,
            textSize: 16,
            textColor: Colors.black,
            textWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
