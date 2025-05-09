import 'dart:async';
import 'package:bloc_clean_architecture/services/sessionManager/session_controller.dart';
import 'package:flutter/material.dart';

import '../../config/routes/route_name.dart';

class SplashServices {
  Future<void> isLogin(BuildContext context) async {
    /*
    call local storage data than check isLogin true or false
    if false than go to login screen and if true than go to home screen
*/
    await SessionController().getValueInPreference().then(
      (value) {
        if (SessionController().isLogin == true) {
          Timer(
            const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(
              context,
              RouteName.homeScreen, // Your target route name
              (route) => false, // This removes all previous routes
            ),
          );
        } else {
          Timer(
            const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(
              context,
              RouteName.loginScreen, // Your target route name
              (route) => false, // This removes all previous routes
            ),
          );
        }
      },
    ).onError(
      (error, stackTrace) {
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
  }
}
