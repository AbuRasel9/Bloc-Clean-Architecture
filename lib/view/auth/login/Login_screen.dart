import 'package:bloc_clean_architecture/config/utils/app_colors.dart';
import 'package:bloc_clean_architecture/config/widget/button_widget.dart';
import 'package:bloc_clean_architecture/config/widget/input_form_feild.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //email field
            InputFromFieldWidget(
              hintText: "Email",
              controller: _emailController,
              focusNode: _emailFocus,
              onChange: (p0) {},
            ),
            const SizedBox(
              height: 10,
            ),

            //password feild
            InputFromFieldWidget(
              onChange: (p0) {},
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
    );
  }
}
