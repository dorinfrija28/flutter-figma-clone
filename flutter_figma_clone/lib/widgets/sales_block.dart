import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_image.dart';
import 'package:flutter_figma_clone/widgets/star_rating.dart';

class SalesBlock extends StatelessWidget {
  const SalesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "image": "",
        "title": "First",
        "description": "First",
        "price": 100,
        "discountPrice": 75,
        "discount": 25,
        "reviews": 10,
      },
      {
        "image": "",
        "title": "Second",
        "description": "Second",
        "price": 100,
        "discountPrice": 75,
        "discount": 25,
        "reviews": 10,
      },
      {
        "image": "",
        "title": "Third",
        "description": "Third",
        "price": 100,
        "discountPrice": 75,
        "discount": 25,
        "reviews": 10,
      },
    ];

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Column(
          children: [
            CardImage(
              imagePath: 'imagePath',
              discountText: "-${product["discount"]}%",
            ),
            StarRating(
              starSize: 14,
              starSpacing: 2,
              starReview: "(${product["reviews"]})",
            ),
          ],
        );
      },
    );
  }
}
