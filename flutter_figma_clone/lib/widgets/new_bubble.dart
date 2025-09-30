import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/card_text.dart';

class NewBubble extends StatelessWidget {
  const NewBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 40,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.black,
      ),
      child: CardText(
        text: "NEW",
        textSize: 11,
        textColor: Colors.white,
        textWeight: FontWeight.w400,
      ),
    );
  }
}
