import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.fillColor,
    required this.isSelected,
  });
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Color(0xFF747474) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
