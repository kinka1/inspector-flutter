import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/data/models/Result/result_model.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/kartu.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
  final logger = Logger();
  late Color warna = ColorValues.grayscale400;

  @override
  void initState() {
    super.initState();
    logger.d("HASIL : ${widget.result}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Checksheet", true),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              "PILIH TANGGAL : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 20, // Jarak horizontal antar elemen
              runSpacing: 20, // Jarak vertikal antar elemen
              children: [
                for (var i = 1; i <= today; i++)
                  Kartu(
                    status: _getStatusForDate(
                        i,"status"), // Atau status default jika index di luar batas
                    onPressed: () {
                      AutoRouter.of(context).push(Sheet3Route(
                        bulan: "${widget.result.month}-${i.toString().padLeft(2, '0')}",
                        description: _getStatusForDate(
                        i,"description"),
                        machineId: widget.result.machine.machineId,
                      ));
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

  String _getStatusForDate(int date,String type) {
    // Cari data yang memiliki tanggal sama dengan `date`
    var matchingData = widget.result.data.firstWhere(
      (data) =>
          DateFormat('dd').format(data.date) == date.toString().padLeft(2, '0'),
      orElse: () {
        return ResultModel(
            id: 0,
            userId: " ",
            description: " ",
            status: " ",
            date: DateTime.now());
      },
    );

    print("MATCHING DATA : $matchingData");

    // Jika ada data yang cocok, kembalikan statusnya
    if (matchingData != null) {
      if (type == "status") {
        return matchingData.status;
      } else if (type == "description") {
        return matchingData.description;
      }
    }

    // Jika tidak ada data, kembalikan status default
    return "Unknown";
  }
}
