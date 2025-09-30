import 'package:flutter/material.dart';

class ProductButton extends StatelessWidget {
  final String buttonText;

  const ProductButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(buttonText, style: TextStyle(fontSize: 16)),
          Icon(Icons.keyboard_arrow_right, size: 16, color: Colors.black),
        ],
      ),
    );
  }
}
