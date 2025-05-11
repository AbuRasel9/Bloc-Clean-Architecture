import 'package:bloc_clean_architecture/bloc/auth/login/login_bloc.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_event.dart';
import 'package:bloc_clean_architecture/bloc/auth/login/login_state.dart';
import 'package:bloc_clean_architecture/config/routes/route_name.dart';
import 'package:bloc_clean_architecture/config/utils/app_colors.dart';
import 'package:bloc_clean_architecture/config/utils/flashbar_helper.dart';
import 'package:bloc_clean_architecture/config/widget/button_widget.dart';
import 'package:bloc_clean_architecture/config/widget/input_form_feild.dart';
import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:bloc_clean_architecture/utils/validation.dart';
import 'package:flutter/foundation.dart';
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
  final _emailController = TextEditingController(text: "eve.holt@reqres.in");
  final _passwordController = TextEditingController(text: "cityslicka");
  bool _notShowPassword = true;

  final _formKey = GlobalKey<FormState>();

  //bloc initialize

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _emailFocus.dispose();
    _passwordController.dispose();
    _passwordFocus.dispose();
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
      body: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //email field
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (previous, current) =>
                    previous.email != current.email,
                builder: (context, state) {
                  if (kDebugMode) {
                    print("email build");
                  }

                  return InputFromFieldWidget(
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Enter Email";
                      }
                      if (Validation.emailValidation(p0) == false) {
                        return "Please Enter correct Email";
                      }
                      return null;
                    },
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
                  return InputFromFieldWidget(
                    validator: (p0) {
                      if (p0?.isEmpty ?? false) {
                        return "Enter Password";
                      }
                      if (p0!.length <= 6) {
                        return "Please enter password greater than 6";
                      }
                      return null;
                    },
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
              BlocListener<LoginBloc, LoginState>(
                listenWhen: (previous, current) =>
                    previous.postApiStatus != current.postApiStatus,
                listener: (context, state) {
                  if (state.postApiStatus == ApiStatus.error) {
                    FlushbarHelper.toastMessage(
                      message: state.message,
                      context: context,
                      backgroundColor: AppColors.errorColor,
                    );
                  } else if (state.postApiStatus == ApiStatus.success) {
                    FlushbarHelper.toastMessage(
                        message: state.message, context: context);
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RouteName.homeScreen,
                      (route) => false,
                    );
                  }
                },
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return state.postApiStatus != ApiStatus.loading
                        ? ButtonWidget(
                            buttonText: "Login",
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                context.read<LoginBloc>().add(LoginApiEvent());
                                if (kDebugMode) {
                                  print("Validate work ");
                                }
                              }
                            },
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
