import 'package:another_flushbar/flushbar.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/result/result_bloc.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowModal extends StatefulWidget {
  const ShowModal(
      {super.key,
      required this.machineId,
      required this.status,
      required this.resultId,
      required this.buId, required this.userId});
  final String machineId;
  final String status;
  final String buId;
  final int resultId;
  final int userId;
  @override
  State<ShowModal> createState() => _ShowModalState();
}

class _ShowModalState extends State<ShowModal> {
  // final logger = Logger();
  String Username = "-";
  String _BU = "-";
  @override
  void initState() {
    _getAuth();
    super.initState();
  }

  Future<void> _getAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final rawToken = prefs.getString('username');
    final rawBU = prefs.getString('buId');
    setState(() {
      Username = rawToken!.replaceAll('"', '');
      _BU = rawBU!.replaceAll('"', '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResultBloc, ResultState>(builder: (context, state) {
      final isLoading =
          state.maybeWhen(orElse: () => false, loading: () => true);
      return GestureDetector(
        onTap: () {
          // logger.d("STATUS KIRIM : ${ResultModel(
          //     date: DateTime.now(),
          //     status: widget.status,
          //     resultId: widget.resultId,
          //     userId: widget.userId,
          //     machineId: widget.machineId,
          //     buId: widget.buId)}");
          context.read<ResultBloc>().add(ResultEvent.UpdateStatus(ResultModel(
              date: DateTime.now(),
              status: widget.status,
              resultId: widget.resultId,
              userId: widget.userId,
              machineId: widget.machineId,
              buId: widget.buId)));
        },
        child: isLoading
            ? const CircularProgressIndicator()
            : Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorValues.info500,
                ),
                child: Center(
                  child: Text(
                    "Kirim",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
      );
    }, listener: (context, state) {
      state.maybeWhen(
        success: () {
          Flushbar(
            title: 'Berhasil',
            message: 'Data berhasil disimpan',
            duration: const Duration(seconds: 2),
            backgroundColor: ColorValues.primary500,
          ).show(context).then((_) {
            AutoRouter.of(context).push(HomenewRoute(code: 0));
          });
        },
        error: (error) => Flushbar(
          title: 'Terjadi Kesalahan',
          message: "Terjadi kesalahan saat pengiriman data",
          duration: const Duration(seconds: 3),
          backgroundColor: ColorValues.danger500,
        ).show(context),
        orElse: () => {},
      );
    });
  }
}
