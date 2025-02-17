import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/features/auth/bloc/auth_bloc.dart';
import 'package:application/features/widget/col.dart';
import 'package:application/features/widget/custom_text_field.dart';
import 'package:application/features/widget/field.dart';
import 'package:application/features/widget/textCaption.dart';
import 'package:application/features/widget/textTitle.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class Buildform extends StatefulWidget {
  const Buildform({
    super.key,
    required this.item,
    required this.id,
  });

  final InspectionitemModel item;
  final int id;

  @override
  State<Buildform> createState() => _BuildformState();
}

class _BuildformState extends State<Buildform> {
  final Logger logger = Logger();
  late String selectedStatus = "";

  late TextEditingController _descriptionController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime date = DateTime.now();

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.network(
              widget.item.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                return progress == null ? child : CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
            ),
            textCaption(widget.item.number.toString()),
            col("Inspection Item : ", widget.item.itemName),
            col("Specification : ", widget.item.specification),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                col("Method : ", widget.item.method),
                col("Period : ", widget.item.frequency),
              ],
            ),
            Row(
              children: [
                textTitle("Status: "),
                Expanded(
                  child: Row(
                    children: [
                      _buildRadioButton("OK"),
                      const SizedBox(width: 10),
                      _buildRadioButton("NG"),
                    ],
                  ),
                ),
              ],
            ),
            CustomTextField(
              controller: _descriptionController,
              hintText: "isi jika diperlukan",
              labelText: "Remark",
              textInputType: TextInputType.text,
              LabelTextStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
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
                    ).show(context).then((_) {
                      AutoRouter.of(context).push(Scan2Route(id: widget.id,status: selectedStatus));
                      logger.i("Status : $selectedStatus");
                    });
                  },
                  error: (error) => Flushbar(
                    title: 'Terjadi Kesalahan',
                    message: error,
                    duration: const Duration(seconds: 3),
                    backgroundColor: ColorValues.danger500,
                  ).show(context),
                  orElse: () => {},
                );
              },
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );

                return ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () {
                          if (_formKey.currentState!.validate()) {
                            final des =
                                _descriptionController.text.trim().isEmpty
                                    ? " "
                                    : _descriptionController.text;
                            context.read<DetailInspectionBloc>().add(
                                    DetailInspectionEvent.postDetailInspection(
                                        DetailInspectionModel(
                                  description: des,
                                  itemName: widget.item.itemName,
                                  specification: widget.item.specification,
                                  method: widget.item.method,
                                  frequency: widget.item.frequency,
                                  imageName: widget.item.imagePath,
                                  machineId: widget.item.machineId,
                                  status: selectedStatus,
                                  number: widget.item.number,
                                )));
                          }
                        },
                  child: isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Submit", style: TextStyle(color: Colors.white)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioButton(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: selectedStatus,
          onChanged: (newValue) {
            if (!mounted) return;
            setState(() {
              selectedStatus = newValue ?? "OK";
            });
          },
        ),
        Text(value),
      ],
    );
  }
}
