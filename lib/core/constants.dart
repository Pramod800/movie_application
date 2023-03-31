class MovieConstants {
  MovieConstants._internal();

  static String baseUrl = 'https://api.themoviedb.org/3/movie';
  static String key = 'caebc202bd0a26f84f4e0d986beb15cd';
  static String upcomingMovies =
      "http://api.themoviedb.org/3/movie/upcoming?api_key=caebc202bd0a26f84f4e0d986beb15cd";
  static String popularMovies =
      "https://api.themoviedb.org/3/movie/popular?api_key=$key&language=en-US&page=1";

  static String topRated =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=$key&language=en-US&page=1";

  static String trendingMovies =
      "http://api.themoviedb.org/3/movie/upcoming?api_key=$key";
}
// Latedt Movies::::   https://api.themoviedb.org/3/movie/latest?api_key=<<api_key>>&language=en-US
// similar movies :::   https://api.themoviedb.org/3/movie/{movie_id}/similar?api_key=<<api_key>>&language=en-US&page=1