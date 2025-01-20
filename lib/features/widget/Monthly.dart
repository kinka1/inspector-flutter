import 'package:application/core/color_values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Monthly extends StatelessWidget {
  final int bulan;

  const Monthly({super.key, required this.bulan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Bulan ke-$bulan",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('/sheet2');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorValues.info100,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text('4RF-PE-MDS-014 NOTCHING',style: TextStyle(fontSize: 20),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print('ElevatedButton ditekan!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorValues.info100,
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text('4RF-PE-MDS-021 U-BENDER',style: TextStyle(fontSize: 20),),
            ),
          ),
        ],
      ),
    );
  }
}
