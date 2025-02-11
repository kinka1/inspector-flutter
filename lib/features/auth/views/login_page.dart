import 'package:another_flushbar/flushbar.dart';
import 'package:application/core/color_values.dart';
import 'package:application/features/auth/bloc/auth_bloc.dart';
import 'package:application/features/widget/custom_text_field.dart';
import 'package:application/features/widget/field.dart';
import 'package:application/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorValues.info400,
          title: const Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Form(
              key: _loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: _usernameController,
                    hintText: "Yanto gaming",
                    labelText: "Username",
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
                  CustomTextField(
                    controller: _passwordController,
                    hintText: "Kata sandi kamu",
                    labelText: "Password",
                    textInputType: TextInputType.text,
                    validator: (value) =>
                        value!.isEmpty ? "Password tidak boleh kosong" : null,
                    isPassword: true,
                    LabelTextStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                    state.maybeWhen(
                        loginSuccess: () {
                          AutoRouter.of(context).replace(const HomeRoute());
                        },
                        error: (error) => Flushbar(
                              title: 'Ups! Sepertinya ada yang salah',
                              message: error,
                              duration: const Duration(seconds: 3),
                              backgroundColor: ColorValues.danger500,
                            ).show(context),
                        orElse: () => {});
                  }, builder: (context, state) {
                    final isLoading = state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
              
                    return ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              _loginFormKey.currentState!.validate();
                              context.read<AuthBloc>().add(AuthEvent.login(
                                    username: _usernameController.text,
                                    password: _passwordController.text,
                                  ));
                            },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(MediaQuery.of(context).size.width, 50),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        backgroundColor: ColorValues.info400,
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
                          ]),
                    );
                  }),
                ],
              ),
            )));
  }
}
