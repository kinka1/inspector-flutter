import 'package:application/core/color_values.dart';
import 'package:flutter/material.dart';

Widget appbarCus(BuildContext context,String title) {
  return AppBar(
    automaticallyImplyLeading: false,
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
