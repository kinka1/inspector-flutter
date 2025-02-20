import 'package:application/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/kartu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../core/color_values.dart';

@RoutePage()
class Sheet3Page extends StatefulWidget {
  Sheet3Page({
    super.key,
    required this.machineId,
    required this.bulan,
    required this.day,
  });
  final int machineId;
  final String bulan;
  final String day;

  @override
  State<Sheet3Page> createState() => _Sheet3PageState();
}

class _Sheet3PageState extends State<Sheet3Page> {
  final logger = Logger();

  @override
  void initState() {
    super.initState();
    String gabungan = "${widget.bulan}-${widget.day}";
    logger.i("message : $gabungan");
    context.read<DetailInspectionBloc>().add(
          DetailInspectionEvent.getDetailInspectionList(widget.machineId, gabungan),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Checksheet", true),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.bulan}-${widget.day}",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Jarak antar elemen
            Expanded(
              child: BlocBuilder<DetailInspectionBloc, DetailInspectionState>(
                builder: (context, state) {
                  return Skeletonizer(
                    enabled:
                        state.maybeWhen(loading: () => true, orElse: () => false),
                    child: state.maybeWhen(
                      loadedList: (response) => _buildCard(response),
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkeletonForm() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Kartu(
              caption: '${index + 1}',
              onPressed: () {},
              width: double.infinity,
              height: 100,
            ),
          );
        },
    );
  }

  Widget _buildCard(List<DetailInspectionGetModel> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Kartu(
              status: items[index].status,
              caption: '${index + 1}',
              onPressed: () {},
              width: double.infinity,
              height: 100,
            ),
          );
        },
    );
  }
}