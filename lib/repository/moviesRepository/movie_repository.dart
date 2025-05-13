import '../../model/moviesModel/movies_model.dart';

abstract class MovieRepository{
  Future<MoviesModel>getMovieList();
}