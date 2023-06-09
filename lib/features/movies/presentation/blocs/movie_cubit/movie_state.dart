import 'package:equatable/equatable.dart';
import 'package:movie_application/features/movies/data/models/movie_models.dart';

abstract class MovieState extends Equatable {
  const MovieState();
}

class MovieInitial extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieFetched extends MovieState {
  const MovieFetched(this.moviesCard);
  final List<MovieCardModel> moviesCard;
  @override
  List<Object> get props => [moviesCard];
}
