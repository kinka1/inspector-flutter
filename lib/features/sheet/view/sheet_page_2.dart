import 'dart:math';

import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/machine/machine_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/features/widget/appbarCus.dart';
import 'package:maintenanceApp/features/widget/buildHeader.dart';
import 'package:maintenanceApp/features/widget/buildTable.dart';
import 'package:maintenanceApp/features/widget/kartu.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/color_values.dart';

@RoutePage()
class Sheet2Page extends StatefulWidget {
  const Sheet2Page(
      {super.key,
      required this.machine,
      required this.date,
      required this.resultId});
  final MachineModel machine;
  final int resultId;
  final String date;

  @override
  State<Sheet2Page> createState() => _Sheet2PageState();
}

class _Sheet2PageState extends State<Sheet2Page> {
  int today = DateTime.now().day;
  late Color warna = ColorValues.grayscale400;

  @override
  void initState() {
    super.initState();
    context.read<DetailInspectionBloc>().add(
          DetailInspectionEvent.getDetailByDate(widget.resultId.toString()),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Check Sheet", true),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20),
              // tambah tanggal + machine
              //
              BuildHeader(machine: widget.machine, date: widget.date),
              // _buildTop(),
              Container(
                padding:
                    EdgeInsets.only(left: 25, right: 25, bottom: 0, top: 40),
                child: BuildTable(
                  boxBorder: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  // borderRadius:  BorderRadius.circular(15),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
                  child: _buildIsiTable())
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIsiTable() {
    return BlocBuilder<DetailInspectionBloc, DetailInspectionState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          ),
          child: state.maybeWhen(
            loading: () {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: const Center(child: CircularProgressIndicator()),
              );
            },
            loadedbyDate: (response) {
              // print("response : $response");
              return _buildSkeleton(response);
            },
            orElse: () {
              return const SizedBox();
            },
            error: (message) => Center(
              child: Text(
                'Error: $message',
                style: const TextStyle(fontSize: 25, color: Colors.red),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSkeleton(List<DetailInspectionGetModel> response) {
    bool statusOther =
        response.any((item) => item.inspectionItem.itemName == "OTHER");
    print("Status other : $statusOther");
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: statusOther ? response.length : response.length + 1,
      itemBuilder: (context, index) {
        if (!statusOther && index == response.length) {
          return Container(
            margin: const EdgeInsets.only(top: 0),
            child: const BuildTable(
              response: DetailInspectionGetModel(
                id: 0,
                inspectionItem: InspectionitemModel(
                  itemName: "OTHER",
                  method: "-",
                  itemId: 0,
                  specification: '-',
                  frequency: '-',
                  isNumber: false,
                  prasyarat: '-',
                ),
                status: "OK",
                remark: "-",
              ),
              // boxBorder: Border.all(color: Colors.black, width: 2),
              // borderRadius: BorderRadius.circular(15),
              boxBorder: Border(
                left: BorderSide(color: Colors.black, width: 1.0),
                right: BorderSide(color: Colors.black, width: 1.0),
                bottom: BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
          );
        }
        final item = response[index];
        return Container(
          margin: const EdgeInsets.only(top: 0),
          child: BuildTable(
            // date: widget.date,
            response: item,
            boxBorder: const Border(
              left: BorderSide(color: Colors.black, width: 1.0),
              right: BorderSide(color: Colors.black, width: 1.0),
              bottom: BorderSide(color: Colors.black, width: 1.0),
            ),

            // borderRadius: BorderRadius.circular(15),
          ),
        );
      },
    );
    ;
  }
}
