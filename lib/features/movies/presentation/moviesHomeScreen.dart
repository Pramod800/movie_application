import 'package:flutter/services.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_state.dart';
import 'package:movie_application/features/movies/presentation/widgets/movie_card.dart';
import 'package:movie_application/features/movies/presentation/widgets/singleMovieCard.dart';
import 'package:movie_application/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_cubit.dart';

class MovieHomeScreen extends StatefulWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  State<MovieHomeScreen> createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen> {
  @override
  void initState() {
    super.initState();

    getIt<MovieCubit>().getUpcomingMovies(
        apiUrl:
            'http://api.themoviedb.org/3/movie/upcoming?api_key=caebc202bd0a26f84f4e0d986beb15cd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(105),
        child: AppBar(
          elevation: 100,
          backgroundColor: const Color.fromARGB(255, 15, 15, 15),
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Watch Now', style: TextStyle(fontSize: 30)),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MovieCard()),
                      );
                    },
                    icon: const Icon(Icons.search, size: 30.0))
                // IconButton(
                //   Icons.search,
                //   size: 30.0,
                // ),
              ],
            ),
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.dark,
            // statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black87,
          ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<MovieCubit, MovieState>(
                    bloc: getIt<MovieCubit>(),
                    builder: (context, state) {
                      if (state is MovieFetched) {
                        return MovieListWidget(
                          movieFetched: state,
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
