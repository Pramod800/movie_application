import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_application/core/db_constants.dart';
import 'package:movie_application/features/auth/data/models/auth_model.dart';
import 'package:movie_application/features/movies/data/models/movie_models.dart';

class HiveUtils {
  static Box? _ourDataBase;

  initDb() async {
    ///We can pass own path storage to Hive
    _ourDataBase = Hive.box('movieDB');
    //_movieListDB = Hive.box('movieModelListDB');
  }

  static setString(String key, String value) {
    _ourDataBase?.put(key, value);
  }

  static setMovieId(String key, int value) {
    _ourDataBase?.put(key, value);
  }

  static int? getMovieId(String key) {
    return _ourDataBase?.get(key);
  }

  static String getString(String key) {
    return _ourDataBase?.get(key);
  }

  static storeSingleMovie(MovieCardModel movie) {
    final Map<String, dynamic> movieJson = movie.toJson();
    final String encodedJsonString = jsonEncode(movieJson);

    //print("ENCODE MOVIE OBJECT ${encodedJson.toString()}");
    _ourDataBase?.put(DBConstants.singleMovieKey, encodedJsonString);
  }

  /// DECODING=> String -> Object
  static fetchSingleMovie() {
    final String storedMovieString =
        _ourDataBase?.get(DBConstants.singleMovieKey);
    final Map<String, dynamic> decodedJson = jsonDecode(storedMovieString);

    final MovieCardModel storedMovie = MovieCardModel.fromJson(decodedJson);
  }

  static storeMovies(List<MovieCardModel> movies) {
    _ourDataBase?.put('Movies', movies);
  }

  static List fetchMovies() {
    final List movies = _ourDataBase?.get('Movies') ?? [];
    //print("MOVIES LENGTH ${movies.length}");
    return movies;
  }

  /// Deletes the movie from the local storage with the provided [id]
  static void deleteMovie(int id) {
    //Step:1 fetch local stored movies
    final storedMovies = fetchMovies();

    //step:2 convert List<dynamic> to List<MovieCardModel> using List.from
    final movies = List<MovieCardModel>.from(storedMovies);

    //step:3 remove the movie element from the list with same movie Id
    movies.removeWhere((movieElement) => movieElement.id == id);

    /// step:4 store the new movies list after deleting the single movie item
    storeMovies(movies);
  }

  static void deleteAllMovies() {
    _ourDataBase?.delete('Movies');
  }

  bool registerUser({required AuthModel registrationModel}) {
    _ourDataBase?.put('registration', registrationModel.toJson());

    return true;
  }

  static void loginUser() {
    final String userNme = _ourDataBase?.get('username');
  }

  String getUserName() {
    return _ourDataBase?.get('username');
  }

  String getPassword() {
    return _ourDataBase?.get('password');
  }
}
