import 'package:bloc/bloc.dart';
import 'package:bloc_clean_architecture/bloc/moviesBloc/movies_event.dart';
import 'package:bloc_clean_architecture/bloc/moviesBloc/movies_state.dart';
import 'package:bloc_clean_architecture/data/response/api_response.dart';
import 'package:bloc_clean_architecture/repository/moviesRepository/movie_repository.dart';
import 'package:bloc_clean_architecture/services/diServices/injection.dart';

class MovieBloc extends Bloc<MoviesEvent, MoviesDataState> {
  final movieRepo = getIt.get<MovieRepository>();

  MovieBloc() : super(MoviesDataState(movieList: ApiResponse.loading())) {
    on<FetchMoviesEvent>(_fetchMovieList);
  }

  Future<void> _fetchMovieList(
      FetchMoviesEvent event, Emitter<MoviesDataState> emit) async {
    await movieRepo.getMovieList().then(
      (value) {
        emit(state.copyWith(movieList: ApiResponse.success(value)));
      },
    ).onError(
      (error, stackTrace) {
        emit(state.copyWith(movieList: ApiResponse.error(error.toString())));
      },
    );
  }
}
