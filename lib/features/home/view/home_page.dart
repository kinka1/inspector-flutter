import 'package:application/core/color_values.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(const ScanRoute());
                  // AutoRouter.of(context).push(const ScannerRoute());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorValues.info400,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  width: 400,
                  child: const Column(
                    children: [
                      Icon(Icons.qr_code_scanner,
                          size: 200, color: Colors.white),
                      Text(
                        "Scaner",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(const SheetRoute());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorValues.info400,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  width: 400,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.task,
                        size: 200,
                        color: Colors.white,
                      ),
                      Text(
                        "Checksheet",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
