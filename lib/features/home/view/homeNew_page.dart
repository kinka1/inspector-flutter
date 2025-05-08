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
  final TextEditingController _idMachineController = TextEditingController();
  final logger = Logger();
  final List<Widget> _tabPages = [];

  String _BU = "-";
  String? Username = "";
  int _selectedIndex = 0;
  int _resultId = 0;
  int _userId = 0;
  String _status = "-";

  List<ResultGet> _resultGet = [];


  @override
  void initState() {
    super.initState();
    logger.i("Init HomenewPage");
    _getAuth();
    _idMachineController.clear();

    Future.delayed(Duration.zero, () {
      context.read<ResultBloc>().add(
        ResultEvent.getResultByDatelist(
          _BU,
          parseToStringDate(DateTime.now()),
        ),
      );
    });
  }

  Future<void> _getAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final rawToken = prefs.getString('username') ?? '';
    final rawBU = prefs.getString('buId') ?? '';
    setState(() {
      Username = rawToken.replaceAll('"', '');
      _BU = rawBU.replaceAll('"', '');
    });
  }

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  void _handleSearch(BuildContext context) {
    final id = _idMachineController.text.trim();
    if (id.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Machine ID tidak boleh kosong"),
          backgroundColor: ColorValues.danger500,
        ),
      );
      return;
    }
    context.read<ResultBloc>().add(
          ResultEvent.getResultByDateForHomepage(
            id,
            parseToStringDate(DateTime.now()),
          ),
        );
  }

  Future<void> next() async {
    if (_resultId != 0) {
      final idmachine = _idMachineController.text;
      logger.d("Navigasi ke Scan2Route");
      await AutoRouter.of(context)
          .push(Scan2Route(
            machineId: idmachine,
            status: _status,
            ResultId: _resultId,
            buId: _BU,
            userId: _userId,
          ))
          .then((_) => _idMachineController.clear());
    }
  }

  @override
  Widget build(BuildContext context) {
    _tabPages.clear();
    _tabPages.addAll([_buildHome(context), SheetPage(buId: _BU,)]);

    return BlocListener<ResultBloc, ResultState>(
      listener: (context, state) {
        logger.d("state result: $state");
        state.maybeWhen(
          added: (response) {
            _resultId = response.resultId;
            _status = response.status;
            _userId = response.userId;
            next();
          },
          loadedByDateList: (response) => setState(() => _resultGet = response),
          loadedByDateForHomepage: (response) {
            _status = response.status;
            if (response.resultId == 0 && _idMachineController.text.isNotEmpty) {
              context.read<ResultBloc>().add(
                    ResultEvent.addResult(
                      ResultAdd(
                        status: '-',
                        machineId: _idMachineController.text,
                        buId: _BU,
                      ),
                    ),
                  );
            } else {
              _resultId = response.resultId;
              _status = response.status;
              _userId = response.userId;
              next();
            }
          },
          error: (message) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message), backgroundColor: ColorValues.danger500),
          ),
          orElse: () => logger.e("Unhandled state"),
        );
      },
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _tabPages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorValues.primary700,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat"),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) => AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Maintenance App",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
        backgroundColor: ColorValues.primary700,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_rounded, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          )
        ],
      );

  Widget _buildHome(BuildContext context) {
    final ok = _resultGet.where((r) => r.status == "OK").length;
    final ng = _resultGet.where((r) => r.status == "NG").length;
logger.i("BUILD BERAPA KALI");
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildHeader(context),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Text("RIWAYAT HARI INI", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCard("OK :", ok.toString(), ColorValues.hijauBUtton),
                    _buildCard("NG :", ng.toString(), ColorValues.merahButton),
                  ],
                ),
                const SizedBox(height: 20),
                ..._resultGet
                    .where((result) => result.status != "-")
                    .map((result) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: _buildHistoryItem(result),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.3,
        padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
        decoration: const BoxDecoration(
          color: ColorValues.primary700,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(1000, 300),
            bottomRight: Radius.elliptical(1000, 300),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1),
              BoxShadow(color: Colors.black, blurRadius: 0),
            ],
          ),
          child: Column(
            children: [
              _buildWelcomeMessage(context),
              const SizedBox(height: 20),
              _buildSearchRow(context),
            ],
          ),
        ),
      );

  Widget _buildWelcomeMessage(BuildContext context) => Row(
        children: [
          const Icon(Icons.account_circle, size: 70, color: ColorValues.primary800),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Username ?? "",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
              ),
              Text("BU : $_BU",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: ColorValues.grayscale600)),
            ],
          )
        ],
      );

  Widget _buildSearchRow(BuildContext context) => Row(
        children: [
          Expanded(
            flex: 3,
            child: CustomTextField(
              controller: _idMachineController,
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
                onPressed: () => _handleSearch(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorValues.primary700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.white),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 7),
                ),
                child: const Icon(Icons.search, color: Colors.white, size: 35),
              ),
            ),
          )
        ],
      );

  Widget _buildCard(String title, String value, Color color) => Container(
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
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value,
                style: TextStyle(
                    fontSize: 80,
                    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      );

  Widget _buildHistoryItem(ResultGet result) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: result.status == "OK"
                    ? ColorValues.hijauBorder
                    : ColorValues.danger500,
              ),
              child: Text(
                result.status,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      );
}
