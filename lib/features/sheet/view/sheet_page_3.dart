import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/color_values.dart';

@RoutePage()
class Sheet3Page extends StatefulWidget {
  const Sheet3Page({super.key});

  @override
  State<Sheet3Page> createState() => _Sheet3PageState();
}

class _Sheet3PageState extends State<Sheet3Page> {
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
      body: Center(
        child: Text("SHEET 3", style: TextStyle(fontSize: 100),),
      ),
    );
  }
}
