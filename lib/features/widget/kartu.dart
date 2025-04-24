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
            border: Border.all(color: Colors.black),
          ),
          alignment: Alignment.center,
          child: Text(caption,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),textAlign: TextAlign.center,),
        ));
  }

  Color selectedColor() {
    if (status == "OK") {
      return ColorValues.hijauOK;
    } else if (status == "NG") {
      return ColorValues.merahNG;
    } else {
      return ColorValues.kuningKOSING; // Default jika belum diisi
    }
  }
}
