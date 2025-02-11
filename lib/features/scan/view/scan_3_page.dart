import 'package:another_flushbar/flushbar.dart';
import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/features/InspectionItem/bloc/inspection_item_bloc.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/buildForm.dart';
import 'package:application/features/widget/tombol.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class Scan3Page extends StatefulWidget {
  const Scan3Page({super.key, required this.id, required this.number});
  final int id;
  final int number;

  @override
  State<Scan3Page> createState() => _Scan3PageState();
}

class _Scan3PageState extends State<Scan3Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<InspectionItemBloc>().add(InspectionItemEvent.GetInspectionItembyNumber(widget.id,widget.number));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarCus(context, "Daily Maintenance"),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<InspectionItemBloc, InspectionItemState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.maybeWhen(
                          loading: () => true, orElse: () => false),
                      child: state.maybeWhen(
                        loadedbyNumber: (response) => Buildform(item: response,id: widget.id,),
                        orElse: () => _buildSkeletonForm1(),
                        error: (message) => Center(
                          child: Text(
                            'Error: $message',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }


  void onPressed() {
    Flushbar(
      title: 'Success',
      message: 'Data berhasil disimpan',
      duration: const Duration(seconds: 3),
    )..show(context);
    context.router.push(Scan2Route(id: widget.id));
  }

  // Widget _buildform(InspectionitemModel items) {
  //   return ListView.separated(
  //     shrinkWrap: true,
  //     physics: const NeverScrollableScrollPhysics(),
  //     itemCount: items.length,
  //     separatorBuilder: (context, index) => const SizedBox(height: 12),
  //     itemBuilder: (context, index) {
  //       final item = items[index];
  //       return Buildform(
  //         item: item,
  //       );
  //     },
  //   );
  // }

  Widget _buildSkeletonForm1() {
    return SizedBox(
      height: 400,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          itemCount: 5,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            return const Buildform(
              id: 1,
              item: InspectionitemModel(
                itemName: 'loading...',
                specification: 'loading...',
                method: 'loading...',
                frequency: 'loading...',
                itemId: 0,
                number: 0,
                machineId: 0,
                imagePath: 'loading...',
              ),
            );
          }),
    );
  }
}
