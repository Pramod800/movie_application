import 'package:equatable/equatable.dart';
import 'package:movie_application/features/movies/data/models/movie_details_model.dart';

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
