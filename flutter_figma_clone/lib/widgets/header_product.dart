import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';

class HeaderProduct extends StatelessWidget {
  const HeaderProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardText(
                text: "H&M",
                textSize: 24,
                textColor: Colors.black,
                textWeight: FontWeight.w400,
              ),
              CardText(
                text: "Short black dress",
                textSize: 11,
                textColor: Colors.grey,
                textWeight: FontWeight.w400,
              ),
            ],
          ),
          CardText(
            text: "\$19.99",
            textSize: 24,
            textColor: Colors.black,
            textWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
