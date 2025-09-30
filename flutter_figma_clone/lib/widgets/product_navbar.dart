import 'package:flutter/material.dart';

class ProductNavbar extends StatelessWidget {
  const ProductNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red, elevation: 0),
            child: const Text("Add to cart", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
