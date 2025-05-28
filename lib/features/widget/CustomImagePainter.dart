import 'package:flutter/material.dart';

class BottomConvexClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Mulai dari kiri atas
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 50);

    // Lengkungan cembung ke bawah
    path.quadraticBezierTo(
      size.width / 2, size.height + 50, // Titik kontrol di bawah tengah
      size.width, size.height - 50,    // Titik akhir di kanan bawah
    );

    path.lineTo(size.width, 0); // Kembali ke kanan atas
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
