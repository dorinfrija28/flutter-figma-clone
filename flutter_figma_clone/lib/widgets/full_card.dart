import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_image.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';
import 'package:flutter_figma_clone/widgets/like_button.dart';
import 'package:flutter_figma_clone/widgets/star_rating.dart';

import '../pages/product_page.dart';

class FullCard extends StatelessWidget {
  final String imagePath;
  final String discountText;
  final String starReview;
  final String descriptionText;
  final String titleText;
  const FullCard({
    super.key,
    required this.imagePath,
    required this.discountText,
    required this.starReview,
    required this.descriptionText,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(),));
      },
      child: SizedBox(
        width: 150,
        height: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CardImage(imagePath: imagePath, discountText: discountText),
                Positioned(bottom: -17, right: 0, child: LikeButton()),
              ],
            ),
            const SizedBox(height: 5),
            StarRating(starSize: 12, starSpacing: 1, starReview: starReview),
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
      ),
    );
  }
}
