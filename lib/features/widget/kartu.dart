import 'package:application/core/color_values.dart';
import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  const Kartu({super.key, required this.caption, required this.onPressed, this.width, this.height, this.textStyle, this.status});
  
  final String caption;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final String? status; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 60,
        height: height ?? 60,
        decoration: BoxDecoration(
          color: selectedColor(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            caption,
            style: textStyle ?? const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Color selectedColor() {
    if (status == "OK") {
      return ColorValues.primary400;
    } else if (status == "Abnormal") {
      return ColorValues.danger500;
    } else {
      return ColorValues.grayscale400; // Default jika belum diisi
    }
  }
}
