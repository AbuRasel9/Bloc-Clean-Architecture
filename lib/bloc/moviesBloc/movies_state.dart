import 'package:equatable/equatable.dart';

import '../../data/response/api_response.dart';
import '../../model/moviesModel/movies_model.dart';

class MoviesDataState extends Equatable {
  const MoviesDataState({
    required this.movieResponse,
  });

  final ApiResponse<MoviesModel> movieResponse;

  MoviesDataState copyWith({ApiResponse<MoviesModel>? movieResponse}) {
    return MoviesDataState(
      movieResponse: movieResponse ?? this.movieResponse,
    );
  }

  @override
  List<Object?> get props => [movieResponse];
}
