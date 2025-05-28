import 'package:maintenanceApp/core/color_values.dart';
import 'package:flutter/material.dart';

class Kartu extends StatelessWidget {
  const Kartu({
    super.key,
    required this.caption,
    required this.onPressed,
    this.width,
    this.height,
    this.textStyle,
    this.status,
  });

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
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: selectedColor(),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6), // Lebih gelap
                spreadRadius: 3, // Lebih besar dari 2
                blurRadius: 15, // Lebih blur
                offset: const Offset(0, 8), // Lebih jauh ke bawah
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            caption,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: setTextColor(), fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ));
  }

  Color selectedColor() {
    if (status == "OK") {
      return ColorValues.hijauMuda;
    } else if (status == "NG") {
      return ColorValues.redNG;
    } else {
      return ColorValues.kuningKOSING; // Default jika belum diisi
    }
  }

  Color setTextColor() {
    if (status != "-") {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
