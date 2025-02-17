import 'package:application/data/models/Result/result_model.dart';
import 'package:application/features/widget/kartu.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/color_values.dart';

@RoutePage()
class Sheet2Page extends StatefulWidget {
  Sheet2Page({super.key, required this.result});
  final ResultData result;

  @override
  State<Sheet2Page> createState() => _Sheet2PageState();
}

class _Sheet2PageState extends State<Sheet2Page> {
  int today = DateTime.now().day;

  late Color warna = ColorValues.grayscale400;

  @override
  void initState() {
    super.initState();
  }

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
              children: [
                Column(
                  children: [
                    Text(
                      widget.result.machine.machineName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.result.machine.dockumentNo,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  widget.result.month,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20, // Jarak horizontal antar elemen
              runSpacing: 20, // Jarak vertikal antar elemen
              children: [
                for (var i = 1; i <= today; i++)
                  Kartu(
                    onPressed: () {
                      AutoRouter.of(context).push(Sheet3Route(
                          machineId: widget.result.machineId, number: i));
                    },
                    caption: '$i',
                  ),
              ],
            ),
          ],
        ),
      ),
    );
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
