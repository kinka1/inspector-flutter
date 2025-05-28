import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buildcard extends StatelessWidget {
  const Buildcard(
      {super.key,
      required this.title,
      required this.value,
      required this.color});
  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 0),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(value,
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 7),
        Text(title, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
