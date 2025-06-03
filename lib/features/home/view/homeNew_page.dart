import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/auth/auth_bloc.dart';
import 'package:maintenanceApp/data/bloc/result/result_bloc.dart';
import 'package:maintenanceApp/data/models/DTO/modelscan2.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/parse.dart';
import 'package:maintenanceApp/features/home/widget/BuildResultItem.dart';
import 'package:maintenanceApp/features/home/widget/buildSummary.dart';
import 'package:maintenanceApp/features/home/widget/build_checksheet_result.dart';
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
  String _buname = "-";
  String _fullname = "-";
  String? Username = "";
  int _selectedIndex = 0;
  int _resultId = 0;
  int _userId = 0;
  String _status = "-";
  // String _uId = "-";

  ResultGetHome _resultGet = ResultGetHome(machine: [], resultModel: []);

  @override
  void initState() {
    super.initState();
    logger.i("Init HomenewPage");
    _getAuth();
    _idMachineController.clear();
  }

  Future<void> _getAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final rawToken = prefs.getString('username') ?? '';
    final rawBU = prefs.getString('buId') ?? '';
    final rawFullname = prefs.getString('fullname') ?? '';
    final rawBUName = prefs.getString('buName') ?? '';
    final rawUserId = prefs.getInt('userId') ?? 0; // ✅ Sesuai

    setState(() {
      Username = rawToken.replaceAll('"', '');
      _BU = rawBU.replaceAll('"', '');
      _buname = rawBUName.replaceAll('"', '');
      _fullname = rawFullname.replaceAll('"', '');
      _userId = rawUserId;
    });

    Future.delayed(Duration(seconds: 0), () {
      context.read<ResultBloc>().add(
            ResultEvent.getResultByDatelistHome(
              _BU,
              parseToStringDate(DateTime.now()),
            ),
          );
    });
  }

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  void _handleSearch(BuildContext context) {
    final id = _idMachineController.text.trim();
    // logger.d("ID MACHINE: $id");
    if (id.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Machine ID tidak boleh kosong"),
          backgroundColor: ColorValues.danger500,
        ),
      );
      return;
    } else if (id == _idMachineController.text.trim()) {
      // logger.d("ID MACHINE: $id");
      context.read<ResultBloc>().add(
            ResultEvent.getResultByDateForHomepage(
              id,
              parseToStringDate(DateTime.now()),
            ),
          );
    }
  }

  Future<void> next(ModelScan2 model, bool filled) async {
    logger.d("filled: ${model.buId}");
    if (filled == true) {
      // Langsung navigasi tanpa dialog
      AutoRouter.of(context)
          .push(
        Scan2Route(
          machineId: model.machineId,
          status: model.status,
          ResultId: model.resultId,
          buId: model.buId,
          userId: model.userId,
        ),
      )
          .then((_) {
        _idMachineController.clear();
      });
      return; // keluar dari fungsi
    }

    // Jika belum filled, baru tampilkan dialog konfirmasi
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // ✅ Radius seluruh dialog
        ),
        title: Center(
          child: Text(
            "Confirmation !!!!",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: ColorValues.danger500, fontWeight: FontWeight.bold),
          ),
        ),
        content: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(200),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // height: ,
          width: 280,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.warning_amber_rounded,
                  color: ColorValues.danger500, size: 150),
              const SizedBox(height: 10),
              Text(
                "You must fill the form completely !",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(false),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: ColorValues.hijauMuda,
                        width: 2.0,
                      ),
                    ),
                    child: Text("NO",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorValues.hijauMuda)),
                  ),
                ),
                Container(
                  width: 100,
                  // margin: const EdgeInsets.only(bu: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: ColorValues.hijauMuda),
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("YES",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    if (confirm == true && _resultId != 0) {
      await AutoRouter.of(context)
          .push(
        Scan2Route(
          machineId: model.machineId,
          status: model.status,
          ResultId: model.resultId,
          buId: model.buId,
          userId: model.userId,
        ),
      )
          .then((_) {
        _idMachineController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _tabPages.clear();
    _tabPages.addAll([
      _buildHome(context),
      SheetPage(
        buId: _BU,
      )
    ]);

    return BlocListener<ResultBloc, ResultState>(
      listener: (context, state) {
        // logger.d("state result: $state");
        state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          added: (response) {
            logger.d("RESULT ADDED: $response");
            final idmachine = _idMachineController.text;
            _resultId = response!.resultId;
            _status = response!.status;
            _userId = response.userId;
            // _isAddingResult = false;
            var _id = response.machineId.toString();
            logger.d("ADD RESULT ID. MACHINE iD: $idmachine, ");
            next(
                ModelScan2(
                  machineId: _id,
                  resultId: _resultId,
                  status: _status,
                  userId: _userId,
                  buId: _BU,
                ),
                true);
          },
          loadedByDateListHome: (response) =>
              setState(() => _resultGet = response),
          loadedByDateForHomepage: (response) async {
            // <-- Make this async
            final String _idmachine = response[0].machineId;
            logger.d("ID MACHINE: $_idmachine");

            final result = response.where(
              (element) => element.userId == _userId,
            );
            final isTrue = response.any(
              (element) => element.userId == _userId,
            );
            final adaresult = response.any(
              (element) => element.resultId == 0,
            );

            if (adaresult == true && _idMachineController.text.isNotEmpty) {
              final confirm = await showDialog<bool>(
                // Await the dialog result
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20), // ✅ Radius seluruh dialog
                  ),
                  title: Center(
                    child: Text(
                      "Confirmation !!!!",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorValues.danger500,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  content: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(200),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // height: ,
                    width: 280,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.warning_amber_rounded,
                            color: ColorValues.danger500, size: 150),
                        const SizedBox(height: 10),
                        Text(
                          "You must fill the form completely !",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge!,
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(false),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: ColorValues.hijauMuda,
                                  width: 2.0,
                                ),
                              ),
                              child: Text("NO",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: ColorValues.hijauMuda)),
                            ),
                          ),
                          Container(
                            width: 100,
                            // margin: const EdgeInsets.only(bu: 100),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: ColorValues.hijauMuda),
                              onPressed: () => Navigator.of(context).pop(true),
                              child: Text("YES",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );

              if (confirm == true) {
                // Hanya jika dikonfirmasi

                context.read<ResultBloc>().add(
                      ResultEvent.addResult(
                        ResultAdd(
                          status: '-',
                          machineId: _idmachine,
                          buId: _BU,
                          date: parseToStringDate(DateTime.now()),
                        ),
                      ),
                    );
              }
            } else if (isTrue) {
              // Data untuk user ini sudah ada, lanjutkan
              logger.d("machineId ID: ${_idmachine}");
              next(
                  ModelScan2(
                    machineId: _idmachine,
                    resultId: result.first.resultId,
                    status: result.first.status,
                    userId: _userId,
                    buId: _BU,
                  ),
                  true);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("MACHINE TELAH DI INSPEKSI"),
                  backgroundColor: ColorValues.danger500));
            }
          },
          error: (message) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(message), backgroundColor: ColorValues.danger500),
          ),
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _tabPages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, -2), // arah bayangan ke atas
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              selectedItemColor: ColorValues.primary700,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: "History"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize _buildAppBar(BuildContext context) => PreferredSize(
        preferredSize: const Size.fromHeight(65), // Tinggi AppBar
        child: Container(
          padding: const EdgeInsets.only(top: 7),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorValues.hijauTua, ColorValues.hijauSedang],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: AppBar(
            backgroundColor:
                Colors.transparent, // penting karena kita pakai gradient
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Row(
              children: [
                Image.asset(
                  "assets/images/Icons_mesin.png",
                  color: Colors.white,
                  width: 75,
                  height: 75,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min, // agar tidak overflow
                    children: [
                      Text(
                        "Digital Check Sheet",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        "Maintenance",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only( right: 25),
                child: Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          _fullname,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          _buname,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => _profile(context),
                      child: const Icon(
                        Icons.account_circle_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  void _profile(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 400, // <- contoh lebar custom
            // height: 600, // <- contoh tinggi custom
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PROFILE",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 15,
                        child: Icon(Icons.close, size: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                /// Profile icon
                /// Profile icon
                /// Profile icon & details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Centered Icon
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 150,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// User details
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Full Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Text(
                            ": $_fullname",
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            "Business Unit",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Text(
                          ": $_buname",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 60),

                /// Logout button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Logout",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.redAccent,
                    ),
                    onPressed: () {
                      _handleLogout(context);
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleLogout(BuildContext context) async {
    try {
      // Hapus data autentikasi dari SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('token');
      await prefs.remove('username');
      await prefs.remove('buId');

      context.read<AuthBloc>().add(const AuthEvent.logout());

      // Navigasi ke halaman login
      AutoRouter.of(context).replace(const LoginRoute());

      // Tampilkan pesan logout berhasil
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Logout berhasil"),
          backgroundColor: ColorValues.primary500,
        ),
      );
    } catch (e) {
      // Tangani kesalahan jika terjadi
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Terjadi kesalahan: $e"),
          backgroundColor: ColorValues.danger500,
        ),
      );
    }
  }

  Widget _buildHome(BuildContext context) {
    final ok = _resultGet.resultModel.where((r) => r.status == "OK").length;
    final ng = _resultGet.resultModel.where((r) => r.status == "NG").length;
    // logger.i("BUILD BERAPA KALI");
    // logger.d("_resultget: $_resultGet");
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildHeader(context, ok, ng, _resultGet.machine.length),
          BuildChecksheetResult(
            result: _resultGet,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(
          BuildContext context, int okCount, int ngCount, int pendingCount) =>
      Container(
        height: MediaQuery.of(context).size.height * 0.45,
        padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorValues.hijauTua, ColorValues.hijauSedang],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(1000, 300),
            bottomRight: Radius.elliptical(1000, 300),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              padding: const EdgeInsets.only(right: 25,left: 25, top: 20,bottom: 23),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -2), // arah bayangan ke atas
                  ),
                ],
              ),
              child: Column(
                children: [
                  // _buildWelcomeMessage(context),
                  //  const SizedBox(height: 20),
                  _buildSearchRow(context),
                ],
              ),
            ),
            BuildSummary(
              okCOunt: okCount,
              ngCount: ngCount,
              pendingCount: pendingCount,
            ),
          ],
        ),
      );

  Widget _buildWelcomeMessage(BuildContext context) => Row(
        children: [
          const Icon(Icons.account_circle,
              size: 70, color: ColorValues.primary800),
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
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: ColorValues.grayscale600)),
            ],
          )
        ],
      );

  Widget _buildSearchRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomTextField(
            maxLines: 1,
            controller: _idMachineController,
            hintText: "Scan Barcode Machine",
            labelText: "Machine ID",
            textInputType: TextInputType.text,
            borderRadius: 15,
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
                backgroundColor: ColorValues.hijauMuda,
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
  }
}
