import 'package:equatable/equatable.dart';
import 'package:movie_application/features/movies/data/models/movie_details_model.dart';

abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();
}

class MovieDetailsInitial extends MovieDetailsState {
  @override
  List<Object> get props => [];
}

class MovieDetailsFetched extends MovieDetailsState {
  final MovieDetailsModel movieDetailsModel;

  const MovieDetailsFetched(this.movieDetailsModel);
  @override
  List<Object?> get props => [movieDetailsModel];
}


