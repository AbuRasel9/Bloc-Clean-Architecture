import 'package:equatable/equatable.dart';

import '../../data/response/api_response.dart';
import '../../model/moviesModel/movies_model.dart';

class MoviesDataState extends Equatable {
  const MoviesDataState({
    required this.movieList,
  });

  final ApiResponse<MoviesModel> movieList;

  MoviesDataState copyWith({ApiResponse<MoviesModel>? movieList}) {
    return MoviesDataState(
      movieList: movieList ?? this.movieList,
    );
  }

  @override
  List<Object?> get props => [movieList];
}
