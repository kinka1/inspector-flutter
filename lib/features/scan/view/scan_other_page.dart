import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/other/other_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/Other/other_model.dart';
import 'package:maintenanceApp/features/widget/appbarCus.dart';
import 'package:maintenanceApp/features/widget/custom_text_field.dart';
import 'package:maintenanceApp/routes/router.dart';

@RoutePage()
class ScanOtherPage extends StatefulWidget {
  const ScanOtherPage(
      {super.key,
      required this.machineId,
      required this.resultId,
      required this.inspectionId,
      required this.buId,
      required this.userId});
  final String machineId;
  final int resultId;
  final int inspectionId;
  final String buId;
  final int userId;

  @override
  State<ScanOtherPage> createState() => _ScanOtherPageState();
}

class _ScanOtherPageState extends State<ScanOtherPage> {
  final TextEditingController _OtherController = TextEditingController();
  DateTime date = DateTime.now();
  String tanggal = DateFormat('yyyy-MM-dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Daily Maintenance", false),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: _OtherController,
              hintText: "Masukan Keluhan",
              labelText: "Other",
              textInputType: TextInputType.text,
              borderRadius: 10,
              validator: (value) =>
                  value!.isEmpty ? "Other tidak boleh kosong" : null,
              LabelTextStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            BlocConsumer<DetailInspectionBloc, DetailInspectionState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: () {
                    Flushbar(
                      title: 'Berhasil',
                      message: 'Data berhasil disimpan',
                      duration: const Duration(seconds: 2),
                      backgroundColor: ColorValues.primary500,
                    );
                  },
                  error: (error) => Flushbar(
                    title: 'Terjadi Kesalahan',
                    message: error,
                    duration: const Duration(seconds: 3),
                    backgroundColor: ColorValues.danger500,
                  ).show(context),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );

                return GestureDetector(
                  onTap: isLoading
                      ? () => const CircularProgressIndicator()
                      : () {
                          if (_OtherController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("DESKRIPSI WAJIB DIISI")),
                            );
                            return;
                          }

                          final des = _OtherController.text;

                          context
                              .read<DetailInspectionBloc>()
                              .add(DetailInspectionEvent.postDetailInspection(
                                DetailInspectionModelAdd(
                                  remark: des,
                                  status: "NG",
                                  InspectionId: widget.inspectionId,
                                  ResultId: widget.resultId,
                                ),
                              ));
                          print("BERHASIL POSTING DATA");

                          AutoRouter.of(context).push(Scan2Route(
                            machineId: widget.machineId,
                            status: "NG",
                            ResultId: widget.resultId,
                            statusOther: "NG",
                            buId: widget.buId,
                            userId: widget.userId,
                          ));
                        },
                  child: isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.2,
                              ),
                              color: ColorValues.kuningButton,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "SIMPAN",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                );
              },
            ),
            // GestureDetector(
            //   onTap: () {
            //     if (_OtherController.text.isEmpty) {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(content: Text("DESKRIPSI WAJIB DIISI")),
            //       );
            //       return;
            //     }

            //     final des = _OtherController.text;

            //     context
            //         .read<DetailInspectionBloc>()
            //         .add(DetailInspectionEvent.postDetailInspection(
            //           DetailInspectionModelAdd(
            //             description: des,
            //             status: "NG",
            //             machineInspectionId: widget.machineInspectionId,
            //             tanggal: tanggal,
            //             resultId: widget.resultId,
            //           ),
            //         ));
            //     print("BERHASIL POSTING DATA");
            //   },
            //   child: Container(
            //     width: double.infinity,
            //     margin: EdgeInsets.only(top: 40),
            //     decoration: BoxDecoration(
            //       color: ColorValues.kuningButton,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     padding: const EdgeInsets.symmetric(vertical: 15),
            //     child: Text(
            //       "SIMPAN",
            //       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            //           color: Colors.white, fontWeight: FontWeight.bold),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
