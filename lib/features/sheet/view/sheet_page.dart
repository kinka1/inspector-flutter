import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/result/result_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/data/parse.dart';
import 'package:maintenanceApp/features/widget/appbarCus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

@RoutePage()
class SheetPage extends StatefulWidget {
  const SheetPage({super.key, required this.buId});
  final String buId;

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  final DateRangePickerController _controllerDateRange =
      DateRangePickerController();
  final logger = Logger();

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
            backgroundColor: Colors.white,
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
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(500, 100),
                  bottomRight: Radius.elliptical(500, 100),
                ),
                gradient: LinearGradient(
                  colors: [
                    ColorValues.hijauTua,
                    ColorValues.hijauSedang
                  ], // Warna gradasi
                  begin: Alignment.topLeft, // Titik awal gradasi
                  end: Alignment.bottomRight, // Titik akhir gradasi
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 5), // Posisi bayangan
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text("Select Date",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: _showDatePicker,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorValues.grayscale700),
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
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

                              // context.read<DetailInspectionBloc>().add(
                              //     DetailInspectionEvent.getDetailInspectionByDate(
                              //         formattedDate));
                              // var parseDate = parseToStringDate(selectedDate);
                              // logger.d("tanggal : $parseDate");
                              context.read<ResultBloc>().add(
                                    ResultEvent.getResultByDatelist(
                                      widget.buId,
                                      parseToStringDate(selectedDate),
                                    ),
                                  );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("MOHON PILIH TANGGAL")),
                              );
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 60,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: ColorValues.hijauMuda),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 35,
                            ),
                            //   ],
                            // ),
                          ),
                        )
                      ],
                    ),
                    // for (var i = 0; i < 15; i++) _buildItem(),
                  ],
                ),
              ),
            ),
            BlocBuilder<ResultBloc, ResultState>(
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
                    loadedByDateList: (response) {
                      if (response.isEmpty || response[0].resultId == 0) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: const Center(
                            child: Text(
                              'No results found',
                            ),
                          ),
                        );
                      } else {
                        return Column(
                          children: response
                              .map((result) => _buildItem(result.machine,
                                  selectedDate, result.resultId))
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
                        style: const TextStyle(fontSize: 25, color: Colors.red),
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

  Widget _buildItem(MachineModel machine, DateTime date, int resultId) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(Sheet2Route(
          date: parseToStringDate(date),
          machine: machine,
          resultId: resultId,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        margin: const EdgeInsets.only(top: 18, left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 3),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(toTitleCase(machine.line),
                style: Theme.of(context).textTheme.bodyMedium),
            Text(toTitleCase(machine.machineName),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
