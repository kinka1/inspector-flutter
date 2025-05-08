import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/other/other_bloc.dart';
import 'package:maintenanceApp/data/bloc/result/result_bloc.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/models/Other/other_model.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/parse.dart';
import 'package:maintenanceApp/features/widget/custom_text_field.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key, this.code, this.date});
  final int? code;
  final String? date;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _machineIdController =
      TextEditingController();
  final logger = Logger();
  String _BU = "-";
  List<ResultGet> _resultGet= [];

  int _okCount = 0;
  int _ngCount = 0;
  int _resultId = 0;
  int _ngCountOther = 0;

  String? _status;
  List<DetailInspectionGetModel> _detailInspection = [];
  String? Username = "======";
  List<OtherModel> _other = [];

  Future<void> _getAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final rawToken = prefs.getString('username');
    final rawBU = prefs.getString('BU');
    setState(() {
      Username = rawToken!.replaceAll('"', '');
      _BU = rawBU!.replaceAll('"', '');
    });
  }

  @override
  void initState() {
    super.initState();
    // _getAuth();
    _machineIdController.clear();
    _machineIdController.text = "";
    logger.i("Init HomePage");
    logger.d("MACHINE iD INITSTATE : ${_machineIdController.text}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _machineIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ResultBloc, ResultState>(
          listener: (context, state) {
            state.maybeWhen(
              added: (response) {
                // logger.d("RESULT ID : $response");
                _resultId = response.resultId;
              },
              loading: () => true,
              loadedByDateList: (result) {
                _resultGet = result;
              },
              loadedByDateForHomepage: (result) {
                // _resultId = result.id;
                _status = result.status;
                String machineId = "-";
                machineId = _machineIdController.text;
                logger.d("machineId di home page: $machineId");
                final code = widget.code ?? 1;
                if (_status != null && _machineIdController.text.isNotEmpty) {
                  logger.d("RESULT ID KIRIM  : $_resultId");
                  AutoRouter.of(context)
                      .push(Scan2Route(
                    // key: UniqueKey(),
                    machineId: machineId,
                    status: _status ?? '-',
                    ResultId: _resultId, buId: _BU, userId: 0,
                  ))
                      .then((_) {
                    _machineIdController.clear();
                  });
                }
                logger.d("RESULT ID :$_resultId");
              },
              orElse: () {
                return SizedBox();
              },
            );
          },
        ),
        BlocListener<DetailInspectionBloc, DetailInspectionState>(
          listener: (context, state) {
            // logger.d("STATE DETAIL INSPECTION : $state");
            state.maybeWhen(
              loading: () => true,
              orElse: () {
                // logger.e("terjadi masalah DI DETAIL PADA HOMEPAGE");
              },
              loadedByMachine: (result) {
                _detailInspection = result;
              },
              loadedByDateList: (result) {

              },
            );
          },
        ),
        BlocListener<OtherBloc, OtherState>(listener: (context, state) {
          state.maybeWhen(
            loading: () => true,
            loadedAll: (result) {
              // logger.d("RESULT OTHER : $result");
              _other = result;
            },
            orElse: () {},
          );
        }),
      ],
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            color: ColorValues.hijauMain,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                _buildResultList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Maintenance App",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: ColorValues.hijauMain,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: IconButton(
            icon: const Icon(Icons.exit_to_app_rounded, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        )
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWelcomeMessage(context),
          const SizedBox(height: 10),
          _buildSearchRow(context),
          const SizedBox(height: 20),
          _buildCheckSheetButton(context),
        ],
      ),
    );
  }

  Widget _buildWelcomeMessage(BuildContext context) {
    _getAuth();
    return Text(
      "Selamat Datang, ${Username}",
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildSearchRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomTextField(
            controller: _machineIdController,
            hintText: "Masukan Id Machine",
            labelText: "Id Machine",
            textInputType: TextInputType.text,
            borderRadius: 10,
            validator: (value) =>
                value!.isEmpty ? "Machine ID tidak boleh kosong" : null,
            LabelTextStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorValues.kuningButton,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black)),
                  padding: const EdgeInsets.symmetric(vertical: 11),
                ),
                onPressed: () => _handleSearch(context),
                child: Text(
                  "Cari",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              )),
        )
      ],
    );
  }

  Widget _buildCheckSheetButton(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push( SheetRoute(buId: '-')),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.065,
        decoration: BoxDecoration(
          color: ColorValues.hijauBUtton,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: Text("Check Sheet",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildResultList(BuildContext context) {
    context.read<ResultBloc>().add(ResultEvent.getResultByDatelist(_BU, parseToStringDate(DateTime.now())));
    return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: _buildHistory(_resultGet, _other));
  }

  Widget _buildHistory(
      List<ResultGet> resultList, List<OtherModel> otherList) {
    int ok = 0;
    int ng = 0;
    int condition = 0;

    if (condition != 0) {
      context
          .read<DetailInspectionBloc>()
          .add(const DetailInspectionEvent.getDetailInspectionByMachine());
      context.read<OtherBloc>().add(const OtherEvent.getOtherAll());
    }
    if (resultList.isEmpty) {
      return const Center(
        child: Text("Tidak ada data"),
      );
    }
    ok = resultList.where((result) => result.status == "OK").length;
    ng = resultList.where((result) => result.status == "NG").length;
    if (resultList[0].status == "-"){
      return SizedBox();
    }


    // Set<int> otherResultIds = otherList.map((other) => other.resultId).toSet();

    // List<ResultGet> updatedDetailList = detaillist.map((detail) {
    //   bool isMatching = otherResultIds.contains(detail.id);

    //   if (isMatching) {
    //     ng++;
    //     return detail.copyWith(status: "NG");
    //   } else {
    //     if (detail.status == "OK") {
    //       ok++;
    //     } else if (detail.status == "NG") {
    //       ng++;
    //     }
    //     return detail;
    //   }
    // }).toList();

    return StatefulBuilder(
      builder: (context, setState) {
        final results = resultList;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCard("OK :", ok.toString(), ColorValues.hijauBUtton),
                _buildCard("NG :", ng.toString(), ColorValues.merahButton),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            if (results.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                itemCount: results.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: _buildHistoryItem(
                    results[index],
                  ),
                ),
              )
            else
              const SizedBox()
          ],
        );
      },
    );
  }

  Widget _buildCard(
    String title,
    String value,
    Color color,
  ) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold)),
          Text(value,
              style: TextStyle(
                  fontSize: 80,
                  fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildHistoryItem(
    ResultGet result,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: result.status == "OK"
                ? ColorValues.hijauBorder
                : ColorValues.merahBorder),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(result.machine.line),
              Text(result.machine.machineName),
            ],
          ),
          Icon(result.status == "OK" ? Icons.check : Icons.close,
              color: result.status == "OK" ? Colors.green : Colors.red),
        ],
      ),
    );
  }

  void _handleSearch(BuildContext context) {
    final id = _machineIdController.text;
    final date = DateTime.now();
    final formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";

    if (id.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Machine ID tidak boleh kosong"),
          backgroundColor: ColorValues.danger500,
        ),
      );
      return;
    }

    context.read<DetailInspectionBloc>().add(
        DetailInspectionEvent.getDetailInspectionByMachineIdAndDate(
            id, formattedDate));

    context
        .read<ResultBloc>()
        .add(ResultEvent.getResultByDateForHomepage("-",formattedDate));
  }
}
