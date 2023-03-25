import 'package:equatable/equatable.dart';
import 'package:movie_application/features/movies/data/models/movie_details_model.dart';

abstract class MovieState extends Equatable {
  const MovieState();
}

class MovieInitial extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieDetailsFetched extends MovieState {
  final MovieDetailsModel movieDetailsModel;

  const MovieDetailsFetched(this.movieDetailsModel);
  @override
  List<Object?> get props => [movieDetailsModel];
}
