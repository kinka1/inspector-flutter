import 'package:application/core/color_values.dart';
import 'package:application/features/widget/Monthly.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SheetPage extends StatefulWidget {
  const SheetPage({super.key});

  @override
  State<SheetPage> createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorValues.info400,
          title: const Text(
            'Checksheet',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i = 1; i < 13; i++ ) ...[
                    Monthly(bulan: i)
                  ]
                ],
              ),
            ),
          ),
        ));
  }
}
