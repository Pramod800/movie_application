import 'package:movie_application/features/movies/data/data_source/movie_data_source.dart';
import 'package:movie_application/features/movies/data/models/movie_details_model.dart';
import 'package:movie_application/features/movies/data/models/movie_models.dart';

/// calls the appropriate datasource
/// and its related method calls
class MovieRepository {
  MovieRepository(this._movieDataSource);

  late final MovieDataSource _movieDataSource;

  Future<List<MovieCardModel>> getUpcomingMovies({required String url}) async {
    return await _movieDataSource.fetchUpcomingMovies(upcomingMovies: url);
  }

  Future<MovieDetailsModel?> getMovieDetails({required int movieId}) async {
    return await _movieDataSource.fetchMovieDetails(movieId: movieId);
  }
}
