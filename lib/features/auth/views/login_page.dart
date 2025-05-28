import 'package:another_flushbar/flushbar.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/auth/auth_bloc.dart';
import 'package:maintenanceApp/features/widget/custom_text_field.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordHidden = true;
  // final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorValues.hijauTua,
              ColorValues.hijauSedang
            ], // Warna gradasi
            begin: Alignment.topLeft, // Titik awal gradasi
            end: Alignment.bottomRight, // Titik akhir gradasi
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Icons_mesin.png",
                          color: Colors.white,
                          width: 150,
                        ),
                        Text("Digital Check Sheet",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  color: ColorValues.grayscale50,
                                  fontWeight: FontWeight.bold,
                                )),
                        const SizedBox(height: 10),
                        Text("Maintenance",
                            style:
                                Theme.of(context).textTheme.headlineLarge!.copyWith(
                                      color: ColorValues.grayscale50,
                                      fontWeight: FontWeight.bold,
                                    )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 54,
                      vertical: 64,
                    ),
                    child: Form(
                      key: _loginFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Logo atau gambar login
                          const SizedBox(height: 20),
                    
                          // Username Field
                          _buildUsernameField(),
                    
                          const SizedBox(height: 20),
                    
                          // Password Field
                          _buildPasswordField(),
                    
                          const SizedBox(height: 30),
                    
                          // Login Button
                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              // logger.d("State AUTH: $state");
                              state.maybeWhen(
                                loginSuccess: () {
                                  AutoRouter.of(context).replace(HomenewRoute());
                                },
                                logoutSuccess: () {
                                  Flushbar(
                                    title: 'Berhasil Logout',
                                    message: "Anda telah berhasil logout",
                                    duration: const Duration(seconds: 3),
                                    backgroundColor: ColorValues.primary500,
                                  ).show(context);
                                },
                                error: (error) => Flushbar(
                                  title: 'Login Gagal',
                                  message: "Ups! Sepertinya ada yang salah",
                                  duration: const Duration(seconds: 3),
                                  backgroundColor: ColorValues.danger500,
                                ).show(context),
                                orElse: () {},
                              );
                            },
                            builder: (context, state) {
                              final isLoading = state.maybeWhen(
                                loading: () => true,
                                orElse: () => false,
                              );
                              // logger.d("isLoading: $isLoading");
                              return _buildLoginButton(isLoading);
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            child: Center(
                              child: Text("Version 1.0.0",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the username text field
  Widget _buildUsernameField() {
    return CustomTextField(
      maxLines: 1,
      controller: _usernameController,
      hintText: "Username",
      labelText: "Username",
      textInputType: TextInputType.text,
      borderRadius: 10,
      validator: (value) =>
          value!.isEmpty ? "Username tidak boleh kosong" : null,
      LabelTextStyle: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  /// Builds the password text field
  Widget _buildPasswordField() {
    return CustomTextField(
      maxLines: 1,
      controller: _passwordController,
      hintText: "Kata sandi kamu",
      labelText: "Password",
      textInputType: TextInputType.text,
      isPassword: _isPasswordHidden,
      borderRadius: 10,
      suffixIcon: IconButton(
        icon: Icon(
          _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _isPasswordHidden = !_isPasswordHidden;
          });
        },
      ),
      validator: (value) =>
          value!.isEmpty ? "Password tidak boleh kosong" : null,
      LabelTextStyle: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  /// Builds the login button
  Widget _buildLoginButton(bool isLoading) {
    return ElevatedButton(
      onPressed: isLoading
          ? null
          : () {
              if (_loginFormKey.currentState!.validate()) {
                context.read<AuthBloc>().add(
                      AuthEvent.login(
                        username: _usernameController.text,
                        password: _passwordController.text,
                      ),
                    );
              }
            },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
        padding: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: ColorValues.hijauMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLoading)
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              ),
            ),
          Row(
            children: [
              Text(
                "Login",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              Icon(Icons.login, color: Colors.white,),
            ],
          ),
        ],
      ),
    );
  }
}
