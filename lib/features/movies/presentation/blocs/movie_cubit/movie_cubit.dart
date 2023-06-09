import 'package:bloc/bloc.dart';
import 'package:movie_application/features/movies/data/data_source/movie_data_source.dart';
import 'package:movie_application/features/movies/data/repository/movie_repository.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());

  final MovieRepository _movieRepository = MovieRepository(MovieDataSource());

  void getUpcomingMovies({required String apiUrl}) async {
    final moviesData = await _movieRepository.getUpcomingMovies(url: apiUrl);

    Future.delayed(const Duration(milliseconds: 500), () {
// Here you can write your code
      emit(MovieFetched(moviesData));
    });
  }
}
