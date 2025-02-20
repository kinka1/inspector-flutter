import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/features/widget/Monthly.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  int bulan = DateTime.now().month;
  int tahun = DateTime.now().year;
  late String bulanText;

  @override
  void initState() {
    super.initState();
    //context.read<ResultBloc>().add(ResultEvent.getResult());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appbarCus(context, "Checksheet", true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 1; i <= bulan; i++) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Bulan : ${i.toString().padLeft(2, '0')}-$tahun", // Format i menjadi 2 digit
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Monthly(
                    bulan:
                        "$tahun-${i.toString().padLeft(2, '0')}"), // Format i menjadi 2 digit
              ]
            ],
          ),
        ),
      ),
    );
  }
}
