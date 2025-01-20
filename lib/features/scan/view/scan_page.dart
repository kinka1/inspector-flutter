import 'package:application/core/color_values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:simple_grid/simple_grid.dart';

@RoutePage()
class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  List<Map<String, String>> datas = [
    {
      'keterangan': 'Selection Name : ',
      'isi': 'Manufacturing b adcvadfada[ophjcad',
    },
    {
      'keterangan': 'Machine Name :',
      'isi': 'HEADsafdghjklkhgfd',
    },
    {
      'keterangan': 'Line : ',
      'isi': 'DO',
    },
    {
      'keterangan': 'Machine Number : ',
      'isi': '30',
    },
  ];

  List<Map<String, String>> Caption = [
    //pilihan =
    // A -> YES / NO
    // B -> INPUT INTEGER
    {'title': 'Inspection Item : ', 'deskripsi': 'Pipa Material'},
    {'title': 'Specification : ', 'deskripsi': 'Material Tidak Bocor'},
  ];

  final List<String> _options = ['Daily', 'Weekly', 'Monthly'];

  // Nilai yang dipilih
  String? _selectedOption;
  String? _selectedPeriod;
  String selectedstatus = "normal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorValues.info400,
        title: const Text(
          'Daily Maintenance',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            for (var i = 0; i < 4; i++) ...[
              Row(
                children: [
                  Text(
                    datas[i]['keterangan']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    datas[i]['isi']!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
            const SizedBox(height: 10),
            Image.asset('assets/images/mesin.jpg'),
            const SizedBox(height: 10),
            buildForm(15),
          ],
        ),
      ),
    );
  }

  Widget buildForm(double size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < Caption.length; i++) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    Caption[i]['title']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    Caption[i]['deskripsi']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
            ],
            Row(
              children: [
                SpGrid(
                    width: MediaQuery.of(context).size.width * 3 / 4,
                    height: 40,
                    children: [
                      SpGridItem(
                        sm: 2,
                        child: Container(
                          padding: EdgeInsets.only(top: 13),
                          child: Text("Method : ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                      SpGridItem(
                        sm: 4,
                        child: Container(
                          child: buildDropdown(
                            hint: 'Pilih Method',
                            selectedValue: _selectedOption,
                            onChanged: (value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SpGridItem(
                        sm: 2,
                        child: Container(
                          padding: EdgeInsets.only(top: 13),
                          child: Text("Period : ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                      SpGridItem(
                        sm: 4,
                        child: Container(
                          child: buildDropdown(
                            hint: 'Pilih Method',
                            selectedValue: _selectedPeriod,
                            onChanged: (value) {
                              setState(() {
                                _selectedPeriod = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            status(20)
          ],
        ),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            onPressed: () {
              print('ElevatedButton ditekan!');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Warna background
              foregroundColor: Colors.white, // Warna teks
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: Text('Simpan'),
          ),
        ),
      ],
    );
  }

  late Color warna = Colors.white;
  Color selectedColor() {
    if (selectedstatus == "Normal") {
      warna = Colors.green;
    } else if (selectedstatus == "Abnormal") {
      warna = Colors.red;
    }
    return warna;
  }

  Widget status(double size) {
    return SpGrid(children: [
      SpGridItem(
        sm: 2,
        child: Container(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            "Status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      SpGridItem(
          sm: 4,
          child: GroupButton(
            options: GroupButtonOptions(
              selectedColor: selectedColor(),
            ),
            isRadio: true,
            buttons: ["Normal", "Abnormal"],
            onSelected: (String value, int index, bool isSelected) {
              setState(() {
                selectedstatus = value;
              });
            },
          )),
      SpGridItem(sm: 1, child: Text("")),
      SpGridItem(
          sm: 4,
          child: TextField(
            decoration: InputDecoration(
              labelStyle: TextStyle(
                color: Colors.black
              ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
                focusColor: ColorValues.grayscale50,
                hoverColor: Colors.red,
                fillColor: Colors.blue,
                labelText: 'status',
                hintText: 'input'),
          ))
    ]);
  }

  Widget buildDropdown({
    required String hint,
    required String? selectedValue,
    required ValueChanged<String?> onChanged,
  }) {
    return DropdownButton<String>(
      value: selectedValue,
      hint: Text(
        hint,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      icon: const Icon(Icons.arrow_drop_down_outlined),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 16),
      underline: Container(
        height: 2,
      ),
      onChanged: onChanged,
      items: _options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
