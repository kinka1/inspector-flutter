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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Form(
            key: _loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo atau gambar login
                Image.asset("assets/images/login.png"),
                const SizedBox(height: 20),

                // Username Field
                _buildUsernameField(),

                const SizedBox(height: 20),

                // Password Field
                _buildPasswordField(),

                const SizedBox(height: 20),

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
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the username text field
  Widget _buildUsernameField() {
    return CustomTextField(
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
          borderRadius: BorderRadius.circular(8),
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
          Text(
            "Masuk",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: ColorValues.grayscale50),
          ),
        ],
      ),
    );
  }
}