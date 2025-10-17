import 'package:flutter/material.dart';

class SmallBanner extends StatelessWidget {
  const SmallBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(
          'assets/small_banner.png',
          width: double.infinity,
          fit: BoxFit.contain,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 20),
          child: Text(
            "Street clothes",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Metropolis',
              fontSize: 34,
              letterSpacing: 1,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
