import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/models/machine/machine_model.dart';
import 'package:application/features/InspectionItem/bloc/inspection_item_bloc.dart';
import 'package:application/features/machine/bloc/machine_bloc.dart';
import 'package:application/features/widget/buildForm.dart';
import 'package:application/features/widget/col.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:application/core/color_values.dart';
import 'package:application/features/widget/buildHeader.dart';
import 'package:logger/logger.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  var logger = Logger();

  @override
  void initState() {
    super.initState();
    context.read<MachineBloc>().add(MachineEvent.getMachines(1));
    context
        .read<InspectionItemBloc>()
        .add(const InspectionItemEvent.GetInspectionItem(1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorValues.info400,
        title: const Text(
          'Daily Maintenance',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        style: TextStyle(fontSize: 25),
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
                    loaded: (response) => _buildform(response),
                    orElse: () => _buildSkeletonForm1(),
                    error: (message) => Center(
                      child: Text(
                        'Error: $message',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildform(List<InspectionitemModel> items) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = items[index];
        return Buildform(
          id: index,
          item: item,
        );
      },
    );
  }

  Widget _buildSkeleton() {
    return Padding(
      // ✅ Gunakan Padding daripada ListView
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

  Widget _buildSkeletonForm1() {
    return SizedBox(
      height: 400,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          itemCount: 5,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            return const Buildform(
              id: 1,
              item: InspectionitemModel(
                itemName: 'loading...',
                specification: 'loading...',
                method: 'loading...',
                frequency: 'loading...',
                itemId: 0,
                number: 0,
                machineId: 0,
                imagePath: 'loading...',
              ),
            );
          }),
    );
  }
}
