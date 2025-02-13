import 'package:application/core/color_values.dart';
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/models/machine/machine_model.dart';
import 'package:application/features/InspectionItem/bloc/inspection_item_bloc.dart';
import 'package:application/features/machine/bloc/machine_bloc.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/buildForm.dart';
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
  const Scan2Page({super.key, required this.id});
  final int id;

  @override
  State<Scan2Page> createState() => _Scan2PageState();
}

class _Scan2PageState extends State<Scan2Page> {
  final logger = Logger();

  @override
  void initState() {
    super.initState();
    context.read<MachineBloc>().add(MachineEvent.getMachines(widget.id));
    context.read<InspectionItemBloc>().add(InspectionItemEvent.GetInspectionItem(widget.id));
  }

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
                  enabled:
                      state.maybeWhen(loading: () => true, orElse: () => false),
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
                  enabled:
                      state.maybeWhen(loading: () => true, orElse: () => false),
                  child: state.maybeWhen(
                    loaded: (response) => _buildCard(response),
                    orElse: () => _buildSkeletonForm1(),
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
            // const SizedBox(height: 20),
            SizedBox(height: 10),
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
              caption: '${index + 1}',
              onPressed: () => AutoRouter.of(context)
                  .push(Scan3Route(id: widget.id, number: index + 1)),
              width: double.infinity,
              height: 100,
            ),
          );
        },
      ),
    );
  }

  // Widget _buildform(InspectionitemModel items) {
  //   return ListView.separated(
  //     shrinkWrap: true,
  //     physics: const NeverScrollableScrollPhysics(),
  //     itemCount: items.length,
  //     separatorBuilder: (context, index) => const SizedBox(height: 12),
  //     itemBuilder: (context, index) {
  //       final item = items[index];
  //       return Buildform(
  //         item: item,
  //       );
  //     },
  //   );
  // }

  void onPressedSubmit() {
    AutoRouter.of(context).push(const HomeRoute());
  }

  Widget _buildSkeletonForm1() {
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
