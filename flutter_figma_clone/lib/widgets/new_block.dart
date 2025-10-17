import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/new_full_card.dart';

class NewBlock extends StatelessWidget {
  const NewBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "image": "assets/new/1.png",
        "title": "Blouse",
        "description": "OVS",
        "price": 30,
        "reviews": 0,
      },
      {
        "image": "assets/new/2.png",
        "title": "T-Shirt Sailing",
        "description": "Mango Boy",
        "price": 10,
        "reviews": 0,
      },
      {
        "image": "assets/new/2.png",
        "title": "T-Shirt Sailing",
        "description": "Mango Boy",
        "price": 10,
        "reviews": 0,
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
            child: NewFullCard(
              imagePath: "${product["image"]}",
              starReview: "(${product["reviews"]})",
              descriptionText: "${product["description"]}",
              titleText: "${product["title"]}",
              price: "${product["price"]}\$",
            ),
          );
        },
      ),
    );
  }
}
