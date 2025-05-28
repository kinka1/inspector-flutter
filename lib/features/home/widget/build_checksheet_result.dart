import 'package:flutter/material.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/data/parse.dart';
import 'package:maintenanceApp/features/home/widget/BuildResultItem.dart';

class BuildChecksheetResult extends StatelessWidget {
  const BuildChecksheetResult({super.key, required this.result});
  final ResultGetHome result;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 15, right: 30, left: 30),
      // color: Colors.amber,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -2), // arah bayangan ke atas
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Checksheet Result",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 3, // 2/3
                  child: Text("Result",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Expanded(
                  flex: 2, // 1/3
                  child: Text("Pending",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Flexible(
                flex: 3,
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: result.resultModel.isNotEmpty
                      ? result.resultModel[0].resultId != 0
                          ? result.resultModel
                              .map((resultItem) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: BuildResultItem(result: resultItem),
                                  ))
                              .toList()
                          : [
                              SizedBox(
                                // ⬅️ Kosongkan bagian result jika resultId == 0
                                height: 50,
                                child: Center(
                                  child: Text("have not done the inspection",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: ColorValues.danger500)),
                                ),
                              )
                            ] // ⬅️ Kosongkan bagian result jika resultId == 0
                      : [const SizedBox()],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: result.machine.isNotEmpty
                      ? result.machine[0].machineId != "-"
                          ? result.machine
                              .map((resultItem) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: _buildPending(context,
                                        resultItem), // ⬅️ Kirim resultItem
                                  ))
                              .toList()
                          : [
                              SizedBox(
                                // ⬅️ Kosongkan bagian result jika resultId == 0
                                height: 50,
                                child: Center(
                                  child: Text(
                                      "All machines have been inspected",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: ColorValues.primary700)),
                                ),
                              )
                            ]
                      : [const SizedBox()],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPending(BuildContext context, MachineModel machine) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorValues.greyPending, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(toTitleCase(machine.line),
              style: Theme.of(context).textTheme.bodyMedium!),
          Text(toTitleCase(machine.machineName),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
        ],
      ),
    );
  }
}
