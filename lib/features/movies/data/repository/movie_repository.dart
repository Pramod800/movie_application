import 'package:movie_application/features/movies/data/data_source/movie_data_source.dart';
import 'package:movie_application/features/movies/data/models/movie_models.dart';

/// calls the appropriate datasource
/// and its related method calls
class MovieRepository {
  MovieRepository(this._movieDataSource);

  late final MovieDataSource _movieDataSource;

  /// calls [_movieDataSource] methods passing the  [url]
  Future<List<MovieCardModel>> getUpcomingMovies({required String url}) async {
    return await _movieDataSource.fetchUpcomingMovies(upcomingMovies: url);
  }
}
