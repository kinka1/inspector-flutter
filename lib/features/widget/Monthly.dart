import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/data/models/Result/result_model.dart';
import 'package:application/data/models/machine/machine_model.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Monthly extends StatefulWidget {
  const Monthly({super.key, required this.bulan});

  final String bulan;

  @override
  State<Monthly> createState() => _MonthlyState();
}

class _MonthlyState extends State<Monthly> {
  @override
  void initState() {
    super.initState();
    // Panggil event untuk mengambil data saat inisialisasi
    context.read<ResultBloc>().add(ResultEvent.getResult());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<ResultBloc, ResultState>(
        builder: (context, state) {
          return Skeletonizer(
            enabled: state.maybeWhen(loading: () => true, orElse: () => false),
            child: state.maybeWhen(
              loaded: (response) => _buildCard(response, context),
              orElse: () => _buildSkeleton(),
              error: (message) => Center(
                child: Text(
                  'Error: $message',
                  style: const TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Widget untuk menampilkan data
  Widget _buildCard(List<ResultData> result, BuildContext context) {
    final filteredResults =
        result.where((r) => r.month == widget.bulan).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics:
              const NeverScrollableScrollPhysics(), // Non-scrollable ListView
          itemCount: filteredResults.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: _card(filteredResults[index], context),
            );
          },
        ),
      ],
    );
  }

  // Widget untuk menampilkan skeleton loading
  Widget _buildSkeleton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: List.generate(
          3, 
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Skeletonizer(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Skeletonizer(
                        child: Container(
                          height: 16,
                          width: double.infinity,
                          color: Colors.grey[300],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Skeletonizer(
                        child: Container(
                          height: 12,
                          width: 150,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget untuk menampilkan card
  Widget _card(ResultData result, BuildContext context) {
    return Card(
      color: ColorValues.info100,
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        onTap: () {
          AutoRouter.of(context).push(Sheet2Route(result: result));
        },
        title: Text(
          result.machine.machineName.isNotEmpty
              ? result.machine.machineName
              : "Nama Mesin Tidak Tersedia",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: 
        Text("Document No : ${result.machine.dockumentNo}", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: ColorValues.info500,
        ),
      ),
    );
  }
}
