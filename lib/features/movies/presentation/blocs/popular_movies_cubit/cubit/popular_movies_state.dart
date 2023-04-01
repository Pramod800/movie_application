part of 'popular_movies_cubit.dart';

abstract class PopularMoviesState extends Equatable {
  const PopularMoviesState();
}

class PopularMoviesInitial extends PopularMoviesState {
  @override
  List<Object> get props => [];
}

class PopularMoviesFetchedState extends PopularMoviesState {
  const PopularMoviesFetchedState(this.popularMoviesCard);
  final List<PopularMovies> popularMoviesCard;
  @override
  List<Object> get props => [popularMoviesCard];
}
