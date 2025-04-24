import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/features/widget/col.dart';
import 'package:maintenanceApp/features/widget/textTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildHeader extends StatelessWidget {
  BuildHeader({super.key, required this.machine, this.date});
  final String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  final MachineModel machine;
  final String? date;

  @override
  Widget build(BuildContext context) {
    Color warna = Colors.white;
    double size = 20;
    return Container(
      padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 35.0),
      decoration: const BoxDecoration(
        color: ColorValues.hijauMain,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Col(
                  title: "Section Name : ",
                  caption: machine.sectionName,
                  warna: warna,size: size,),
              Col(title: "Line : ", caption: machine.line, warna: warna,size: size,),
              Col(
                  title: "Machine Name : ",
                  caption: machine.machineName,
                  warna: warna,size: size,),
              Col(
                  title: "Machine Number : ",
                  caption: machine.machineNumber.toString(),
                  warna: warna,size: size,),
              Col(
                  title: "Dockument Number : ",
                  caption: machine.dockumentNo,
                  warna: warna,size: size,),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
