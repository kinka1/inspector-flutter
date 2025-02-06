import 'package:application/core/color_values.dart';
import 'package:application/features/widget/kartu.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

@RoutePage()
class Scan2Page extends StatefulWidget {
  const Scan2Page({super.key});

  @override
  State<Scan2Page> createState() => _Scan2PageState();
}

class _Scan2PageState extends State<Scan2Page> {
  final String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '4RF-PE-MDS-014 NOTCHING',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  formattedDate,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            // ListView.builder()
            Wrap(
              spacing: 20, // Jarak horizontal antar elemen
              runSpacing: 20, // Jarak vertikal antar elemen
              children: [
                for (var i = 1; i <= 31; i++) kartu(i,onPressed),
              ],
            ),
          ],
        )
      ),
    );
  }
  void onPressed() {
    AutoRouter.of(context).push(const Scan3Route());
  }
}