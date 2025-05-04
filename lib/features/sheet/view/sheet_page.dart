import 'package:intl/intl.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/result/result_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/features/widget/appbarCus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

@RoutePage()
class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  final DateRangePickerController _controllerDateRange =
      DateRangePickerController();

  DateTime selectedDate = DateTime.now();

  String formatDate(DateTime? date) {
    if (date == null) return "Select a date";
    return DateFormat('dd-MM-yyyy').format(date); // Format: tanggal-bulan-tahun
  }

  @override
  void initState() {
    super.initState();
  }

  void _showDatePicker() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation, secondaryAnimation) {
        return Container();
      },
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
          child: AlertDialog(
            content: SizedBox(
              height: 500,
              width: 500,
              child: SfDateRangePicker(
                maxDate: DateTime.now(),
                controller: _controllerDateRange,
                view: DateRangePickerView.month,
                selectionMode: DateRangePickerSelectionMode.single,
                showActionButtons: true,
                showNavigationArrow: true,
                monthViewSettings: const DateRangePickerMonthViewSettings(
                    enableSwipeSelection: false),
                onSubmit: (Object? value) {
                  if (value is DateTime) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                  Navigator.pop(context);
                },
                onCancel: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appbarCus(context, "Checksheet", true),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: _showDatePicker,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedDate != null
                                ? formatDate(selectedDate)
                                : "Select a date",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.calendar_today),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (selectedDate != null) {
                        // Kirim event ke ResultBloc dengan tanggal yang dipilih
                        String formattedDate = formatDate(selectedDate);
                        context.read<DetailInspectionBloc>().add(
                            DetailInspectionEvent.getDetailInspectionByDate(
                                formattedDate));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("MOHON PILIH TANGGAL")),
                        );
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: 60,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: ColorValues.kuningButton),
                      alignment: Alignment.center,
                      child: Text(
                        "Cari",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
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
                      loadedByDateList: (response) {
                        if (response.isEmpty) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: const Center(
                              child: Text(
                                'Data tidak ditemukan',
                              ),
                            ),
                          );
                        } else {
                          return Column(
                            children: response
                                .map((result) =>
                                    _buildItem(result, selectedDate))
                                .toList(),
                          );
                        }
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
              // for (var i = 0; i < 15; i++) _buildItem(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(DetailInspectionGetModel detail,DateTime date) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(Sheet2Route(
          MachineId: detail.machine.machineId.toString(),
          date: formatDate(date),
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: ColorValues.grayscale700),
        ),
        width: double.infinity,
        child: Text(
          detail.machine.machineName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
