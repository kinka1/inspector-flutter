import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/models/machine/machine_model.dart';
import 'package:application/features/InspectionItem/bloc/inspection_item_bloc.dart';
import 'package:application/features/widget/buildForm.dart';
import 'package:application/features/widget/col.dart';
import 'package:application/features/widget/textTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BuildHeader extends StatelessWidget {
  BuildHeader({super.key, required this.machine});
  final String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  final MachineModel machine;
  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  col("Section Name : ", machine.sectionName),
              textTitle(formattedDate),
                ],
              ),
              col("Line : ", machine.line),
              col("Machine Name : ", machine.machineName),
              col("Machine Number : ", machine.machineNumber.toString()),
              col("Dockument Number : ", machine.dockumentNo),

            ],
          ),

        ],
      ),
    );
    ;
  }
}
