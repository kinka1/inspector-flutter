import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';

class Buildform extends StatelessWidget {
  const Buildform({super.key, required this.item});

  final InspectionitemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  item.inspectionItem,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blueAccent,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  item.specification,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                SpGrid(
                    width: MediaQuery.of(context).size.width * 3 / 4,
                    height: 40,
                    children: [
                      SpGridItem(
                        sm: 2,
                        child: Container(
                          padding: const EdgeInsets.only(top: 13),
                          child: const Text("Method : ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                      SpGridItem(
                        sm: 4,
                        child: Text(item.period,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ),
                      SpGridItem(
                        sm: 2,
                        child: Container(
                          padding: EdgeInsets.only(top: 13),
                          child: const Text("Period : ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                      SpGridItem(
                        sm: 4,
                        child: Text(item.method,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ),
                    ]),
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
    ;
  }
}
