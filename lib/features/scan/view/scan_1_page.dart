import 'package:application/core/color_values.dart';
import 'package:application/features/home/view/home_page.dart';
import 'package:application/features/widget/field.dart';
import 'package:application/features/widget/tombol.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Scan1Page extends StatefulWidget {
  const Scan1Page({super.key});

  @override
  State<Scan1Page> createState() => _Scan1PageState();
}

class _Scan1PageState extends State<Scan1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorValues.info400,
        title: const Text(
          'Daily Maintenance',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Field("Masukan ID : "),
            const SizedBox(height: 20),
            tombol("Submit", onPressed), // ✅ Benar
          ],
        ),
      ),
    );
  }

  void onPressed() {
    AutoRouter.of(context).push(const Scan2Route());
  }
}
