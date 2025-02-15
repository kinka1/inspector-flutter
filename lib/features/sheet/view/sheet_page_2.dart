import 'dart:ffi';

import 'package:application/features/widget/kartu.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/color_values.dart';

@RoutePage()
class Sheet2Page extends StatefulWidget {
  const Sheet2Page({super.key});

  @override
  State<Sheet2Page> createState() => _Sheet2PageState();
}

class _Sheet2PageState extends State<Sheet2Page> {
  late Color warna = ColorValues.grayscale400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorValues.info400,
        title: const Text(
          'Checksheet',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '4RF-PE-MDS-014 NOTCHING',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Bulan ke-1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20, // Jarak horizontal antar elemen
              runSpacing: 20, // Jarak vertikal antar elemen
              children: [
                // for (var i = 1; i <= 31; i++) kartu(i,onPressed),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    AutoRouter.of(context).push(const Sheet3Route());
  }

  late String selectedstatus;

  Color selectedColor() {
    if (selectedstatus == "OK") {
      warna = Colors.green;
    } else if (selectedstatus == "Abnormal") {
      warna = Colors.red;
    }
    return warna;
  }
}
