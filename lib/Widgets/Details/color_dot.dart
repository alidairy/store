import 'package:flutter/material.dart';
import 'package:store_app/utils/responsive.dart';

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
      padding: EdgeInsets.all(getFlexibleWidth(context, 3)),
      margin: EdgeInsets.symmetric(horizontal: getFlexibleWidth(context, 15)),
      height: getFlexibleWidth(context, 24),
      width: getFlexibleWidth(context, 24),
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
