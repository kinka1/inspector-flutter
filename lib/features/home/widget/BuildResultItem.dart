import 'package:flutter/material.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/parse.dart';

class BuildResultItem extends StatelessWidget {
  const BuildResultItem({super.key, required this.result});
  final ResultGet result;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: result.status == "OK"
                ? ColorValues.hijauBorder
                : ColorValues.merahBorder,
            width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(toTitleCase(result.machine.line),
                  style: Theme.of(context).textTheme.bodyMedium),
              Text(toTitleCase(result.machine.machineName),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
            ],
          ),
          Text(
            result.status,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: result.status == "OK"
                      ? ColorValues.hijauBorder
                      : ColorValues.danger500,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
