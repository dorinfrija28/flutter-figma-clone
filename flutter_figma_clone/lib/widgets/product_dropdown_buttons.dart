import 'package:flutter/material.dart';
import 'package:flutter_figma_clone/widgets/like_button.dart';

class ProductDropdownButtons extends StatefulWidget {
  const ProductDropdownButtons({super.key});

  @override
  State<ProductDropdownButtons> createState() => _ProductDropdownButtonsState();
}

class _ProductDropdownButtonsState extends State<ProductDropdownButtons> {
  String? selectedSize;
  String? selectedColor;

  final List<String> sizes = ["Small (S)", "Medium (M)", "Large (L)"];
  final List<String> colors = ["Black", "White", "Red", "Blue"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: 138,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: selectedSize,
                hint: Text("Size"),
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down),
                style: TextStyle(color: Colors.black),
                underline: SizedBox(),
                items: sizes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(value: value, child: Text(value));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSize = newValue;
                  });
                },
              ),
            ),
          ),
          const SizedBox(width: 16,),
          Expanded(
            child: Container(
              width: 138,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: selectedColor,
                hint: Text("Color"),
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down),
                style: TextStyle(color: Colors.black),
                underline: SizedBox(),
                items: colors.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(value: value, child: Text(value));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedColor = newValue;
                  });
                },
              ),
            ),
          ),
          const SizedBox(width: 16,),
          LikeButton(),
        ],
      ),
    );
  }
}
