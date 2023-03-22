import 'package:equatable/equatable.dart';
import 'package:movie_application/features/movies/data/models/movie_details_model.dart';
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

class MovieDetailsFetched extends MovieState {
  final MovieDetailsModel _movieDetailsModel;

  const MovieDetailsFetched(this._movieDetailsModel);
  @override
  List<Object?> get props => [_movieDetailsModel];
}
