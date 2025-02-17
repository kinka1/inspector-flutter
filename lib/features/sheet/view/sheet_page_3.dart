import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';

import '../../../core/color_values.dart';

@RoutePage()
class Sheet3Page extends StatefulWidget {
  Sheet3Page({super.key, required this.machineId, required this.number});
  final int machineId;
  final int number;

  @override
  State<Sheet3Page> createState() => _Sheet3PageState();
}

class _Sheet3PageState extends State<Sheet3Page> {
  List<Map<String, String>> datas = [
    {'title': 'AIR PRESSURE', 'desk': 'No'},
    {'title': 'DRAIN FILTER', 'desk': 'Ok'},
    {'title': 'BELT C/V U-BENDER', 'desk': 'Ok'},
    {'title': 'B (BACK) PUSHER', 'desk': 'No'},
    {'title': 'R (RIGHT) PUSHER', 'desk': 'Ok'},
    {'title': 'F (FRONT) PUSHER', 'desk': 'No'},
    {'title': 'DIE TILT', 'desk': 'Ok'},
    {'title': 'ARM BENDING', 'desk': 'Ok'},
  ];

  @override
  Widget build(BuildContext context) {
    final double fontSize = 16.0; // Ukuran font default
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorValues.info400,
        title: const Text(
          'Checksheet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 20), // Jarak antar elemen
            table("Inspection Item", "Status", fontSize),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index) {
                  final data = datas[index];
                  final desk = data['desk']!;
                  final backgroundColor = desk == 'No'
                      ? Colors.red.shade100
                      : desk == 'Ok'
                      ? Colors.green.shade100
                      : Colors.white;

                  return SpGrid(
                    children: [
                      SpGridItem(
                        sm: 6,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: index % 2 == 0
                              ? ColorValues.info100
                              : Colors.white,
                          child: Text(
                            data['title']!,
                            style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SpGridItem(
                        sm: 1,
                        child: Container(
                          height: 44,
                          color: index % 2 == 0
                              ? ColorValues.info100
                              : Colors.white,
                        ),
                      ),
                      SpGridItem(
                        sm: 5,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: backgroundColor,
                          child: Text(
                            desk,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              color: desk == 'No'
                                  ? Colors.red
                                  : desk == 'Yes'
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget table(String kiri, String kanan, double size) {
    return SpGrid(
      children: [
        SpGridItem(
          sm: 6,
          child: Container(
            color: ColorValues.info400,
            padding: const EdgeInsets.all(12),
            child: Text(
              kiri,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SpGridItem(
          sm: 1,
          child: Container(
            height: 44,
            color: ColorValues.info400,
          ),
        ),
        SpGridItem(
          sm: 5,
          child: Container(
            color: ColorValues.info400,
            padding: const EdgeInsets.all(12),
            child: Text(
              kanan,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
