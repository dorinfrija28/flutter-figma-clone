import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/headers.dart';
import 'package:flutter_figma_clone/widgets/main_banner.dart';
import 'package:flutter_figma_clone/widgets/sales_block.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SmallBanner(),
          const SizedBox(height: 40),
          Headers(headerTitle: "Sale", headerDescription: "Super summer sale"),
          SalesBlock(),
          // const SizedBox(height: 40),
          // Headers(
          //   headerTitle: "New",
          //   headerDescription: "You've never seen it before!",
          // ),
        ],
      ),
    );
  }
}
