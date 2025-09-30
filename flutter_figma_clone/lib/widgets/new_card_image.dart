import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/new_bubble.dart';

class NewCardImage extends StatelessWidget {
  final String imagePath;
  const NewCardImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 148,
            height: 184,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8),
          child: NewBubble(),
        ),
      ],
    );
  }
}
