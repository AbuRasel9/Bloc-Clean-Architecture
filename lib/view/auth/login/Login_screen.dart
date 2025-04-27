import 'package:bloc_clean_architecture/bloc/auth/login/login_bloc.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_event.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_state.dart';
import 'package:bloc_clean_architecture/config/utils/app_colors.dart';
import 'package:bloc_clean_architecture/config/widget/button_widget.dart';
import 'package:bloc_clean_architecture/config/widget/input_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _notShowPassword = true;

  //bloc initialize
  late LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          "Login Screen",
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: BlocProvider(
        create: (BuildContext context) => LoginBloc(),
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //email field
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (previous, current) =>
                    previous.email != current.email,
                builder: (context, state) {
                  print("email build");

                  return InputFromFieldWidget(
                    hintText: "Email",
                    controller: _emailController,
                    focusNode: _emailFocus,
                    onChange: (p0) {
                      context.read<LoginBloc>().add(
                            EmailChange(
                              emailValue: p0,
                            ),
                          );
                    },
                  );
                },
              ),

              const SizedBox(
                height: 10,
              ),

              //password feild
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (previous, current) =>
                    previous.password != current.password,
                builder: (context, state) {
                  print("password build");
                  return InputFromFieldWidget(
                    onChange: (p0) {
                      context.read<LoginBloc>().add(
                            PasswordChange(
                              passwordValue: p0,
                            ),
                          );
                    },
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _notShowPassword = !_notShowPassword;
                        });
                      },
                      child: _notShowPassword
                          ? const Icon(
                              Icons.visibility_off,
                            )
                          : const Icon(
                              Icons.remove_red_eye,
                            ),
                    ),
                    isObscureText: _notShowPassword,
                    hintText: "Password",
                    controller: _passwordController,
                    focusNode: _passwordFocus,
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonWidget(
                buttonText: "Login",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
