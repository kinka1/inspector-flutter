import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/features/home/widget/buildCard.dart';

class BuildSummary extends StatelessWidget {
  const BuildSummary(
      {super.key,
      required this.okCOunt,
      required this.ngCount,
      required this.pendingCount});
  final int okCOunt;
  final int ngCount;
  final int pendingCount;

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String formattedDate = DateFormat('EEEE, dd - MM - yyyy').format(today);
    return Container(
      height: 215,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -2), // arah bayangan ke atas
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Summary',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                formattedDate,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Buildcard(
                    title: "OK",
                    value: okCOunt.toString(),
                    color: ColorValues.hijauMuda),
                Buildcard(
                    title: "Not Good",
                    value: ngCount.toString(),
                    color: ColorValues.redNG),
                Buildcard(
                    title: "Pending",
                    value: pendingCount.toString(),
                    color: ColorValues.greyPending),
              ],
            ),
          )
        ],
      ),
    );
  }
}
