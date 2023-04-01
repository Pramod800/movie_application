
import 'package:bloc/bloc.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_search_cubit/movie_search_state.dart';


class MovieSearchCubit extends Cubit<MovieSearchState> {
  MovieSearchCubit() : super(MovieSearchInitial());
}