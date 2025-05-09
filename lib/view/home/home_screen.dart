import 'dart:async';

import 'package:bloc_clean_architecture/services/sessionManager/session_controller.dart';
import 'package:flutter/material.dart';

import '../../config/routes/route_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await SessionController().clearValueInPreference().then(
                  (value) {
                    Timer(
                      const Duration(seconds: 3),
                      () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        RouteName.loginScreen, // Your target route name
                        (route) => false, // This removes all previous routes
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.logout))
        ],
        title: const Text("Home Screen"),
      ),
    );
  }
}
