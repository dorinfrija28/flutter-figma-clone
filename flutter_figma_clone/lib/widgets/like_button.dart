import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 4),
        ],
      ),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.zero,
          iconSize: 14,
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          color: Colors.grey,
        ),
      ),
    );
  }
}
