import 'package:application/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/custom_text_field.dart';
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
    required this.description,
  });
  final int machineId;
  final String bulan;
  final String description;

  @override
  State<Sheet3Page> createState() => _Sheet3PageState();
}

class _Sheet3PageState extends State<Sheet3Page> {
  final logger = Logger();

  @override
  void initState() {
    super.initState();
    context.read<DetailInspectionBloc>().add(
          DetailInspectionEvent.getDetailInspectionList(
              widget.machineId, widget.bulan),
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
              "${widget.bulan}",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Remark : ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              widget.description,
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
                    enabled: state.maybeWhen(
                        loading: () => true, orElse: () => false),
                    child: state.maybeWhen(
                      loadedList: (response) => _buildCard(response),
                      orElse: () => _buildSkeletonForm(),
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
    // Temukan nilai maksimal dari properti `number`
    int maxNumber = items.isNotEmpty
        ? items.map((item) => item.number).reduce((a, b) => a > b ? a : b)
        : 0;

    return ListView.builder(
      itemCount: maxNumber, // Gunakan nilai maksimal sebagai jumlah kartu
      itemBuilder: (context, index) {
        // Cari item dengan `number` sesuai dengan indeks saat ini
        final item = items.firstWhere(
          (item) => item.number == index + 1,
          orElse: () => DetailInspectionGetModel(
            id: -1,
            itemName: '',
            specification: '',
            method: '',
            frequency: '',
            number: index + 1,
            status: 'N/A',
            description: '',
            machineId: -1,
            imagePath: '',
            tanggal: DateTime.now(),
          ),
        );

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Kartu(
            status: item.status,
            caption: '${item.number}',
            onPressed: () {},
            width: double.infinity,
            height: 100,
          ),
        );
      },
    );
  }
}
