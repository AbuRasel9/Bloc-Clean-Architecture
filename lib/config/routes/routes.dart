import 'package:bloc_clean_architecture/config/routes/route_name.dart';
import 'package:flutter/material.dart';

import '../../view/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case RouteName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case RouteName.loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No Page Found"),
            ),
          ),
        );
    }
  }
}
