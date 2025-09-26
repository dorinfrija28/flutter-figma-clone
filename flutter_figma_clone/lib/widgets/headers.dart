import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';

class Headers extends StatelessWidget {
  final String headerTitle;
  final String headerDescription;
  const Headers({
    super.key,
    required this.headerDescription,
    required this.headerTitle,
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
                text: headerTitle,
                textSize: 34,
                textColor: Colors.black,
                textWeight: FontWeight.w700,
              ),
              CardText(
                text: headerDescription,
                textSize: 11,
                textColor: Colors.grey,
                textWeight: FontWeight.w400,
              ),
            ],
          ),
          CardText(
            text: "View all",
            textSize: 11,
            textColor: Colors.black,
            textWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
