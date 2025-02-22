import 'package:application/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/buildForm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class Sheet4Page extends StatefulWidget {
  Sheet4Page({super.key, required this.id, required this.number, required this.bulan});
  final int id;
  final int number;
  final String bulan;

  @override
  State<Sheet4Page> createState() => _Sheet4PageState();
}

class _Sheet4PageState extends State<Sheet4Page> {
  final logger = Logger();
  List<DetailInspectionModel> savedDetails = []; 
  // Menyimpan status form
  @override
  void initState() {
    super.initState();
    context.read<DetailInspectionBloc>().add(
        DetailInspectionEvent.getDetailInspection(widget.id, widget.number, widget.bulan));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarCus(context, "Daily Maintenance",false),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<DetailInspectionBloc, DetailInspectionState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.maybeWhen(
                          loading: () => true, orElse: () => false),
                      child: state.maybeWhen(
                        getData: (response) => Buildform(
                          item: response,
                          id: widget.id,
                        ),
                        orElse: () => _buildSkeletonForm1(),
                        error: (message) => Center(
                          child: Text(
                            'Error: $message',
                            style: const TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
  
  void onSave(int number, String status, String description) {
    setState(() {
      final existingIndex = savedDetails.indexWhere((detail) => detail.number == number);
      final newDetail = DetailInspectionModel(
        itemName: "Example",
        specification: "Example Spec",
        method: "Example Method",
        frequency: "Example Frequency",
        number: number,
        status: status,
        description: description,
        machineId: widget.id,
        imageName: "example.png",
      );

      if (existingIndex != -1) {
        savedDetails[existingIndex] = newDetail; // Update
      } else {
        savedDetails.add(newDetail); // Tambah data baru
      }
    });
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