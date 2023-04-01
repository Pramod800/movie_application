import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_application/features/movies/data/data_source/movie_data_source.dart';
import 'package:movie_application/features/movies/data/models/popularMovies.dart';
import 'package:movie_application/features/movies/data/repository/movie_repository.dart';

part 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  PopularMoviesCubit() : super(PopularMoviesInitial());

  final MovieRepository _movieRepository = MovieRepository(MovieDataSource());

  void getPopularMovies() async {
    final popularMoviesData = await _movieRepository.getPopularMovies();
    emit(PopularMoviesFetchedState(popularMoviesData));
  }
}
