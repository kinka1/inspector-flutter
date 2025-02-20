
import 'package:application/core/color_values.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appbarCus(BuildContext context, String title, bool isLeading) {
  return AppBar(
    automaticallyImplyLeading: isLeading,
    backgroundColor: ColorValues.info400,
    title: Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
    ),
  );
}
