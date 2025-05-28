import 'dart:math';

import 'package:logger/logger.dart';
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
  final Logger logger = Logger();
  int today = DateTime.now().day;
  late Color warna = ColorValues.grayscale400;

  @override
  void initState() {
    super.initState();
    logger.d("resultId : ${widget.resultId}");
    context.read<DetailInspectionBloc>().add(
          DetailInspectionEvent.getDetailByDate(widget.resultId.toString()),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Result Inspection",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            print("Back pressed");
            AutoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorValues.hijauTua, ColorValues.hijauSedang],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
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
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 0, top: 20),
                child: Text(
                  "List Inspection",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorValues.grayscale900,
                      ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10), // Add margin to the container
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: ColorValues.grayscale700, width: 3.0),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: ColorValues.grayscale400,
                  //     blurRadius: 5,
                  //     offset: Offset(0, 2),
                  //   ),
                  // ],
                ),
                padding: const EdgeInsets.only(
                    left: 5, right: 5, bottom: 0, top: 20),
                child: Column(
                  children: [
                    const BuildTable(

                        // borderRadius:  BorderRadius.circular(15),
                        ),
                    Container(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                        child: _buildIsiTable())
                  ],
                ),
              ),
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: statusOther ? response.length : response.length + 1,
      itemBuilder: (context, index) {
        if (!statusOther && index == response.length) {
          return Container(
            margin: const EdgeInsets.only(top: 0),
            child: BuildTable(
              textStyle: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.black),
              response: const DetailInspectionGetModel(
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
              boxBorder: const Border(
                bottom: BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
          );
        }
        final item = response[index];
        return Container(
          margin: const EdgeInsets.only(top: 0),
          child: BuildTable(
            response: item,
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black),
            boxBorder: const Border(
              bottom: BorderSide(color: Colors.black, width: 1.0),
            ),
          ),
        );
      },
    );
    
  }
}
