import 'package:application/core/color_values.dart';
import 'package:application/features/widget/appbarCus.dart';
import 'package:application/features/widget/custom_text_field.dart';
import 'package:application/features/widget/tombol.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class Scan1Page extends StatefulWidget {
  const Scan1Page({super.key});

  @override
  State<Scan1Page> createState() => _Scan1PageState();
}

class _Scan1PageState extends State<Scan1Page> {
  final TextEditingController _idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarCus(context, "Daily Maintenance",false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: _idController,
              hintText: "Masukan ID",
              labelText: "Scan Barcode",
              textInputType: TextInputType.text,
              validator: (value) =>
                  value!.isEmpty ? "username tidak boleh kosong" : null,
              LabelTextStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            tombol("Submit", onPressed), // ✅ Benar
          ],
        ),
      ),
    );
  }

  void onPressed() {
    String id = _idController.text;
    if (id.isNotEmpty) {
      context.router.push(Scan2Route(id: int.parse(id),status: " "));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("ID tidak boleh kosong"),
          backgroundColor: ColorValues.danger500,
        ),
      );
    }
  }

}
