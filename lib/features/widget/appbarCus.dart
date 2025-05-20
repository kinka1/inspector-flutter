import 'package:flutter/material.dart';
import 'package:maintenanceApp/core/color_values.dart';

PreferredSizeWidget appbarCus(
  BuildContext context,
  String title,
  bool isLeading,
   {
  VoidCallback? onBackPressed, // <- Tambahkan parameter opsional
}) {
  return AppBar(
    elevation: 0,
    title: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
    leading: isLeading
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              onPressed: onBackPressed ?? () => Navigator.pop(context), // <- Fallback
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          )
        : null, // <- bisa di-nonaktifkan jika isLeading == false
    backgroundColor: ColorValues.primary700,
  );
}
