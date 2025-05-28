import 'package:flutter/material.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';

class BuildTable extends StatelessWidget {
  const BuildTable(
      {super.key,
      this.response,
      this.boxBorder,
      this.borderRadius,
      this.textStyle});
  final DetailInspectionGetModel? response;
  final BoxBorder? boxBorder;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    double size = 17;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        // color: _getColor(response?.status),
        borderRadius: borderRadius ?? null,
        border: boxBorder ?? null,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              response?.inspectionItem.itemName ?? "Inspection Item",
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: size),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              response?.inspectionItem.method ?? "Method",
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: size),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              response?.status ?? "Status",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: size,
                  color: _getColor(response?.status)),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              response?.remark ?? "Remark",
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: size),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Color _getColor(String? status) {
    if (status != null) {
      if (status == "OK") {
        return ColorValues.hijauCheckSheet;
      } else if (status == "NG") {
        return ColorValues.merahCheckSheet;
      }
    }
    return Colors.black;
  }
}
