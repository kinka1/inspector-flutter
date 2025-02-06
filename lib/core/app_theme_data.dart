import 'package:application/core/color_values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppThemeData {
  static ThemeData getTheme(BuildContext context) {
    const Color primaryColor = ColorValues.info400;
    final Map<int, Color> primaryColorMap = {
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    };
    final MaterialColor primaryMaterialColor =
        MaterialColor(primaryColor.value, primaryColorMap);

    return ThemeData(
        useMaterial3: false,
        primaryColor: primaryColor,
        primarySwatch: primaryMaterialColor,
        scaffoldBackgroundColor: ColorValues.grayscale50,
        canvasColor: ColorValues.grayscale50,
        brightness: Brightness.light,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorValues.info400,
          unselectedItemColor: ColorValues.grayscale300,
          selectedLabelStyle: GoogleFonts.plusJakartaSans(
              color: ColorValues.info400,
              fontSize: 12,
              fontWeight: FontWeight.w600),
          unselectedLabelStyle: GoogleFonts.plusJakartaSans(
              color: ColorValues.grayscale300,
              fontSize: 12,
              fontWeight: FontWeight.w600),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorValues.info500,
                elevation: 0,
                padding: const EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ))),
        iconTheme: IconThemeData(size: 6.w, color: ColorValues.grayscale900),
        textTheme: TextTheme(
          // bodyLarge: Callout
          // bodyMedium: Caption 1
          // bodySmall: Caption 2
          // titleLarge: Body
          // labelLarge: Button
          bodyLarge: GoogleFonts.plusJakartaSans(
              fontSize: 20,
              color: Colors.black,),
          bodyMedium: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: GoogleFonts.plusJakartaSans(
              fontSize: 11, fontWeight: FontWeight.normal),
          titleLarge: GoogleFonts.plusJakartaSans(
            fontSize: 17,
            color: ColorValues.grayscale900,
            letterSpacing: -0.5,
          ),
          labelLarge: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              color: ColorValues.grayscale50,
              fontWeight: FontWeight.w500),
        ));
  }
}
