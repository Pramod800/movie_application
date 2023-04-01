import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'movie_search_cubit_state.dart';

class MovieSearchCubitCubit extends Cubit<MovieSearchState> {
  MovieSearchCubitCubit() : super(MovieSearchInitial());
}
