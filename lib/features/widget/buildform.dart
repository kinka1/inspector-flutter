import 'package:another_flushbar/flushbar.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/parse.dart';
import 'package:maintenanceApp/features/widget/col.dart';
import 'package:maintenanceApp/features/widget/custom_text_field.dart';
import 'package:maintenanceApp/features/widget/textCaption.dart';
import 'package:maintenanceApp/features/widget/textTitle.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Buildform extends StatefulWidget {
  const Buildform({
    super.key,
    required this.item,
    required this.machineInspectionId,
    required this.ResultId,
    required this.machineId,
    required this.margin,
    required this.userId,
    this.status,
    this.remark,
    // required this.machineInspectionId,
  });

  final InspectionitemMachineGetModel item;
  final int machineInspectionId;
  final int ResultId;
  final String machineId;
  final double margin;
  final int userId;
  final String? status;
  final String? remark;

  @override
  State<Buildform> createState() => _BuildformState();
}

class _BuildformState extends State<Buildform> {
  late String selectedStatus = " ";
  DateTime date = DateTime.now();
  String tanggal = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late TextEditingController _descriptionController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final logger = Logger();
  String status = "-";
  double height = 0;
  String _BU = "-";

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController();
    logger.d("item remark : ${widget.remark}");
    _getAuth();

    if (widget.status != "-") {
      selectedStatus = widget.status!;
    }
    if (widget.remark != null || widget.remark == "-") {
      _descriptionController.text = widget.remark!;
    }

    logger.d("selectedStatus : $selectedStatus");
  }

  Future<void> _getAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final rawBU = prefs.getString('buId') ?? '';

    _BU = rawBU.replaceAll('"', '');
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
      height = 0.5;
    } else {
      height = 0.60;
    }
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 500, // Tinggi gambar
                  width: double.infinity, // Lebar penuh
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // Menggunakan placeholder image dari placehold.co
                      image: NetworkImage(widget.item.imagePath),
                      fit: BoxFit.cover, // Gambar memenuhi area container
                    ),
                  ),
                ),
                Positioned(
                  top: 481,
                  height: 20,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(top: widget.margin),
                    height: 10,
                    // width: double.infinity,
                    padding:
                        const EdgeInsets.only(right: 30, left: 30, top: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 5), // Posisi bayangan
                        ),
                      ],
                      // border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    // child: Text("data"),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * height,
              padding: const EdgeInsets.only(right: 30, left: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Col(
                        title: "Inspection Item  ",
                        flexSize: 2,
                        caption: toTitleCase(widget.item.itemName),
                        warna: Colors.black),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Col(
                        title: "Specification ",
                        flexSize: 2,
                        caption: toTitleCase(widget.item.specification),
                        warna: Colors.black),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Col(
                        title: "Method ",
                        flexSize: 2,
                        caption: toTitleCase(widget.item.method),
                        warna: Colors.black),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Col(
                        title: "Period ",
                        flexSize: 2,
                        caption: toTitleCase(widget.item.frequency),
                        warna: Colors.black),
                  ),
                  widget.item.isNumber == false
                      ? Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
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
                                            color: Colors.black)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Text(
                                      ":",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.black),
                                    ),
                                    const SizedBox(width: 5),
                                    _buildCard("OK"),
                                    const SizedBox(width: 10),
                                    _buildCard("NG"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),
                  CustomTextField(
                    maxLines: 4,
                    controller: _descriptionController,
                    hintText:
                        "Wajib diisi jika Specification Berupa angka (Contoh: 1, 2, 3)",
                    labelText: "Remark",
                    textInputType: widget.item.isNumber
                        ? TextInputType.number
                        : TextInputType.text,
                    LabelTextStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Note : If the specification is in the form of numbers, it is mandatory to fill in',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          // fontSize: 18,
                          color: ColorValues.grayscale600),
                    ),
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
                                              content:
                                                  Text("Remarks are required")),
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
                                            message: "Input Number",
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
                                        buId: _BU,
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
          // border: Border.all(
          //   // color: Colors.black,
          //   width: 1.2,
          // ),
          color: ColorValues.hijauMuda,
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        "Save",
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
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

  Widget _buildCard(String value, {String? status}) {
    return GestureDetector(
      onTap: () {
        if (!mounted) return;
        setState(() {
          selectedStatus = value; // Update the selected status
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: selectedStatus == value
              ? (value == "OK"
                  ? ColorValues.hijauMuda
                  : ColorValues.redNG) // Hijau untuk OK, Merah untuk NG
              : Colors.white,
          border: Border.all(
            color: selectedStatus == value
                ? (value == "OK"
                    ? ColorValues.hijauMuda
                    : ColorValues.redNG) // Hijau untuk OK, Merah untuk NG
                : Colors.grey, // Warna default jika belum dipilih
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        // ),

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
