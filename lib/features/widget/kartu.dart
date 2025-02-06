
import 'package:application/core/color_values.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Widget kartu(int angka,VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: ColorValues.grayscale400,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            angka.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }