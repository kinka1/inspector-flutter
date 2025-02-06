import 'package:application/core/color_values.dart';
import 'package:flutter/material.dart';

Widget tombol(String text, VoidCallback onPressed) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorValues.info400,
      padding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    onPressed: onPressed,
    child: Text(text,
        style: TextStyle(fontSize: 20, color: Colors.white)),
  );
}
