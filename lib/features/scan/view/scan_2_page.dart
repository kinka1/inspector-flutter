import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/machineInspection/machine_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/other/other_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/MachineInspection/machine_inspection_model.dart';
import 'package:maintenanceApp/data/models/Other/other_model.dart';
import 'package:maintenanceApp/features/widget/appbarCus.dart';
import 'package:maintenanceApp/features/widget/buildHeader.dart';
import 'package:maintenanceApp/features/widget/kartu.dart';
import 'package:maintenanceApp/features/widget/showModal.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:skeletonizer/skeletonizer.dart';

// @RoutePage()
@RoutePage()
class Scan2Page extends StatefulWidget {
  const Scan2Page({
    super.key,
    required this.machineId,
    required this.status,
    this.number,
    required this.ResultId,
    this.statusOther,
    required this.buId,
    required this.userId,
  });

  final int ResultId;
  final String machineId;
  final String? status;
  final int? number;
  final String? statusOther;
  final String buId;
  final int userId;

  @override
  State<Scan2Page> createState() => _Scan2PageState();
}

class _Scan2PageState extends State<Scan2Page> {
  String statusOther = "-";
  // final logger = Logger();
  final String tanggal = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String machineId = "-";
  bool hasFetched = false;

  @override
  void initState() {
    super.initState();
    // logger.i("Init Scan2Page");
    // logger.d("machine ID DI PAGE 2: ${widget.machineId}");

    // Fetch data awal
    context.read<MachineInspectionBloc>().add(
          MachineInspectionEvent.GetMachineInspection(
              widget.machineId, widget.buId),
        );

    Future.delayed(Duration(seconds: 1), () {
      context.read<DetailInspectionBloc>().add(
            DetailInspectionEvent.getDetailByDate(widget.ResultId.toString()),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Daily Maintenance", false,onBackPressed: () {
    AutoRouter.of(context).replace(
       HomenewRoute(),
    );
    // Lakukan sesuatu
  },),
      body: Container(
        color: Colors.white,
        child: Form(
          child: SingleChildScrollView(
            child: _buildAll(),
          ),
        ),
      ),
    );
  }

  Widget _buildAll() {
    return BlocBuilder<MachineInspectionBloc, MachineInspectionState>(
      builder: (context, state) {
        // logger.d("state machine inspection: $state");
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (response) {
            machineId = response.machineId;
            return Column(
              children: [
                BuildHeader(machine: response.machine),
                _buildDetailAndButtons(response),
              ],
            );
          },
          orElse: () => const Center(
            child: Text("TERJADI KESALAHAN"),
          ),
        );
      },
    );
  }

  Widget _buildDetailAndButtons(MachineInspectionModel machine) {
    return BlocBuilder<DetailInspectionBloc, DetailInspectionState>(
      builder: (context, state) {
        // logger.d("state detail inspection: $state");
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loadedbyDate: (items) {
            final itemCount = items.length;
            String statuskirim =
                statusOther == "NG" ? statusOther : _getSelectedStatus(items);

            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: _buildGridButtons(machine, items),
                ),
                if (statusOther == "-")
                  ShowModal(
                    machineId: widget.machineId,
                    status: statuskirim,
                    resultId: widget.ResultId,
                    buId: widget.buId,
                    userId: widget.userId,
                  ),
              ],
            );
          },
          error: (message) => _buildErrorRetry(message),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildGridButtons(
      MachineInspectionModel machine, List<DetailInspectionGetModel> details) {
    final itemCount = machine.item.length;
    int number = 1;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.56,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 60,
          mainAxisSpacing: 20,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          final item = machine.item[index];
          final status = _getStatusByNumber(details, item.itemId);

          return Kartu(
            status: status,
            caption: item.itemName,
            onPressed: () {
              // logger.d("item number: ${item.number}");
              if (item.itemId == 0) {
                AutoRouter.of(context).push(
                  ScanOtherRoute(
                    resultId: widget.ResultId,
                    machineId: widget.machineId,
                    inspectionId: item.itemId,
                    buId: widget.buId,
                    userId: widget.userId,
                  ),
                );
              } else {
                AutoRouter.of(context).push(
                  Scan3Route(
                    key: UniqueKey(),
                    model: item,
                    machineInspectionId: item.machineInspectionId,
                    machineId: machine.machineId,
                    ResultId: widget.ResultId,
                    userId: widget.userId,
                  ),
                );
              }
            },
            height: 80,
          );
        },
      ),
    );
  }

  Widget _buildErrorRetry(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message',
              style: const TextStyle(fontSize: 20, color: Colors.red)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<MachineInspectionBloc>().add(
                    MachineInspectionEvent.GetMachineInspection(
                        widget.machineId, widget.buId),
                  );

              context.read<DetailInspectionBloc>().add(
                    DetailInspectionEvent.getDetailByDate(
                        widget.ResultId.toString()),
                  );
            },
            child: const Text("Retry"),
          ),
        ],
      ),
    );
  }

  String _getStatusByNumber(
      List<DetailInspectionGetModel> details, int number) {
    final item = details.firstWhereOrNull(
      (detail) => detail.inspectionItem.itemId == number,
    );
    return item?.status ?? "-";
  }

  String _getSelectedStatus(List<DetailInspectionGetModel> details) {
    String statusTemp = "-";
    for (int i = 0; i < details.length; i++) {
      if (details[i].status == "NG") {
        return "NG";
      } else if (details[i].status == "OK") {
        statusTemp = "OK";
      }
    }
    return statusTemp;
  }
}
