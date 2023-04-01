part of 'movie_search_cubit_cubit.dart';

abstract class MovieSearchState extends Equatable {
  const MovieSearchState();
}

class MovieSearchInitial extends MovieSearchState {
  @override
  List<Object> get props => [];
}

class MovieSearchedState extends MovieSearchState {
  final MovieSearchedState movieDetailsModel;

  const MovieSearchedState(this.movieDetailsModel);
  @override
  List<Object?> get props => [movieDetailsModel];
}
