import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/headers.dart';
import 'package:flutter_figma_clone/widgets/main_banner.dart';
import 'package:flutter_figma_clone/widgets/new_block.dart';
import 'package:flutter_figma_clone/widgets/sales_block.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SmallBanner(),
            const SizedBox(height: 40),
            Headers(
              headerTitle: "Sale",
              headerDescription: "Super summer sale",
            ),
            const SizedBox(height: 22),
            SalesBlock(),
            const SizedBox(height: 40),
            Headers(
              headerTitle: "New",
              headerDescription: "You've never seen it before!",
            ),
            const SizedBox(height: 22),
            NewBlock(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
