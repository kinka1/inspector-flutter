import 'package:another_flushbar/flushbar.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/features/widget/col.dart';
import 'package:maintenanceApp/features/widget/custom_text_field.dart';
import 'package:maintenanceApp/features/widget/textCaption.dart';
import 'package:maintenanceApp/features/widget/textTitle.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Buildform extends StatefulWidget {
  const Buildform({
    super.key,
    required this.item,
    required this.machineInspectionId,
    required this.ResultId,
    required this.machineId,
    required this.margin,
    required this.userId,
    // required this.machineInspectionId,
  });

  final InspectionitemMachineGetModel item;
  final int machineInspectionId;
  final int ResultId;
  final String machineId;
  final double margin;
  final int userId;

  @override
  State<Buildform> createState() => _BuildformState();
}

class _BuildformState extends State<Buildform> {
  late String selectedStatus = " ";
  DateTime date = DateTime.now();
  String tanggal = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late TextEditingController _descriptionController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final logger = Logger();
  String status = "-";
  double height = 0;

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  List<DetailInspectionModel> savedDetails = [];
  @override
  Widget build(BuildContext context) {
    if (widget.item.isNumber == true) {
      height = 0.45;
    } else {
      height = 0.51;
    }
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Image.network(
                widget.item.imagePath,
                height: 300,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  return progress == null
                      ? child
                      : const CircularProgressIndicator();
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: widget.margin),
              height: MediaQuery.of(context).size.height * height,
              padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
              decoration: BoxDecoration(
                color: ColorValues.hijauMain,
                border: Border.all(color: ColorValues.hijauMain),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Col(
                      title: "Inspection Item  ",
                      flexSize: 2,
                      caption: widget.item.itemName,
                      warna: Colors.white),
                  Col(
                      title: "Specification ",
                      flexSize: 2,
                      caption: widget.item.specification,
                      warna: Colors.white),
                  Col(
                      title: "Method ",
                      flexSize: 2,
                      caption: widget.item.method,
                      warna: Colors.white),
                  Col(
                      title: "Period ",
                      flexSize: 2,
                      caption: widget.item.frequency,
                      warna: Colors.white),
                  widget.item.isNumber == false
                      ? Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text("Status",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white)),
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  _buildCard("OK"),
                                  const SizedBox(width: 10),
                                  _buildCard("NG"),
                                ],
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  CustomTextField(
                    controller: _descriptionController,
                    hintText:
                        "Wajib diisi jika Specification Berupa angka (Contoh: 1, 2, 3)",
                    labelText: "Remark",
                    textInputType: TextInputType.text,
                    LabelTextStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
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
                                  // logger.i("ISLOADING : FALSE");
                                  if (_formKey.currentState!.validate()) {
                                    // if(widget.)
                                    if (widget.item.isNumber == true) {
                                      if (_descriptionController.text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text(
                                                  "DESKRIPSI WAJIB DIISI")),
                                        );
                                        return;
                                      }
                                      if (widget.item.prasyarat != "-") {
                                        final prasyarat = widget.item.prasyarat;
                                        if (isNumeric(
                                            _descriptionController.text)) {
                                          double actual = double.parse(
                                              _descriptionController.text);
                                          // logger.d("actual : $actual");
                                          if (isValidInput(
                                              _descriptionController.text,
                                              prasyarat)) {
                                            selectedStatus = "OK";
                                            // logger.i("VALIDASI BERHASIL");
                                          } else {
                                            selectedStatus = "NG";
                                            // logger.i("VALIDASI GAGAL");
                                          }
                                        } else {
                                          Flushbar(
                                            title: 'Terjadi Kesalahan',
                                            message: "MASUKKAN ANGKA",
                                            duration:
                                                const Duration(seconds: 3),
                                            backgroundColor:
                                                ColorValues.danger500,
                                          ).show(context);
                                          return;
                                        }
                                      }
                                    }
                                    // logger
                                    //     .d("selectedStatus : $selectedStatus");
                                    if (selectedStatus == " ") {
                                      Flushbar(
                                        title: 'Terjadi Kesalahan',
                                        message: "Status Belum Dipilih",
                                        duration: const Duration(seconds: 3),
                                        backgroundColor: ColorValues.danger500,
                                      ).show(context);
                                      return;
                                    }

                                    final des = _descriptionController.text
                                            .trim()
                                            .isEmpty
                                        ? "-"
                                        : _descriptionController.text;

                                    context.read<DetailInspectionBloc>().add(
                                            DetailInspectionEvent
                                                .postDetailInspection(
                                          DetailInspectionModelAdd(
                                            remark: des,
                                            status: selectedStatus,
                                            InspectionId: widget.item.itemId,
                                            ResultId: widget.ResultId,
                                          ),
                                        ));

                                    // logger.d(
                                    //     "BERHASIL KIRIM DATA!. DATA : ${DetailInspectionModelAdd(
                                    //   remark: des,
                                    //   status: selectedStatus,
                                    //   InspectionId: widget.item.itemId,
                                    //   ResultId: widget.ResultId,
                                    // )}");

                                    AutoRouter.of(context).replace(Scan2Route(
                                        machineId: widget.machineId,
                                        status: selectedStatus,
                                        ResultId: widget.ResultId,
                                        buId: 'REF',
                                        userId: widget.userId));
                                  }
                                },
                          child: isLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white)
                              : _buildButton(20));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(double top) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: top),
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.2,
          ),
          color: ColorValues.kuningButton,
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Simpan",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  bool isNumeric(String s) {
    if (s.isEmpty) return false;
    return double.tryParse(s) != null;
  }

  bool isValidInput(String input, String requirement) {
    final numInput = double.tryParse(input);
    // logger.d("input: $input, requirement: $requirement, numInput: $numInput");
    if (numInput == null) return false;

    if (requirement.startsWith('range:')) {
      // logger.i("masuk range");
      final parts = requirement.replaceFirst('range:', '').split('~');
      final min = double.parse(parts[0]);
      final max = double.parse(parts[1]);
      return numInput >= min && numInput <= max;
    } else if (requirement.startsWith('min:')) {
      final min = double.parse(requirement.replaceFirst('min:', ''));
      return numInput >= min;
    } else if (requirement.startsWith('max:')) {
      final max = double.parse(requirement.replaceFirst('max:', ''));
      return numInput <= max;
    } else if (requirement.startsWith('<')) {
      final max = double.parse(requirement.replaceFirst('<', ''));
      return numInput < max;
    } else if (requirement.startsWith('>')) {
      final min = double.parse(requirement.replaceFirst('>', ''));
      return numInput > min;
    }
    return true; // Jika requirement kosong
  }

  Widget _buildCard(String value) {
    return GestureDetector(
      onTap: () {
        if (!mounted) return;
        setState(() {
          selectedStatus = value; // Update the selected status
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: selectedStatus == value
            ? (value == "OK"
                ? ColorValues.hijauBUtton
                : ColorValues.merahButton) // Hijau untuk OK, Merah untuk NG
            : ColorValues.grayscale300, // Warna default jika belum dipilih
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black, // Warna teks putih jika dipilih
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
