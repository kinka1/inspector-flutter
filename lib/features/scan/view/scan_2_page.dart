import 'package:application/core/color_values.dart';
import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/models/machine/machine_model.dart';
import 'package:application/features/InspectionItem/bloc/inspection_item_bloc.dart';
import 'package:application/features/machine/bloc/machine_bloc.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/buildHeader.dart';
import 'package:application/features/widget/kartu.dart';
import 'package:application/features/widget/tombol.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class Scan2Page extends StatefulWidget {
  const Scan2Page({super.key, required this.id, required this.status});
  final int id;
  final String status;

  @override
  State<Scan2Page> createState() => _Scan2PageState();
}

class _Scan2PageState extends State<Scan2Page> {
  final logger = Logger();
  List<DetailInspectionModel> savedDetails = []; // Menyimpan status form

  @override
  void initState() {
    super.initState();
    context.read<MachineBloc>().add(MachineEvent.getMachines(widget.id));
    context.read<InspectionItemBloc>().add(InspectionItemEvent.GetInspectionItem(widget.id));
  }

  // Fungsi mendapatkan status berdasarkan nomor form
  String getStatus(int number) {
    print("number: $number");
    final detail = savedDetails.firstWhere(
      (detail) => detail.number == number,
      orElse: () => const DetailInspectionModel(
        status: "Belum diisi", number: 0, itemName: "", specification: "", 
        method: "", frequency: "", description: "", machineId: 0, imageName: ""),
    );
    return detail.status;
  }

  // Fungsi untuk menyimpan data yang diisi
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Daily Maintenance"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<MachineBloc, MachineState>(
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state.maybeWhen(loading: () => true, orElse: () => false),
                  child: state.maybeWhen(
                    loaded: (response) => BuildHeader(machine: response),
                    orElse: () => _buildSkeleton(),
                    error: (message) => Center(
                      child: Text(
                        'Error: $message',
                        style: const TextStyle(fontSize: 25, color: Colors.red),
                      ),
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<InspectionItemBloc, InspectionItemState>(
              builder: (context, state) {
                return Skeletonizer(
                  enabled: state.maybeWhen(loading: () => true, orElse: () => false),
                  child: state.maybeWhen(
                    loaded: (response) => _buildCard(response),
                    orElse: () => _buildSkeletonForm(),
                    error: (message) => Center(
                      child: Text(
                        'Error: $message',
                        style: const TextStyle(fontSize: 25, color: Colors.red),
                      ),
                    ),
                  ),
                );
              },
            ),
            // BlocConsumer<Result>(builder: (), listener: listener),
            const SizedBox(height: 10),
            tombol("Submit", onPressedSubmit),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(List<InspectionitemModel> items) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Kartu(
              status: getStatus(items[index].number),
              caption: '${index + 1}',
              onPressed: () => AutoRouter.of(context)
                  .push(Scan3Route(id: widget.id, number: items[index].number)),
              width: double.infinity,
              height: 100,
            ),
          );
        },
      ),
    );
  }

  void onPressedSubmit() {
    AutoRouter.of(context).push(const HomeRoute());
  }

  Widget _buildSkeletonForm() {
    return SizedBox(
        height: 400,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Kartu(
                caption: '${index + 1}',
                onPressed: () => AutoRouter.of(context)
                    .push(Scan3Route(id: widget.id, number: index + 1)),
                width: double.infinity,
                height: 100,
              ),
            );
          },
        ));
  }

  Widget _buildSkeleton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: BuildHeader(
        machine: const MachineModel(
          machineId: 0,
          sectionName: 'loading...',
          line: 'Loading...',
          machineName: 'Loading...',
          machineNumber: 0,
          dockumentNo: 'Loading...',
        ),
      ),
    );
  }
}