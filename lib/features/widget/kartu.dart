
import 'package:application/core/color_values.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  const Kartu({super.key, required this.caption, required this.onPressed, this.width, this.height, this.textStyle});
  final String caption;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final TextStyle? textStyle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 60,
        height: height ?? 60,
        decoration: BoxDecoration(
          color: ColorValues.grayscale400,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            caption,
            style: textStyle ?? const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );;
  }
}
