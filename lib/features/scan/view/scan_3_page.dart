import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/bloc/result/result.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/bloc/InspectionItem/inspection_item_bloc.dart';
import 'package:maintenanceApp/data/bloc/auth/auth_bloc.dart';
import 'package:maintenanceApp/features/widget/appbarCus.dart';
import 'package:maintenanceApp/features/widget/buildForm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class Scan3Page extends StatefulWidget {
  const Scan3Page({
    super.key,
    required this.model,
    required this.machineInspectionId,
    required this.machineId,
    required this.ResultId,
    required this.userId,
    this.status, this.remark,
  });
  final String machineId;
  final InspectionitemMachineGetModel model;
  final int machineInspectionId;
  final int ResultId;
  final int userId;
  final String? status;
  final String? remark;
  @override
  State<Scan3Page> createState() => _Scan3PageState();
}

class _Scan3PageState extends State<Scan3Page> {
  // final logger = Logger();
  double margin = 0;
  @override
  void initState() {
    super.initState();
    // context.read<ResultBloc>().add(const ResultEvent.getResult());
  }

  @override
  Widget build(BuildContext context) {
    // logger.d("isnumber : ${widget.model.isNumber}");
    return Scaffold(
        appBar: appbarCus(
          context,
          "Inspection",
          isLeading: true,
          onBackPressed: () {
            context.router.pop();
          },
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Buildform(
                  status: widget.status,
                  remark: widget.remark,
                  item: widget.model,
                  machineInspectionId: widget.machineInspectionId,
                  ResultId: widget.ResultId,
                  machineId: widget.machineId,
                  margin: margin,
                  userId: widget.userId,
                )
              ],
            ),
          ),
        ));
  }
}
