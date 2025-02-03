import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/features/widget/col.dart';
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
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.item.number.toString()),
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
        ],
      ),
    );
  }

  Widget _buildRadioButton(String value) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              selectedStatus = value;
            });
            logger.i("Status selected: $value");
          },
          icon: Icon(
            selectedStatus == value
                ? Icons.radio_button_on
                : Icons.radio_button_off,
            color: selectedStatus == value ? Colors.black : null,
          ),
        ),
        Text(value),
      ],
    );
  }
}
