import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("You can also like this", style: TextStyle(fontSize: 18),),
          Text("12 items", style: TextStyle(fontSize: 11, color: Colors.grey),),
        ],
      ),
    );
  }
}
