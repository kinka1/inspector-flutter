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
import 'package:maintenanceApp/features/pages.dart';
import 'package:maintenanceApp/features/widget/custom_text_field.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class HomenewPage extends StatefulWidget {
  const HomenewPage({super.key, this.code, this.date});
  final int? code;
  final String? date;

  @override
  State<HomenewPage> createState() => _HomenewPageState();
}

class _HomenewPageState extends State<HomenewPage> {
  late final TextEditingController _machineIdController =
      TextEditingController();
  final logger = Logger();
  String _BU = "-";
  List<ResultGet> _resultGet = [];
  int _selectedIndex = 0;

  int _okCount = 0;
  int _ngCount = 0;
  int _resultId = 0;
  int _ngCountOther = 0;

  String? _status;
  List<DetailInspectionGetModel> _detailInspection = [];
  String? Username = "";
  List<OtherModel> _other = [];

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
  void initState() {
    super.initState();
    _getAuth();
    _machineIdController.clear();
    _machineIdController.text = "";
  }

  @override
  void dispose() {
    super.dispose();
    _machineIdController.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabPages = [
      // Tab 0 - Homepage
      _home(context),

      // Tab 1 - Halaman Lain (misal: Riwayat)
      SheetPage(),
    ];
    context.read<ResultBloc>().add(ResultEvent.getResultByDatelist(
        _BU, parseToStringDate(DateTime.now())));
    return MultiBlocListener(
      listeners: [
        BlocListener<ResultBloc, ResultState>(
          listener: (context, state) {
            logger.d("state di result : $state");
            state.maybeWhen(
              added: (response) {
                _resultId = response.id;
              },
              loading: () => true,
              loadedByDateList: (result) {
                logger.i("masuk ke loaded list result");
                _resultGet = result;
              },
              loadedByDateForHomepage: (result) {
                _status = result.status;
                String machineId = "-";
                machineId = _machineIdController.text;
                logger.d("machineId di home page: $machineId");
                final code = widget.code ?? 1;
                if (_status != null && _machineIdController.text.isNotEmpty) {
                  logger.d("RESULT ID KIRIM  : $_resultId");
                  AutoRouter.of(context)
                      .push(Scan2Route(
                    machineId: machineId,
                    status: _status ?? '-',
                    ResultId: _resultId,
                    buId: _BU,
                  ))
                      .then((_) {
                    _machineIdController.clear();
                  });
                }
                logger.d("RESULT ID :$_resultId");
              },
              orElse: () {
                logger.e("terjadi kesalahan   ");
                return SizedBox();
              },
            );
          },
        ),
        BlocListener<DetailInspectionBloc, DetailInspectionState>(
          listener: (context, state) {
            state.maybeWhen(
              loading: () => true,
              loadedbyMachineIdAndDate: (result) {
                if (result.id == 0) {
                  context
                      .read<ResultBloc>()
                      .add(const ResultEvent.addResult("-"));
                } else {
                  _resultId = result.id;
                }
              },
              orElse: () {},
              loadedByMachine: (result) {
                _detailInspection = result;
              },
              loadedByDateList: (result) {},
            );
          },
        ),
        BlocListener<OtherBloc, OtherState>(
          listener: (context, state) {
            state.maybeWhen(
              loading: () => true,
              loadedAll: (result) {
                _other = result;
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _tabPages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorValues.primary700,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,

          // Ubah style semua label
          selectedLabelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: ColorValues.primary700),
          unselectedLabelStyle:
              const TextStyle(fontSize: 15, color: Colors.black),

          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                size: 30,
              ),
              label: "Riwayat",
            ),
          ],
        ),
      ),
    );
  }

  Widget _home(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            // _contain(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "RIWAYAT HARI INI",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            _buildResultList(context),
          ],
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
      backgroundColor: ColorValues.primary700,
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
    return Container(
        // color: ColorValues.danger500,
        margin: EdgeInsets.only(bottom: 10),
        height: MediaQuery.of(context).size.height * 0.3,
        // height: 300,
        padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
        decoration: BoxDecoration(
          color: ColorValues.primary700,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(1000, 300),
              bottomRight: Radius.elliptical(1000, 300)),
          // border: Border.all(color: Colors.white),
        ),
        child: _buildCardhome());
  }

  Widget _buildCardhome() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 10,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                0.0,
                0.0,
              ),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ), //
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWelcomeMessage(context),
          const SizedBox(height: 20),
          // Text("Masukkan Id Check Sheet "),
          _buildSearchRow(context),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildWelcomeMessage(BuildContext context) {
    // _getAuth();
    return Row(
      children: [
        Icon(
          Icons.account_circle,
          size: 70,
          color: ColorValues.primary800,
        ),
        Container(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${Username}",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
              ),
              Text(
                "BU : ${_BU}",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorValues.grayscale600),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSearchRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomTextField(
            controller: _machineIdController,
            hintText: "Masukan ID MESIN",
            labelText: "ID MESIN",
            textInputType: TextInputType.text,
            borderRadius: 10,
            validator: (value) =>
                value!.isEmpty ? "Machine ID tidak boleh kosong" : null,
            LabelTextStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 1,
          child: Container(
              margin: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorValues.primary700,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.white)),
                    padding: const EdgeInsets.symmetric(vertical: 7),
                  ),
                  onPressed: () => _handleSearch(context),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  )
                  // Text(
                  //   "Cari",
                  //   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  //       fontWeight: FontWeight.bold, color: Colors.white),
                  // ),
                  )),
        )
      ],
    );
  }

  Widget _buildCheckSheetButton(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(const SheetRoute()),
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
    return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: _buildHistory());
  }

  Widget _buildHistory() {
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
    return BlocBuilder<ResultBloc, ResultState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled: state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          ),
          child: state.maybeWhen(
            loading: () {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: const Center(child: CircularProgressIndicator()),
              );
            },
            loadedByDateList: (response) {
              if (response.isEmpty) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const Center(
                    child: Text(
                      'Data tidak ditemukan',
                    ),
                  ),
                );
              } else {
                return _buildHistoryssss(response);
              }
            },
            orElse: () {
              return Center(
                child: Text("TERJADI KESALAHAN"),
              );
            },
            error: (message) => Center(
              child: Text(
                'Error: $message',
                style: const TextStyle(fontSize: 25, color: Colors.red),
              ),
            ),
          ),
        );
      },
    );

    // return StatefulBuilder(
    //   builder: (context, setState) {
    //     final results = resultList;
    //     return Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: [
    //             _buildCard("OK :", ok.toString(), ColorValues.hijauBUtton),
    //             _buildCard("NG :", ng.toString(), ColorValues.merahButton),
    //           ],
    //         ),
    //         SizedBox(height: MediaQuery.of(context).size.height * 0.03),
    //         if (results.isNotEmpty)
    //           ListView.builder(
    //             shrinkWrap: true,
    //             itemCount: results.length,
    //             itemBuilder: (context, index) => Padding(
    //               padding: const EdgeInsets.symmetric(vertical: 8.0),
    //               child: _buildHistoryItem(
    //                 results[index],
    //               ),
    //             ),
    //           )
    //         else
    //           const SizedBox()
    //       ],
    //     );
    //   },
    // );
  }

  Widget _buildHistoryssss(List<ResultGet> resultList) {
    int ok = 0;
    int ng = 0;
    int condition = 1;

    if (condition == 0) {
      context
          .read<DetailInspectionBloc>()
          .add(const DetailInspectionEvent.getDetailInspectionByMachine());
      context.read<OtherBloc>().add(const OtherEvent.getOtherAll());
    }
    logger.d("result : $resultList");
    if (resultList.isEmpty) {
      return Center(
        child: Text("TERJADI KESALAHAN"),
      );
    }
    ok = resultList.where((result) => result.status == "OK").length;
    ng = resultList.where((result) => result.status == "NG").length;
    if (resultList[0].status == "-") {
      return Center(
        child: Text("TIDAK ADA CHECKSHEET"),
      );
    }
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

    // context
    //     .read<ResultBloc>()
    //     .add(ResultEvent.getResultByDateForHomepage(formattedDate));
  }
}
