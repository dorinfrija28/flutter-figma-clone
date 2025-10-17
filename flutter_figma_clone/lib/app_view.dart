import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/pages/main_page.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothes shop',
      theme: ThemeData(
        fontFamily: 'Metropolis',
      ),
      home: MainPage(),
    );
  }
}
