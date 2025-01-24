
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

@RoutePage()
class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                String? res = await SimpleBarcodeScanner.scanBarcode(
                  context,
                  barcodeAppBar: const BarcodeAppBar(
                    appBarTitle: 'Test',
                    centerTitle: false,
                    enableBackButton: true,
                    backButtonIcon: Icon(Icons.arrow_back_ios),
                  ),
                  isShowFlashIcon: true,
                  delayMillis: 500,
                  cameraFace: CameraFace.back,
                  scanFormat: ScanFormat.ONLY_BARCODE,
                );
                setState(() {
                  result = res as String;
                });
              },
              child: const Text('Scan Barcode'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Scan Barcode Result: $result'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                SimpleBarcodeScanner.streamBarcode(
                  context,
                  barcodeAppBar: const BarcodeAppBar(
                    appBarTitle: 'Test',
                    centerTitle: false,
                    enableBackButton: true,
                    backButtonIcon: Icon(Icons.arrow_back_ios),
                  ),
                  isShowFlashIcon: true,
                  delayMillis: 2000,
                ).listen((event) {
                  print("Stream Barcode Result: $event");
                });
              },
              child: const Text('Stream Barcode'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Barcode Scanner Widget(Android Only)'))
          ],
        ),
      ),
    );
  }
}