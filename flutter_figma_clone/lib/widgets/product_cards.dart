import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/full_card.dart';
import 'package:flutter_figma_clone/widgets/new_full_card.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({
    super.key,
    this.viewportFraction = 0.4,
    this.itemSpacing = 16,
    this.height = 280,
  });

  final double viewportFraction;
  final double itemSpacing;
  final double height;

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
      height: height,
      child: PageView.builder(
        padEnds: false,
        controller: PageController(viewportFraction: viewportFraction),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          final image = '${product["image"]}';
          final title = '${product["title"]}';
          final description = '${product["description"]}';
          final reviews = product["reviews"] ?? 0;

          final hasDiscount = product.containsKey("discount");

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: itemSpacing),
            child: hasDiscount
                ? FullCard(
              imagePath: image,
              discountText: '-${product["discount"]}%',
              starReview: '($reviews)',
              descriptionText: description,
              titleText: title,
              price: "${product["price"]}\$",
              discountPrice: "${product["discountPrice"]}\$",
            )
                : NewFullCard(
              imagePath: image,
              starReview: '($reviews)',
              descriptionText: description,
              titleText: title,
              price: "${product["price"]}\$",
            ),
          );
        },
      ),
    );
  }
}
