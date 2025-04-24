import 'dart:math';

import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/machine/machine_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
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
  const Sheet2Page({super.key, required this.MachineId, required this.date});
  final String MachineId;
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
        DetailInspectionEvent.getDetailInspectionList(
            widget.MachineId, widget.date));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Check Sheet", true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // tambah tanggal + machine
              //
              BlocBuilder<MachineBloc, MachineState>(builder: (context, state) {
                return Skeletonizer(
                  enabled: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  child: state.maybeWhen(
                    loaded: (response) => BuildHeader(machine: response,date: widget.date,),
                    orElse: () => SizedBox(),
                    error: (message) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Error: Terjadi Kesalahan',
                            style: TextStyle(
                                fontSize: 25, color: Colors.red),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              context.read<MachineBloc>().add(
                                    MachineEvent.getMachines(widget.MachineId),
                                  );
                            },
                            child: const Text("Retry"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              BuildTable(
                boxBorder: Border.all(color: Colors.black, width: 2),
              ),
              BlocBuilder<DetailInspectionBloc, DetailInspectionState>(
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
                          child:
                              const Center(child: CircularProgressIndicator()),
                        );
                      },
                      loadedList: (response) {
                        // print("response : $response");
                        return _buildSkeleton(response);
                      },
                      orElse: () {
                        return const SizedBox();
                      },
                      error: (message) => Center(
                        child: Text(
                          'Error: $message',
                          style:
                              const TextStyle(fontSize: 25, color: Colors.red),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkeleton(List<DetailInspectionGetModel> response) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: response.length,
      itemBuilder: (context, index) {
        final item = response[index];
        return Container(
          margin: const EdgeInsets.only(top: 10),
          child: BuildTable(
            // date: widget.date,
            response: item,
            // boxBorder: Border.all(color: Colors.black, width: 2),
          ),
        );
      },
    );
    ;
  }
}
