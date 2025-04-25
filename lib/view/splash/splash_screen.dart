import 'package:bloc_clean_architecture/services/splash/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices _splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    _splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
