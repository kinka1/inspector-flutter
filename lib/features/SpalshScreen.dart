import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/repositories/auth/auth_repository_impl.dart';
import 'package:maintenanceApp/routes/router.dart';

@RoutePage()
class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final authRepository = AuthRepositoryImpl();
    final isLoggedIn = await authRepository.checkTokenValidity();
    print("isLoggedIn: $isLoggedIn");

    if (isLoggedIn) {
      // Pengguna sudah login, arahkan ke halaman home
      AutoRouter.of(context).replace(HomenewRoute());
    } else {
      // Pengguna belum login, arahkan ke halaman login
      AutoRouter.of(context).replace(const LoginRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: ColorValues.primary700,
        ),
      ),
    );
  }
}