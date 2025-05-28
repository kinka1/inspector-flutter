import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maintenanceApp/core/color_values.dart';

PreferredSizeWidget appbarCus(
  BuildContext bcontext,
  String title, {
  bool? isLeading,
  VoidCallback? onBackPressed,
}) {
  return AppBar(
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: Theme.of(bcontext)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
    leading: IconButton(
      onPressed: () {
        print("Back pressed");
        AutoRouter.of(bcontext).pop();
      },
      icon: const Icon(Icons.arrow_back, color: Colors.white),
    ),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorValues.hijauTua, ColorValues.hijauSedang],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    ),
  );
}
