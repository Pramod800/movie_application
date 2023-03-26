import 'package:bloc/bloc.dart';
import 'package:movie_application/features/movies/data/data_source/movie_data_source.dart';
import 'package:movie_application/features/movies/data/models/movie_details_model.dart';
import 'package:movie_application/features/movies/data/repository/movie_repository.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_details/movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit() : super(MovieDetailsInitial());

  final MovieRepository _movieRepository = MovieRepository(MovieDataSource());

  Future<MovieDetailsModel?> getMovieDetails({required int movieId}) async {
    return await _movieRepository.getMovieDetails(movieId: movieId);
    //  emit(MovieDetailsFetched(movieId));
  }
}
