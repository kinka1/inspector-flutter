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
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorValues.info400,
                  ),
                  padding: const EdgeInsets.all(15.0),
                  width: MediaQuery.of(context).size.width * 0.7, // Responsif
                  child: const Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Pusatkan konten
                    children: [
                      Icon(Icons.qr_code_scanner,
                          size: 200, color: Colors.white),
                      SizedBox(height: 10), // Jarak antara ikon dan teks
                      Text(
                        "Scanner",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
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
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: const Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Pusatkan konten
                    children: [
                      Icon(Icons.task,
                          size: 200, color: Colors.white),
                      SizedBox(height: 10), // Jarak antara ikon dan teks
                      Text(
                        "Check Sheet",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
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
