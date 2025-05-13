import 'dart:async';

import 'package:bloc_clean_architecture/bloc/moviesBloc/movie_bloc.dart';
import 'package:bloc_clean_architecture/bloc/moviesBloc/movies_event.dart';
import 'package:bloc_clean_architecture/bloc/moviesBloc/movies_state.dart';
import 'package:bloc_clean_architecture/services/sessionManager/session_controller.dart';
import 'package:bloc_clean_architecture/utils/enum.dart';
import 'package:bloc_clean_architecture/view/home/movie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/routes/route_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<MovieBloc>().add(FetchMoviesEvent());
      },
    );
  }

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
                      const Duration(microseconds: 300),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<MovieBloc, MoviesDataState>(
          builder: (context, state) {
            switch (state.movieList.status) {
              case ApiStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case ApiStatus.error:
                return Text(state.movieList.message.toString());
              case ApiStatus.success:
                return MovieListItem(state.movieList.data?.tvShows ?? []);

              case null:
                return const SizedBox();

              case ApiStatus.initial:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
