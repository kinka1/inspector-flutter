import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/features/widget/Monthly.dart';
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
  String formattedDate = DateFormat('yyyy-MM').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    // Panggil event untuk mengambil data saat inisialisasi
    context.read<ResultBloc>().add(ResultEvent.getResult());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorValues.info400,
        title: const Text(
          'Checksheet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              // Tambahkan widget Monthly dengan parameter bulan
              Monthly(bulan: formattedDate),
            ],
          ),
        ),
      ),
    );
  }
}