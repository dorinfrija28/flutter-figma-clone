import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/full_card.dart';

class SalesBlock extends StatelessWidget {
  const SalesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "image": "assets/sales/1.png",
        "title": "Evening Dress",
        "description": "Dorothy Perkins",
        "price": 15,
        "discountPrice": 12,
        "discount": 20,
        "reviews": 10,
      },
      {
        "image": "assets/sales/2.png",
        "title": "Sport Dress",
        "description": "Sitlly",
        "price": 22,
        "discountPrice": 19,
        "discount": 15,
        "reviews": 10,
      },
      {
        "image": "assets/sales/3.png",
        "title": "Sport Dress",
        "description": "Dorothy Perkins",
        "price": 14,
        "discountPrice": 12,
        "discount": 20,
        "reviews": 10,
      },
    ];

    return SizedBox(
      height: 280,
      child: PageView.builder(
        padEnds: false,
        controller: PageController(viewportFraction: 0.4),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FullCard(
              imagePath: "${product["image"]}",
              discountText: "-${product["discount"]}%",
              starReview: "(${product["reviews"]})",
              descriptionText: "${product["description"]}",
              titleText: "${product["title"]}",
              price: "${product["price"]}\$",
              discountPrice: "${product["discountPrice"]}\$",
            ),
          );
        },
      ),
    );
  }
}
