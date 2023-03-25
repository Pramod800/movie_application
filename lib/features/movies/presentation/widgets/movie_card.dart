import 'package:flutter/material.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_state.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key, required this.movieFetched, required  this.onClick});
 final Function(int id) onClick;
  final MovieFetched movieFetched;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double size = 18.0;

    return ListView.builder(
      // shrinkWrap: true,
      itemCount: movieFetched.moviesCard.length,

      itemBuilder: (context, index) {
        final movie = movieFetched.moviesCard[index];
        return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 300,
                  width: 180,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 8, 8, 8),
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Column(
                    children: [
                      Image.network(
                        "https://image.tmdb.org/t/p/w300${movie.posterPath}",
                        height: 170,
                        fit: BoxFit.fitWidth,
                        width: width * 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              '(${movie.releaseDate.year})',
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.amber,
                                  size: size,
                                )
                              ],
                            ),
                            Text(
                              "${movie.overview.substring(0, 30)}.......",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 300,
                  width: 180,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 8, 8, 8),
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: Column(
                    children: [
                      Image.network(
                        "https://image.tmdb.org/t/p/w300${movie.posterPath}",
                        height: 170,
                        fit: BoxFit.fitWidth,
                        width: width * 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              '(${movie.releaseDate.year})',
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: size,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.amber,
                                  size: size,
                                )
                              ],
                            ),
                            Text(
                              "${movie.overview.substring(0, 30)}.......",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
        // return Container(
        //   height: 250,
        //   width: 150,
        //   decoration: BoxDecoration(
        //     border: Border.all(color: Colors.green),
        //     color: Colors.black,
        //     borderRadius: BorderRadius.circular(30.0),
        //   ),
        //   child: Column(
        //     //mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Image.network(
        //         'https://image.tmdb.org/t/p/w300${movie.posterPath}',
        //         height: 60,
        //         width: 60,
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(20),
        //         child: Text(
        //           movie.title,
        //           style: const TextStyle(color: Colors.white),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        //         child: Text(
        //           '(${movie.releaseDate.year})',
        //           style: const TextStyle(color: Colors.white),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        //         child: Text(
        //           movie.backdropPath,
        //           style: const TextStyle(color: Colors.white),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }
}
