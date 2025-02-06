import 'dart:io';

import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/features/widget/col.dart';
import 'package:application/features/widget/field.dart';
import 'package:application/features/widget/textCaption.dart';
import 'package:application/features/widget/textTitle.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Buildform extends StatefulWidget {
  const Buildform({super.key, required this.item});

  final InspectionitemModel item;

  @override
  State<Buildform> createState() => _BuildformState();
}

class _BuildformState extends State<Buildform> {
  final Logger logger = Logger();
  String? selectedStatus;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 10),
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
          Field("Keterangan"),
        ],
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
            setState(() {
              selectedStatus = newValue;
            });
            logger.i("Status selected: $newValue");
          },
        ),
        Text(value),
      ],
    );
  }
}
