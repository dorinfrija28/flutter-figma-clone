import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/details_header.dart';
import 'package:flutter_figma_clone/widgets/header_product.dart';
import 'package:flutter_figma_clone/widgets/product_button.dart';
import 'package:flutter_figma_clone/widgets/product_navbar.dart';
import 'package:flutter_figma_clone/widgets/star_rating.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Short dress"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      bottomNavigationBar: ProductNavbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProduct(),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: StarRating(
                starSize: 14,
                starSpacing: 2,
                starReview: "(10)",
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                style: TextStyle(fontSize: 16),
                softWrap: true,
              ),
            ),
            const SizedBox(height: 60),
            Divider(height: 1, color: Colors.grey),
            ProductButton(buttonText: "Shipping info"),
            Divider(height: 1, color: Colors.grey),
            ProductButton(buttonText: "Support"),
            Divider(height: 1, color: Colors.grey),
            const SizedBox(height: 24),
            DetailsHeader(),
          ],
        ),
      ),
    );
  }
}
