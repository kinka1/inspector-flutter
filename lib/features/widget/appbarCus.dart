import 'package:maintenanceApp/core/color_values.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appbarCus(
    BuildContext context, String title, bool isLeading) {
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
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
    ),
    backgroundColor: ColorValues.hijauMain,
  );
}
