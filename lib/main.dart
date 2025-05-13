import 'package:bloc_clean_architecture/bloc/auth/login/login_bloc.dart';
import 'package:bloc_clean_architecture/bloc/moviesBloc/movie_bloc.dart';
import 'package:bloc_clean_architecture/config/routes/route_name.dart';
import 'package:bloc_clean_architecture/config/routes/routes.dart';
import 'package:bloc_clean_architecture/services/diServices/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginBloc(),
          ),
          BlocProvider(
            create: (context) => MovieBloc(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteName.splashScreen,
          onGenerateRoute: Routes.generateRoute,
        ));
  }
}
